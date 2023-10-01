defmodule Satsuma.List do
  use Phoenix.Component

  slot :list_item, doc: "List item" do
    attr(:link, :string, doc: "The URI that this list item should go to when clicked")
  end

  def list(assigns) do
    ~H"""
    <ul class="satsuma_list">
      <%= for item <- @list_item do %>
        <li>
          <a class="satsuma_list__item" href={item.link}>
            <div class="satsuma_list__item-title"><%= render_slot(item) %></div>
          </a>
        </li>
      <% end %>
    </ul>
    """
  end
end
