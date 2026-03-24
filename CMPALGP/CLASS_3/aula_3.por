programa
{
	inclua biblioteca Matematica --> mat
	inclua biblioteca Texto --> txt
	funcao inicio(){
		exer10()
		exer11()		
		}
	funcao exer6()
	{
		inteiro num1
		inteiro num2
		escreva ("De valor ao numero 1: ")
		leia(num1)
		escreva ("De valor ao numero 2: ")
		leia(num2)

		inteiro avg = (num1 + num2)/2
		escreva (avg)
	}

	funcao exer7(){


		inteiro qnt	
		real price

		escreva("Digite a quantidade do produto: ")
		leia(qnt)

		escreva("Digite o valor do produto: ")
		leia(price)
		price = mat.arredondar(price, 2)

		escreva("Se você comprar acima de 3 tera um disconto de 0.3 por unidade, total atual: ", (price * qnt))

		escreva("Digite a quantidade do produto: ")
		leia(qnt)

		price -= 0.3
		escreva("Você teve um disconto de 0.3 por unidade, total atual: ", (price * qnt))
		
	}

	funcao exer8(){
		inteiro data
		inteiro dia
		inteiro mes
		inteiro ano

		escreva("Digite a data no formato DDMMAA: ")
		leia(data)

		dia = data/100000
		mes = (data%10000)/100
		ano = data % 100
	}

	funcao exer10(){
		real salary
		real set
		inteiro qw
		real pricePerQw

		escreva("Digite o valor do salário mínimo: ")
		leia(salary)

		set = mat.arredondar((salary/7), 2)

		pricePerQw = set / 100

		escreva("Digite a qunatidade de quilowatts: ")
		leia(qw)

		escreva("Valor por quilowatts: ", pricePerQw, "\n")
		escreva("Valor por total por ", qw ," quilowatts: ", mat.arredondar((pricePerQw * qw), 2), "\n")
		escreva("Valor por total por ", qw ," quilowatts, com 10% de desconto: ", mat.arredondar((pricePerQw * qw), 2)-(mat.arredondar((pricePerQw * qw), 2)*0.1), "\n")
		

		
	
	}
	funcao exer11(){
		real final
		real fact
		real factWTax

		escreva("Digite o valor de fabrica: ")
		leia(fact)

		factWTax = fact + (fact * 0.45)

		final = factWTax + (factWTax * 0.28)

		escreva("Valor com taxas: ", final)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 708; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */