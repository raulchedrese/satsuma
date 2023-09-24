defmodule Satsuma.List do
  use Phoenix.Component

  slot :list_item, doc: "List item" do
    attr(:link, :string, doc: "The URI that this list item should go to when clicked")
  end

  def list(assigns) do
    ~H"""
    <ul class="list">
      <%= for item <- @list_item do %>
        <li>
          <a class="list__item" href={item.link}>
            <div class="list__item-title"><%= render_slot(item) %></div>
          </a>
        </li>
      <% end %>
    </ul>
    """
  end
end
