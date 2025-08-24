defmodule CalcularSalario do
  @moduledoc """
  Este módulo permite calcular el salario total de un empleado con base en las horas trabajadas
  y el salario por hora ingresados por el usuario.
  Si se exceden 160 horas, las horas extra se pagan al 125%.

  - autor: Juan David Tapiero
  - fecha: 24/08/2025
  - licencia: GNU GPL V3
  """


  @doc """
  Solicita al usuario su nombre, horas trabajadas y salario por hora.
  Calcula el salario total aplicando el recargo del 25% en caso de horas extra
  y muestra el resultado en pantalla.
  """
def main do
    nombre =
      "Ingrese su nombre:"
      |> Util.ingresar(:texto)
      |> String.trim()
    horas =
      "Ingrese las horas trabajadas:"
      |> Util.ingresar(:numero)

    if horas == nil do
      Util.mostrar_mensaje("Debes ingresar un número válido.")
      System.halt(1)  # detener programa con error
    end
    salario =
      "Ingrese el salario por hora:"
      |> Util.ingresar(:numero)

    if salario == nil do
      Util.mostrar_mensaje("Debes ingresar un número válido.")
      System.halt(1)  # detener programa con error
    end

    resultado =
      calcular_salario(horas, salario)
      |> Float.round(2)
      |> Float.to_string()
    Util.mostrar_mensaje("Hola #{nombre}, su salario total es de #{resultado}")
  end


  @doc """
  Calcula el salario total de un empleado.
  Si `horas` es mayor a 160, las horas adicionales se pagan al 125% del salario por hora.

  ## Parámetros
    - `horas`: número de horas trabajadas (float).
    - `salario`: salario por hora (float).

  ## Retorna
    - Salario total como número float.
  """
  defp calcular_salario(horas, salario) do
    if horas > 160 do
      ((horas - 160) * 1.25 * salario) + (160 * salario)
    else
      horas * salario
    end
  end
end

CalcularSalario.main()
