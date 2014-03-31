import java.util.ArrayList;


public class Timing {

	public static void main(String[] args) {
		System.out.print("Array of Strings, size 10,000");
		long start = System.nanoTime();
		
		StrArr();
		
		long end = System.nanoTime();
		long total = end - start;
		double seconds = ((double)total / 1000000000);
		System.out.println();
		System.out.println("Total time: :" + seconds + "\n");
		
		System.out.print("Array of Ints, size 10,000");
		long start2 = System.nanoTime();
		
		IntArr();
		
		long end2 = System.nanoTime();
		long total2 = end2 - start2;
		double seconds2 = ((double)total2 / 1000000000);
		System.out.println();
		System.out.println("Total time: :" + seconds2 + "\n");
		
		System.out.print("List Array of Integers, size 10,000");
		long start3 = System.nanoTime();
		
		ArrList();
		
		long end3 = System.nanoTime();
		long total3 = end3 - start3;
		double seconds3 = ((double)total3 / 1000000000);
		System.out.println();
		System.out.println("Total time: :" + seconds3 + "\n");
	}
	
	public static void StrArr() {
		String name = "Jessica";
		String[] StrArr = new String[10000];
		for ( int i = 0; i < StrArr.length; i++ ) {
			StrArr[i] = name;
		}
	}
	
	public static void IntArr() {
		int x = 3;
		int[] IntArr = new int[10000];
		for ( int i = 0; i < IntArr.length; i++ ) {
			IntArr[i] = x;
		}
	}
	
	public static void ArrList() {
		ArrayList<Integer> list = new ArrayList<Integer>(10000);
		int x = 3;
		for ( int i = 0; i < list.size(); i++ ) {
			list.add(x);
		}
	}
}
