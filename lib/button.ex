defmodule Satsuma.Button do
  use Phoenix.Component

  slot(:inner_block, required: true)

  def button(assigns) do
    ~H"""
      <button class="satsuma_button"><%= render_slot(@inner_block) %></button>
    """
  end
end
