defmodule Satsuma.Stack do
  use Phoenix.Component

  slot(:inner_block, required: true)
  attr(:justify, :string, default: "flex-start")

  def h_stack(assigns) do
    style =
      styles(%{
        "justify-content: #{assigns.justify}" => true
      })

    assigns = assign(assigns, :style, style)

    ~H"""
    <div class="h-stack" style={@style}>
      <%= render_slot(@inner_block) %>
    </div>
    """
  end

  defp styles(styles) do
    Enum.map(styles, fn {k, v} ->
      if v do
        k
      else
        nil
      end
    end)
    |> Enum.filter(fn style -> style != nil end)
  end
end
