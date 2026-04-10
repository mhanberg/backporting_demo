defmodule BackportingDemo do
  @moduledoc """
  Documentation for `BackportingDemo`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> BackportingDemo.hello()
      :world!

  """
  def hello do
    :world!
  end

  def goodbye! do
    System.halt(0)
  end
end
