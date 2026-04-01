#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <windows.h>
#include <conio.h>

#define MAX_REMEDIOS 20
#define MAX_NOME 50

typedef struct {
    char nome[MAX_NOME];
    int hora;
    int minuto;
    int tomou;
} Remedio;

typedef struct {
    int ativo;
    int intervaloMin;
    int contador;
    int totalAlertas;
} LembreteTempo;

void pegarHoraAtual(int *hora, int *min, int *seg) {
    time_t agora = time(NULL);
    struct tm *t = localtime(&agora);
    *hora = t->tm_hour;
    *min = t->tm_min;
    *seg = t->tm_sec;
}

void cadastrarRemedios(Remedio remedios[], int *total) {
    *total = 0;
    printf("=== LEMBRETE DE REMEDIOS ===\n\n");
    printf("Quantos remedios voce toma por dia? ");
    scanf("%d", total);
    if (*total > MAX_REMEDIOS) *total = MAX_REMEDIOS;

    for (int i = 0; i < *total; i++) {
        printf("\n--- Remedio %d ---\n", i + 1);
        printf("Nome do remedio: ");
        getchar();
        fgets(remedios[i].nome, MAX_NOME, stdin);
        remedios[i].nome[strcspn(remedios[i].nome, "\n")] = 0;
        printf("Hora para tomar (0-23): ");
        scanf("%d", &remedios[i].hora);
        printf("Minuto (0-59): ");
        scanf("%d", &remedios[i].minuto);
        remedios[i].tomou = 0;
    }
}

void mostrarResumo(Remedio remedios[], int total) {
    printf("\n=== RESUMO DOS REMEDIOS ===\n");
    printf("%-30s %-10s %-12s\n", "Remedio", "Horario", "Status");
    printf("----------------------------------------------\n");
    for (int i = 0; i < total; i++)
        printf("%-30s %02d:%02d        %s\n", remedios[i].nome, remedios[i].hora, remedios[i].minuto, remedios[i].tomou ? "Tomado" : "Pendente");
}

void configurarLembrete(LembreteTempo *l, const char *nome) {
    printf("\n=== LEMBRETE: %s ===\n", nome);
    printf("Ativar lembrete? (1-Sim / 0-Nao): ");
    scanf("%d", &l->ativo);
    if (l->ativo) {
        printf("De quantos em quantos minutos lembrar? ");
        scanf("%d", &l->intervaloMin);
        l->contador = l->intervaloMin * 60;
    }
    l->totalAlertas = 0;
}

int verificarAlertas(Remedio remedios[], int totalRem, LembreteTempo *andar, LembreteTempo *agua) {
    int h, m, s;
    pegarHoraAtual(&h, &m, &s);
    int teveAlerta = 0;

    for (int i = 0; i < totalRem; i++) {
        if (!remedios[i].tomou && remedios[i].hora == h && remedios[i].minuto == m) {
            printf("\a*** HORA DO REMEDIO: %s! ***\n", remedios[i].nome);
            remedios[i].tomou = 1;
            teveAlerta = 1;
        }
    }

    if (andar->ativo) {
        andar->contador -= 20;
        if (andar->contador <= 0) {
            printf("\a*** HORA DE CAMINHAR! *** (intervalo de %d min)\n", andar->intervaloMin);
            andar->totalAlertas++;
            andar->contador = andar->intervaloMin * 60;
            teveAlerta = 1;
        }
    }

    if (agua->ativo) {
        agua->contador -= 20;
        if (agua->contador <= 0) {
            printf("\a*** BEBA AGUA! *** (intervalo de %d min)\n", agua->intervaloMin);
            agua->totalAlertas++;
            agua->contador = agua->intervaloMin * 60;
            teveAlerta = 1;
        }
    }

    return teveAlerta;
}

void resumoFinal(Remedio remedios[], int total, LembreteTempo *andar, LembreteTempo *agua) {
    printf("\n\n========== RESUMO FINAL ==========\n");
    printf("\nRemedios:\n");
    for (int i = 0; i < total; i++)
        printf("  %-20s %02d:%02d - %s\n", remedios[i].nome, remedios[i].hora, remedios[i].minuto, remedios[i].tomou ? "Tomado" : "Nao tomado");

    if (andar->ativo)
        printf("\nCaminhadas lembretes: %d\n", andar->totalAlertas);
    if (agua->ativo)
        printf("Agua lembretes: %d\n", agua->totalAlertas);

    printf("\n===================================\n");
}

int kbhit_console() {
    return _kbhit();
}

int main() {
    Remedio remedios[MAX_REMEDIOS];
    int totalRem = 0;
    LembreteTempo andar = {0, 0, 0, 0};
    LembreteTempo agua = {0, 0, 0, 0};

    cadastrarRemedios(remedios, &totalRem);
    mostrarResumo(remedios, totalRem);
    configurarLembrete(&andar, "CAMINHADA");
    configurarLembrete(&agua, "AGUA");

    printf("\nMonitoramento iniciado! Pressione 'Q' para parar.\n");

    while (1) {
        verificarAlertas(remedios, totalRem, &andar, &agua);

        if (kbhit_console()) {
            char c = getchar();
            if (c == 'q' || c == 'Q') break;
        }

        Sleep(20000);
    }

    resumoFinal(remedios, totalRem, &andar, &agua);
    printf("\nPrograma encerrado!\n");
    return 0;
}
