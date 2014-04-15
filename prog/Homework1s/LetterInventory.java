
public class LetterInventory {      
  
	private int[] count = new int[26];   
    private String alphabet = "abcdefghijklmnopqrstuvwxyz";  
    private int size;  
      
    public static void main(String[] args) {      
    	LetterInventory inventory1 = new LetterInventory("George W. Bush");  
    	LetterInventory inventory2 = new LetterInventory("Hillary Clinton");
    	System.out.println(inventory1.toString());
    	System.out.println(inventory2.toString());
    	LetterInventory sum = inventory1.add(inventory2);
    }
    
    // Constructs an inventory (a count) of the alphabetic letters in the given string,
    //ignoring the case of letters and ignoring any non-alphabetic characters.
	public LetterInventory(String data) {  
        data = data.toLowerCase();  
        size = 0;   
        
        for (int j = 0; j < alphabet.length(); j++) {
        	for (int i = 0; i < data.length(); i++) {
	            if (alphabet.charAt(j) == data.charAt(i)) {
	            	count[j]++;
	            	size++;  
	            }  
	        }  
        }
    }  

	//Returns a count of how many of this letter are in the inventory.  
	//Letter might be lowercase or uppercase (your method shouldn’t care).  
	//If a nonalphabeticcharacter is passed, your method should throw an 
	//IllegalArgumentException.
    public int get(char letter) {
    	return count[letter - 'a'];
    }

	//Sets the count for the given letter to the given value.  Letter might be 
	//lowercase or uppercase.  If a nonalphabetic character is passed or if value is 
	//negative, your method should throw an IllegalArgumentException
    public void set(char letter, int value) {
        if (letter >= 'a' && letter <= 'z') {
        	if (value >= 0) {
        		count[letter - 'a'] = value;
        	} else {
        		throw new IllegalArgumentException("Not an alphabetical character");
        	}
        }
    }
    
	//Returns the sum of all of the counts in this inventory.  This operation should 
	//be “fast” in that it should store the size rather than having to compute it 
	//each time this method is called.
	public int size() {
		return size;
	}

	//Returns true if this inventory is empty (all counts are 0).  This operation 
	//should be fast in that it should not need to examine each of the 26 counts when 
	//it is called.
	public boolean isEmpty() {
		//if size equals 0, returns true
		return (size == 0);
	}

	//Returns a String representation of the inventory with the letters all in 
	//lowercase and in sorted order and surrounded by square brackets.  
	//The number of occurrences of each letter should match its count in the inventory.  
	//For example, an inventory of 4 a’s, 1 b, 1 l and 1 m would be represented 
	//as “[aaaablm]”.
	public String toString() {
		String result = "[";

    	for (int i = 0; i < count.length; i++) {
    		if (count[i] > 0) {
    			for (int j = 0; j < count[i]; j++) {
    			result += (char) ('a' + i);
    			}
    		}
    	}
    	result += ']';
    	return result;
	}

	//Constructs and returns a new LetterInventory object that represents the sum of 
	//this letter inventory and the other given LetterInventory. The counts for each 
	//letter should be added together. The two LetterInventory objects being added 
	//together (this and other) should not be changed by this method
	public LetterInventory add(LetterInventory other) {
	      LetterInventory added = new LetterInventory(this.toString() + other);
	      System.out.println(added);
	      return added;  

	}

	//Constructs and returns a new LetterInventory object that represents the result 
	//of subtracting the other inventory from this inventory (i.e., subtracting the 
	//counts in the other inventory from this object’s counts). If any resulting count
	//would be negative, your method should return null. The two LetterInventory 
	//objects being subtracted (this and other) should not be changed by this method
	public LetterInventory subtract(LetterInventory other) {
	      LetterInventory subtracted = new LetterInventory(this.toString() - other);
	      System.out.println(subtracted);
		return subtracted;
	}
}