programa{
	funcao inicio(){
		inteiro h1, h2, m1, m2, maiorH, menorH, maiorM, menorM

		escreva("Digite a idade do homem 1: ")
		leia(h1)
		escreva("Digite a idade do homem 2: ")
		leia(h2)
		escreva("Digite a idade da mulher 1: ")
		leia(m1)
		escreva("Digite a idade da mulher 2: ")
		leia(m2)

		se (h1> h2){
			maiorH = h1
			menorH = h2
		}senao{
			maiorH =h2
			menorH = h1
		}

		se (m1> m2){
			maiorM = m1
			menorM = m2
		}senao{
			maiorM =m2
			menorM = m1
		}

		escreva("Soma da idade do homem mais velho, e da mulher mais nova: ", maiorH + menorM)
		escreva("Soma da idade do homem mais novo, e da mulher mais velha: ", menorH + maiorM)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 650; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */