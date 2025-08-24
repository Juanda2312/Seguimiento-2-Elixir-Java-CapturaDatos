defmodule LongitudPalabra do
    @moduledoc """
  Este módulo permite calcular la longitud de una palabra ingresada por el usuario
  y muestra el resultado en pantalla.

  - autor: Juan David Tapiero
  - fecha: 24/08/2025
  - licencia: GNU GPL V3
  """

    @doc """
  Solicita al usuario una palabra, calcula su longitud en caracteres
  y muestra el resultado en pantalla.
  """
  def main do
    "Ingrese una palabra: "
    |> Util.ingresar(:texto)
    |> String.trim()
    |> String.length()
    |> Integer.to_string()
    |> Util.mostrar_mensaje()
  end
end

LongitudPalabra.main()
