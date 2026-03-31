programa {
	funcao inicio() {
		inteiro codSalgado, quantSalgado, codBebida, quantBebida
		real precoSalgado = 0.0, precoBebida = 0.0, valorTotal = 0.0
		
		escreva("--- Lanchonete XYZ ---\n")

		escreva("Cod 101: Coxinha (4.50) | 102: Joelho (5.50) | 103: Pizza (6.00)\n")
		escreva("Digite o código: ")
		leia(codSalgado)
		escreva("Quantidade: ")
		leia(quantSalgado)

		escolha(codSalgado) {
			caso 101: precoSalgado = 4.50 pare
			caso 102: precoSalgado = 5.50 pare
			caso 103: precoSalgado = 6.00 pare
			caso contrario: escreva("Código inválido!\n")
		}

		escreva("\nCod 201: Água (3.00) | 202: Refrigerante (4.50) | 203: Suco (5.50)\n")
		escreva("Digite o código: ")
		leia(codBebida)
		escreva("Quantidade: ")
		leia(quantBebida)

		escolha(codBebida) {
			caso 201: precoBebida = 3.00 pare
			caso 202: precoBebida = 4.50 pare
			caso 203: precoBebida = 5.50 pare
			caso contrario: escreva("Código inválido!\n")
		}

		valorTotal = (precoSalgado * quantSalgado) + (precoBebida * quantBebida)

		se (valorTotal > 100.00) {
			escreva("\n10% de desconto.")
			valorTotal = valorTotal * 0.90
		}
		escreva("\nVALOR TOTAL DO PEDIDO: R$ ", valorTotal)
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 930; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */