programa
{
	funcao inicio(){
		inteiro num1, num2, num3
		escreva("Digite o valor do número 1: ")
		leia(num1)		
		escreva("Digite o valor do número 2: ")
		leia(num2)		
		escreva("Digite o valor do número 3: ")
		leia(num3)

		se (num1 == num2 e num2 == num3){
			escreva("Os números são iguais")
		}

		se (num1 < num2){
			se (num2 > num3){
				escreva("O número", num2 ,"é o maior:")	
			}senao se (num3>num1){
				escreva("O número", num3 ,"é o maior:")	
			}
		} senao se(num1 > num3){
			escreva("O número", num1 ,"é o maior:")	
		} senao{
			escreva("O número", num3 ,"é o maior:")	
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 491; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */