import javax.swing.JOptionPane;
public class IngresarNumero {
    public static void main(String[] args) {
        if (args.length > 0 && args[0].equals("input")) {
            String mensaje = args.length > 1 ? args[1] : "Ingrese un valor:";
            String input = JOptionPane.showInputDialog(null, mensaje);
            try {
                Float numero = Float.parseFloat(input);
                System.out.println(numero);
            } catch (NumberFormatException e) {
                System.out.println("Entrada no válida. Se esperaba un número.");
            }
        } else if (args.length > 0) {
            JOptionPane.showMessageDialog(null, args[0]);
        } else {
            JOptionPane.showMessageDialog(null, "No se proporcionó ningún mensaje");
        }
    }
}