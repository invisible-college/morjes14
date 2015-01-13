import java.util.Arrays;
import java.util.ArrayList;
public class selection {

	public static void main(String[] args) {
		// Write a program to solve the selection problem. 
		// Let k = N/2. Draw a table showing the running time of your program for various 
		// values of N.
		
		int N[] = {5,7,3,4,8,10};
		int[] S = null;
		
		int i = 0;
		int prev = 0;
		while (i < N.length) {
			
			if (N[i] < prev) {
				S[prev] = N[i];
			} else {
				N[i] = S[i]; 
			}
			prev = N[i];
			i++;
			System.out.println(prev);

		}
		
		for (int j = 0; j < N.length; j++) {
		System.out.print(S[j] + ",");
		}
	}

}
