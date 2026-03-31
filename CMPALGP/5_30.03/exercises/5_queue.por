programa{
	funcao inicio(){
		inteiro num

		escreva("Digite seu número: ")
		leia(num)

		se (num > 100){
			escreva("Guiche 4 ou 5")
		}senao se(num >50){
			escreva("Guiche 3")
		} senao se(num > 25){
			escreva("Guiche 2")
		}senao se(num > 10){
			escreva("Guiche 1	")
		} senao{
			escreva("Fora de alcançe")
		}
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 324; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */