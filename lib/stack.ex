defmodule Satsuma.Stack do
  use Phoenix.Component
  import Satsuma.Util

  slot(:inner_block, required: true)
  attr(:justify, :string, default: "flex-start")

  def h_stack(assigns) do
    style =
      styles(%{
        "justify-content: #{assigns.justify}" => true
      })

    assigns = assign(assigns, :style, style)

    ~H"""
    <div class="satsuma_h-stack" style={@style}>
      <%= render_slot(@inner_block) %>
    </div>
    """
  end
end
