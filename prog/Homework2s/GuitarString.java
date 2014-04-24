import java.util.*;

// Models a vibrating guitar string of a given frequency
public class GuitarString {
	
	private double n;
	private Queue<Double> ringBuffer;
	
	public static void main(String[] args) {
		GuitarString g = new GuitarString(100.0);
	}
	
	public GuitarString(double frequency) {
		if (frequency > 0.0) {
			n = StdAudio.SAMPLE_RATE/frequency;
			ringBuffer = new LinkedList<Double>();
		}
		if (frequency > 1) {
			
		} else {
			throw new IllegalArgumentException("NOPE!");
		}
	}
	
	public GuitarString(double[] init) {
		if(init.length < 2) {
            throw new IllegalArgumentException();
		} else {
            ringBuffer = new LinkedList<Double>();
            for (int i = 0; i < init.length; i++) {
            	ringBuffer.add(init[i]);
            }
		}
	}
	
	void pluck() {
		Random r = new Random();
        n = (r.nextInt(10) / 10.0) - 0.5;
	}
	
	void tic() {
		
	}
	
	// returns the current sample (the value at the front of the ring buffer)
	public double sample() {
		return ringBuffer.peek();
	}
	
}
