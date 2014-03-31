
public class LeapYear {

	public static void main(String[] args) {
		int y1 = 2014;
		int cnt = 0;
		
		for (int born = 1980; born <= y1; born++) {
			if ((born % 4) == 0) {
				cnt += 1;
			} 
		}
		System.out.print(cnt);
	}
}
