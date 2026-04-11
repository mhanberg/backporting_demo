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

  def goodbye!(code) do
    System.halt(code)
  end

  def hacking do
    :mainframe
  end
end
