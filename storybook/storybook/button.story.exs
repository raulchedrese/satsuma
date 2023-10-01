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
      }
    ]
  end
end
