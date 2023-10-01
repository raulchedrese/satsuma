defmodule Satsuma.Icons do
  use Phoenix.Component

  attr(:size, :string, default: "24")
  attr(:color, :string, default: "#000")

  def up(assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" width={@size} height={@size} viewBox="0 0 512 512">
        <path fill="none" stroke={@color} stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 244l144-144 144 144M256 120v292"/>
      </svg>
    """
  end

  attr(:size, :string, default: "24")
  attr(:color, :string, default: "#000")

  def down(assigns) do
    ~H"""
      <svg xmlns="http://www.w3.org/2000/svg" width={@size} height={@size} viewBox="0 0 512 512">
        <path fill="none" stroke={@color} stroke-linecap="round" stroke-linejoin="round" stroke-width="48" d="M112 268l144 144 144-144M256 392V100"/>
      </svg>
    """
  end
end
