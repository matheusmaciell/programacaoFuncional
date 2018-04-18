{-
- Usando os predicados not,and e or prontos de Haskell, implemente os predicados (funcoes) xor (or exclusivo),
- impl (implicacao A => B é equivalente a (not A or B)) e equiv (A <=> B é definido como A => B and B => A)
- Procure usar casamento de padroes e reutilizar as funcoes.
-}

xor::Bool -> Bool -> Bool 
xor True True = False
xor False False = False
xor _ _ = True 



impl a b = (not a) || b

equiv:: String -> String -> Bool
equiv a b
		| a == b = True
		|otherwise = False

{-
A funcao square esta implementada e eleva ao quadrado um determinado numero
-}
square x = x*x

{-
- Implemente a funcao potencia, que retorna o resultado de x elevado a y 
-}
pow x y = x**y


{-
- Implemente a funcao fatorial que calcula o fatorial de um numero 
-}
fatorial :: Int -> Int
fatorial 1 = 1
fatorial x = x * fatorial (x-1)

{-
- Determina se um numero eh primo ou nao. Preocupe-se apenas em resolver o problema.
- Nao precisa usar conhecimentos mais sofisticados da teoria dos numeros. Voce pode trabalhar com listas.
-}

isPrime:: Int -> Int-> Bool
isPrime x 1 = True
isPrime x y = do  
			let teste = x `mod` y
			if(teste == 0) then 
				False
			else isPrime x (y-1)	

{-
- Calcula um termo da sequencia de Fibonnacci. Voce pode trabalhar com listas. 
-}

fib :: Int -> Int
fib 1 = 1
fib 2 = 1
fib x = fib(x-1) + fib(x-2) 

{-
- Calcula um MDC de dois numeros usando o algoritmo de Euclides. 
-}
mdc x y = undefined

{-
- Calcula um MMC de dois numeros. 
-}
mmc:: Int -> Int -> Int
mmc 0 0 = 1
mmc x y = do
		let divisao = x `mod` y
		if(divisao == 0) then
			y
		else mmc y divisao	


{-
- Determina se dois numeros inteiros positivos sao co-primos. Dois numeros sao co-primos se 
- o mdc deles for igual a 1. Ex: coprimo 35 64 = True 
-}
coprimo x y = undefined

{-
- Calcula a conjectura de Goldbach, que diz que um numero par maior que 2 pode ser escrito como a soma de dois numeros primos. Ex: 28 = 5 + 23.
-}
goldbach x = undefined


main:: IO()
main = do
	x <- getLine
	y <- getLine
	let resposta = mmc (read x) (read y)
	print resposta
	
