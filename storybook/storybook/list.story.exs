defmodule Storybook.List do
  use PhoenixStorybook.Story, :component

  def function, do: &Satsuma.List.list/1

  def variations do
    [
      %Variation{
        id: :default,
        slots: [
          """
          <:list_item link="hi">Item 1</:list_item>
          """,
          """
          <:list_item link="hi">Item 2</:list_item>
          """
        ]
      }
    ]
  end
end
