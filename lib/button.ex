defmodule Satsuma.Button do
  use Phoenix.Component
  import Satsuma.Util

  attr(:full_width, :boolean, default: false)
  slot(:inner_block, required: true)

  def button(assigns) do
    classes =
      class_names(%{
        satsuma_button: true,
        "satsuma_button--full-width": assigns.full_width
      })

    assigns = assign(assigns, :classes, classes)

    ~H"""
      <button class={@classes}><%= render_slot(@inner_block) %></button>
    """
  end
end
