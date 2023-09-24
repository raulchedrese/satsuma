defmodule Satsuma.Stats do
  use Phoenix.Component

  slot(:label, required: true)
  slot(:number, required: true)
  slot(:help_text)

  def stat(assigns) do
    ~H"""
    <div class="insight">
      <div class="insight__title"><%= render_slot(@label) %></div>
      <div class="insight__values">
        <div class="insight__main-value">
          <%= render_slot(@number) %>
        </div>
        <div class="insight__compare-value">
          <%= render_slot(@help_text) %>
        </div>
      </div>
    </div>
    """
  end

  slot(:inner_block, required: true)

  def label(assigns) do
    ~H"""
    <div class="insight__title"><%= render_slot(@inner_block) %></div>
    """
  end
end
