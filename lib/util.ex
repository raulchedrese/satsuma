defmodule Satsuma.Util do
  def styles(styles) do
    Enum.map(styles, fn {k, v} ->
      if v do
        k
      else
        nil
      end
    end)
    |> Enum.filter(fn style -> style != nil end)
  end

  def class_names(classes) do
    styles(classes)
    |> Enum.join(" ")
  end
end
