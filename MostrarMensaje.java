import javax.swing.JOptionPane;

public class MostrarMensaje {
    public static void main(String[] args) {
        String mensaje =  args[0];
        JOptionPane.showMessageDialog(null, mensaje);
    }
}