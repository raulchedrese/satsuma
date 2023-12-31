defmodule Storybook.Root do
  # See https://hexdocs.pm/phoenix_storybook/PhoenixStorybook.Index.html for full index
  # documentation.

  use PhoenixStorybook.Index

  def folder_icon, do: {:fa, "book-open", :light, "lsb-mr-1"}
  def folder_name, do: "Storybook"

  def entry("welcome") do
    [
      name: "Welcome Page",
      icon: {:fa, "hand-wave", :thin}
    ]
  end

  def entry("button") do
    [name: "Button", icon: {:fa, "hand-pointer", :thin}]
  end

  def entry("list") do
    [name: "List", icon: {:fa, "hand-wave", :thin}]
  end

  def entry("panel") do
    [name: "Panel", icon: {:fa, "hand-wave", :thin}]
  end
end
