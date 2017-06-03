defmodule Exruby do
  @moduledoc """
  Exruby ports Ruby and ActiveSupport (Rails) methods to Elixir
  """

  @doc """
  Prints out all supported/ported methods/function from Ruby to Elixir
  """
  def hello do
    IO.puts """
    Supported Modules and methods/functions:
    ---
    Map
    """
  end

  # WIP
  # The options should be include an ":extends" key
  # e.g. use Exruby, extends: Map
  # defmacro __using__(opts) do
  #   module_to_extend = Keyword.get(opts, :extends)

  #   apply(module_to_extend, :__info__, [:functions])
  #   |> Enum.each(fn {fun, arity} ->
  #     quote do
  #       defdelegate unquote(fun)(unquote_splicing(defdelegate_args(arity))),
  #               to: unquote(module_to_extend)
  #     end
  #   end)
  # end

  def defdelegate_args(0), do: []
  def defdelegate_args(max) do
    Enum.map(1..max, fn(n) -> {String.to_atom("arg#{n}"), [], Elixir} end)
  end
end
