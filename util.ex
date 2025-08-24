defmodule Util do
    @moduledoc """
    Módulo con funciones a reutilizar
    - autor: Juan David Tapiero
    - fecha: 19/08/2025
    - licencia: GNU GPL V3
    """

    @doc """
    mediante un archivo de java abre una ventana utilizando este y muestra el mensaje recibido
    """
    def mostrar_mensaje(mensaje)do
        System.cmd("java", ["MostrarMensaje.java", mensaje])
    end

    @doc """
    Llama a un programa Java para ingresar texto mediante una ventana y captura la entrada.
    Retorna el texto ingresado o nil en caso de error.
    """
    def ingresar(mensaje,:texto) do
        # Llama al programa Java para ingresar texto y capturar la entrada
        case System.cmd("java", ["-cp", ".", "IngresarTexto.java","input", mensaje]) do
            {output, 0} ->
            IO.puts("Texto ingresado correctamente.")
            IO.puts("Entrada: #{output}")
            String.trim(output) # Retorna la entrada sin espacios extra
            {error, code} ->
            IO.puts("Error al ingresar el texto. Código: #{code}")
            IO.puts("Detalles: #{error}")
            nil
        end
    end

    @doc """
    Llama a un programa Java para ingresar un numero mediante una ventana y captura la entrada.
    Retorna el numero ingresado o nil en caso de error.
    """
def ingresar(mensaje, :numero) do
  case System.cmd("java", ["-cp", ".", "IngresarNumero.java", "input", mensaje]) do
    {output, 0} ->
      valor = String.trim(output)

      case Float.parse(valor) do
        {num, _resto} ->
          IO.puts("Número ingresado correctamente.")
          IO.puts("Entrada: #{num}")
          num  

        :error ->
          IO.puts("Error: la entrada no es un número válido.")
          nil
      end

    {error, code} ->
      IO.puts("Error al ingresar el número. Código: #{code}")
      IO.puts("Detalles: #{error}")
      nil
  end
end
end
