programa
{

    funcao exercicio01(){
        real valorCompra, valorVenda

        escreva("Exercicio 01 - Valor de venda do produto\n")
        escreva("Digite o valor de compra: ")
        leia(valorCompra)
        se (valorCompra < 50){
            valorVenda = valorCompra * 1.40
        }senao{
            valorVenda = valorCompra * 1.25
        }
        escreva("Valor de venda: R$", valorVenda, "\n")
    }

    funcao exercicio02(){
        inteiro idade

        escreva("\nExercicio 02 - Classificacao por idade\n")
        escreva("Digite a idade: ")
        leia(idade)
        se (idade < 12){
            escreva("Crianca\n")
        }senao se (idade >= 12 e idade <= 17){
            escreva("Adolescente\n")
        }senao se (idade >= 18 e idade <= 59){
            escreva("Adulto\n")
        }senao{
            escreva("Idoso\n")
        }
    }

    funcao exercicio03(){
        cadeia nome
        inteiro quantidade
        real precoUnitario, total, desconto, totalPagar, porcentagem

        escreva("\nExercicio 03 - Desconto por quantidade\n")
        escreva("Digite o nome do produto: ")
        leia(nome)
        escreva("Digite a quantidade adquirida: ")
        leia(quantidade)
        escreva("Digite o preco unitario: ")
        leia(precoUnitario)
        total = quantidade * precoUnitario
        se (quantidade <= 5){
            porcentagem = 2
        }senao se (quantidade > 5 e quantidade <= 10){
            porcentagem = 3
        }senao{
            porcentagem = 5
        }
        desconto = total * (porcentagem / 100)
        totalPagar = total - desconto
        escreva("Produto: ", nome, "\n")
        escreva("Total: R$", total, "\n")
        escreva("Desconto: R$", desconto, " (", porcentagem, "%)\n")
        escreva("Total a pagar: R$", totalPagar, "\n")
    }

    funcao exercicio04(){
        inteiro codigo
        real salario, novoSalario

        escreva("\nExercicio 04 - Reajuste salarial\n")
        escreva("Digite o codigo do cargo: ")
        leia(codigo)
        escreva("Digite o salario atual: ")
        leia(salario)
        escolha(codigo) {
            caso 1:
                novoSalario = salario * 1.45
                escreva("Cargo: Secretario - Novo salario: R$", novoSalario, "\n")
                pare
            caso 2:
                novoSalario = salario * 1.35
                escreva("Cargo: Professor - Novo salario: R$", novoSalario, "\n")
                pare
            caso 3:
                novoSalario = salario * 1.25
                escreva("Cargo: Tesoureiro - Novo salario: R$", novoSalario, "\n")
                pare
            caso 4:
                novoSalario = salario * 1.15
                escreva("Cargo: Coordenador - Novo salario: R$", novoSalario, "\n")
                pare
            caso 5:
                escreva("Cargo: Diretor - Nao tem aumento. Salario: R$", salario, "\n")
                pare
            caso contrario:
                escreva("Codigo invalido!\n")
        }
    }

    funcao inicio(){
        exercicio01()
        exercicio02()
        exercicio03()
        exercicio04()
        escreva("\nExercicio 05: Teste de Mesa do Exercicio 04\n")
        escreva("| Codigo | Cargo       | Aumento | Salario 1000 -> Novo Salario |\n")
        escreva("| 1      | Secretario  | 45%     | 1450.00                      |\n")
        escreva("| 2      | Professor   | 35%     | 1350.00                      |\n")
        escreva("| 3      | Tesoureiro  | 25%     | 1250.00                      |\n")
        escreva("| 4      | Coordenador | 15%     | 1150.00                      |\n")
        escreva("| 5      | Diretor     | 0%      | 1000.00                      |\n")
    }
}
