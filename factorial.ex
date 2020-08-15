
defmodule Example do 
    def factorial(0), do: 1 #Entra en ese primer caso, si es 0, ya no hace lo demás
    def factorial(-1), do: 1
    def factorial(n) do
        if (n ==0) do
            1
        else
            n * factorial(n-1)
        end
    end
end

# PS C:\Users\Fernanda\Desktop\Lenguajes> iex.bat factorial.ex
# Interactive Elixir (1.10.0) - press Ctrl+C to exit (type h() ENTER for help)
# iex(1)> Example.factorial(5)
# 120