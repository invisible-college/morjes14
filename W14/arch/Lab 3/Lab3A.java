public class Lab3A {
	
    public static void main(String[] args) {
        int a = 0b11110000;
        int b = 0b10101010;
        
        System.out.println(Integer.toBinaryString(a & b));
        System.out.print(a & b);
        
        System.out.println("\n");
        
        System.out.println(Integer.toBinaryString(a | b));
        System.out.print(a | b);
        
        System.out.println("\n");
        
        System.out.println(Integer.toBinaryString(a ^ b));
        System.out.print(a ^ b);
        
    }
}
