defmodule BackportingDemo do
  @moduledoc """
  Documentation for `BackportingDemo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BackportingDemo.hello()
      :planet!

  """
  def hello do
    :planet!
  end

  def goodbye!(code) do
    System.halt(code)
  end

  def hacking do
    :mainframe
  end
end
