--[[

Esta fun��o recebe como par�metro o n�mero de um operador
e retorna uma string do operador l�gico correspondente
ao n�mero.

	N�mero	|	Operador L�gico
		1	|	  ==    (comparador de igualdade)
		2	|	  <=    (comparador de menor ou igual que)
		3	|	  <     (comparador de menor que)
		4	|	  >=    (comparador de maior ou igual que)
		5	|	  >     (comparador de maior que)
		6	|	 and    (operador l�gico 'e')
		7	|	  or    (operador l�gico 'ou')
		8	|	and not (operador l�gico 'e' combinado com 'n�o')
		9	|	 or not (operador l�gico 'ou' combinado com 'n�o')

]]--

function stringeando(operador)
	if operador == 1 then
		return "=="
	elseif operador == 2 then
		return "<="
	elseif operador == 3 then
		return "<"
	elseif operador == 4 then
		return ">="
	elseif operador == 5 then
		return ">"
	elseif operador == 6 then
		return "and"
	elseif operador == 7 then
		return "or"
	elseif operador == 8 then
		return "and not"
	elseif operador == 9 then
		return "or not"
	end
end
