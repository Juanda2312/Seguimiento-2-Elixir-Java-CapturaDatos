defmodule EcoDeMensaje do
    @moduledoc """
  Este módulo transforma un texto ingresado por el usuario a mayúsculas
  y lo muestra en pantalla como un eco.

  - autor: Juan David Tapiero
  - fecha: 24/08/2025
  - licencia: GNU GPL V3
  """

    @doc """
  Solicita un texto al usuario, lo convierte a mayúsculas y lo muestra en pantalla.
  """
  def main do
    "Ingrese el texto deseado: "
    |> Util.ingresar(:texto)
    |> String.trim()
    |> String.upcase()
    |> Util.mostrar_mensaje()
  end
end

EcoDeMensaje.main()
