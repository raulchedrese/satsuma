defmodule Storybook.Panel do
  use PhoenixStorybook.Story, :component
  alias Satsuma.Panel

  def function, do: &Panel.panel/1

  def variations do
    [
      %Variation{
        id: :default,
        description: "Panel component",
        slots: [
          """
          <:content>
            Panel content
          </:content>
          """
        ]
      },
      %Variation{
        id: :full_width,
        description: "Panel with heading",
        attributes: %{
          full_width: true
        },
        slots: [
          """
          <:header>
            <h3>Panel heading</h3>
            <Satsuma.Button.button>New</Satsuma.Button.button>
          </:header>
          """,
          """
          <:content>
            Panel content
          </:content>
          """
        ]
      },
    ]
  end
end
