defmodule Satsuma.List do
  use Phoenix.Component
  import Satsuma.Util

  slot :list_item, doc: "List item" do
    attr(:link, :string, doc: "The URI that this list item should go to when clicked")
  end

  attr(:height, :string)
  attr(:separator, :boolean, default: false)

  def list(assigns) do
    style =
      styles(%{
        "max-height: #{assigns.height}" => @header != []
      })

    classes =
      class_names(%{
        "satsuma_list--separator": @separator
      })

    assigns = assign(assigns, style: style, classes: classes)

    ~H"""
    <ul class="satsuma_list" style={@style} class={@classes}>
      <%= for item <- @list_item do %>
        <li class="satsuma_list__item">
          <a href={item.link} class="satsuma_list__target">
            <div class="satsuma_list__item-title"><%= render_slot(item) %></div>
          </a>
        </li>
      <% end %>
    </ul>
    """
  end
end
