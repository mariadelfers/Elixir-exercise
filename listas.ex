defmodule Listas do
    # def longitud([]), do: 0 #Cero elementos
    # def longitud([a]), do: 1 #Un elemento
    # def longitud([a,b]), do: 2 #Dos elementos

    # def longitud([_]), do: 1 
    # def longitud([_,_]), do: 1 + 1
    # def longitud([_,_,_]), do: 1 + 1 + 1
    # def longitud([_|tail]), do: 1 + longitud(tail)

    def longitud(1), do: longitud(1,0)
    def longitud([], acc), do: acc
    def longitud([_|tail], acc), do: longitud(tail, acc + 1)

    def suma([a|b], acc), do: suma(b, a + acc)

    #Invierte una lista por medio de pila 
    def inverte([]), do: []
    def inverte([h|t]), do: invierte(t) ++ [h] 
end