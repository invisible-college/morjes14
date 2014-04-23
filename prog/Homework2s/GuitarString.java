import java.util.*;

// Models a vibrating guitar string of a given frequency
public class GuitarString {
	
	Queue<Double> RingBuffer;

	public static void main(String[] args) {
        int N = Integer.parseInt(args[0]);
        double[] samples = { .2, .4, .5, .3, -.2, .4, .3, .0, -.1, -.3 };  
        GuitarString testString = new GuitarString(samples);
        for (int i = 0; i < N; i++) 
        {
            double sample = testString.sample();
            System.out.printf("%6d %8.4f\n", sample);
            testString.tic();
        }
	}
	
	public GuitarString(double frequency) {
		if (frequency > 0.0) {
			double length = StdAudio.SAMPLE_RATE/frequency;
		}
		if (frequency > 1) {
			
		} else {
			throw new IllegalArgumentException("NOPE!");
		}
	}
	
	public GuitarString(double[] init) {
		
	}
	
	void pluck() {
		
	}
	
	void tic() {
		
	}
	
	// returns the current sample (the value at the front of the ring buffer)
	public double sample() {
		
	}
	
}
