defmodule Arboles do
  # def inserta(nil, n) do
  #   [nil, n, nil]
  # end
  
  # def inserta([i,v,d], n) do
  #   if n < v do
  #     [inserta(i, n), v, d]
  #   else
  #     [i, v, inserta(d,n)]
  # end
  def inserta(nil, n), do: [nil, n, nil]
  def inserta([i, v, d], n) when n < v, do: [inserta(i,n), v, d]
  def inserta([i, v, d], n), do: [i, v, inserta(d, n)]
  
  #Arboles.preorden arbol, fn v -> IO.puts(v) end
  def preorden(nil, _f) do
  end
  def preorden([i,v,d0],f) do
    preorden(i,f)
      f.(v)
    preorden(d)
      #IO.puts v
  end
end
