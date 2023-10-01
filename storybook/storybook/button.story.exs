defmodule Storybook.Button do
  use PhoenixStorybook.Story, :component

  alias Satsuma.Button

  def function, do: &Button.button/1

  def variations do
    [
      %Variation{
        id: :default,
        description: "Button component",
        slots: [
          "Send"
        ]
      },
      %Variation{
        id: :full_width,
        description: "Full width Button component",
        attributes: %{
          full_width: true
        },
        slots: [
          "Send"
        ]
      }
    ]
  end
end
