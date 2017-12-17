--[[

Essa fun��o tem como objetivo gerar um valor l�gico
entre o resultado de duas express�es que foram geradas
aleatoriamente. Tal valor l�gico tamb�m � gerado aleatoriamente,
sendo variado entre (==, <=, <, >= e >). Tal fun��o retorna
uma string formatada correspondente ao s�mbolo l�gico
e o valor l�gico propriamente dito da compara��o entre dois valores.

Exemplo:
Primeiramente, chama-se duas vezes a fun��o operacionando() para que se
gere dois pares de express�es aleat�rias:

2 + 7 = 9 e 1 - 8 = -7

Com tais resultados em m�os (9 e -7), chamamos a fun��o modelando passando
esses resultados como par�metro. Agora, a fun��o ir� gerar uma compara��o
l�gica, aleat�ria, entre esses dois resultados. Por exemplo, se o modelo gerado for
2, ele vai fazer a verifica��o:
	logical = (9 <= -7)
Como 9 <= -7 � falso, logo, logical passa a ser false. O usu�rio deve justamente saber se
o resultado da express�o � true ou false, simplesmente.
Depois disso ele retorna a string formatada "<=" para que ela, junto com os dois pares
de express�es, possam ser exibidas. No programa ent�o, para a contagem de pontos, simplesmente
� feita uma compara��o entre o que usu�rio digitou e o resultado l�gico da express�o que foi gerada.

]]--

require "functions/stringeando"
math.randomseed(os.time())

function modelando(leftResult, rightResult)

	buffer = math.random(1, 5); model = math.random(1, 5) -- escolhendo o n�mero do modelo aleatoriamente

	if model == 1 then -- modelo: ==
		expression = (leftResult == rightResult)
		stringExp = stringeando(model)
	elseif model == 2 then
		expression = (leftResult <= rightResult)
		stringExp = stringeando(model)
	elseif model == 3 then
		expression = (leftResult < rightResult)
		stringExp = stringeando(model)
	elseif model == 4 then
		expression = (leftResult >= rightResult)
		stringExp = stringeando(model)
	elseif model == 5 then
		expression = (leftResult > rightResult)
		stringExp = stringeando(model)
	end

	return expression, stringExp
end
