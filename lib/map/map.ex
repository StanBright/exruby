defmodule Exruby.Map do
  @moduledoc """
  If a function already exists in the official Map module we should delegate to it
  i.e. no Elixir.Map function should be overwritten
  """
  # WIP
  # use Exruby, extends: Map

  Map.__info__(:functions)
  |> Enum.each(fn {fun, arity} ->
    defdelegate unquote(fun)(unquote_splicing(Exruby.defdelegate_args(arity))), to: Map
  end)
end
