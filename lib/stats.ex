defmodule Satsuma.Stats do
  use Phoenix.Component

  slot(:label, required: true)
  slot(:number, required: true)
  slot(:help_text)

  def stat(assigns) do
    ~H"""
    <div class="satsuma_insight">
      <div class="satsuma_insight__title"><%= render_slot(@label) %></div>
      <div class="satsuma_insight__values">
        <div class="satsuma_insight__main-value">
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
    <div class="satsuma_insight__title"><%= render_slot(@inner_block) %></div>
    """
  end
end
