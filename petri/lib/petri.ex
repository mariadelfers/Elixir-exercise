defmodule Petri do
  def ejemplo do
    [
      ~w[p0 A], ~w[A p1], ~w[A p2], ~w[p1 B], ~w[p1 D], ~w[p2 D], ~w[p2 C],
      ~w[B p3], ~w[D p3], ~w[D p4], ~w[C p4], ~w[p3 E], ~w[p4 E], ~w[E p5],
    ]
  end
  def preset(l, t) do
    l |> Enum.filter(fn [_,e] -> e == t end)
      #|> IO.inspect
      |> Enum.map(fn[e, _] -> e end)
      |> MapSet.new
  end
  def postset(l, t) do
    l |> Enum.filter(fn [e,_] -> e == t end)
      #|> IO.inspect
      |> Enum.map(fn[_, e] -> e end)
      |> MapSet.new
  end
  def fire(l, m, t) do
    # (m \ *t) U t*
    MapSet.difference(m, preset(l, t)) 
    |> MapSet.union(postset(l, t))
  end
end
