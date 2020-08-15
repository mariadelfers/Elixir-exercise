defmodule Listas2 do
    def m([], acc, _f) do: acc
    def m([a|b], acc, f) do #f es una función anónima
        m(b, f(a,acc))
    end
    
    def suma(lista), do: suma(lista, 0)
    def suma ([], acc), do: acc
    def suma([a|b], acc), do: suma(b, a + acc)
    
    def longitud(lista), do: longitud(lista, 0)
    def longitud([], acc), do: acc
    def longitud([_|b]), do: longitud(b, 1 + acc)

    def multiplica([], _valor), do: []
    def multiplica([a|b], valor), do: [a * valor] ++ multiplica(b, valor)
end