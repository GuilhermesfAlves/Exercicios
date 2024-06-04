public class ParametrosInvalidosException extends Exception{
    
    public ParametrosInvalidosException(int x, int y) {
        super(x + " deve ser menor que " + y);
    }
}
