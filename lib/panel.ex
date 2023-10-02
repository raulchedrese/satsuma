defmodule Satsuma.Panel do
  use Phoenix.Component
  import Satsuma.Util

  slot(:inner_block)
  slot(:header)
  slot(:content)

  def(panel(assigns)) do
    ~H"""
      <div class="satsuma_panel">
        <div :if={@header != []} class="satsuma_panel__heading">
            <%= render_slot(@header) %>
        </div>
        <div :if={@content != []} class="satsuma_panel__content">
            <%= render_slot(@content) %>
        </div>
        <%= render_slot(@inner_block) %>
      </div>
    """
  end
end
