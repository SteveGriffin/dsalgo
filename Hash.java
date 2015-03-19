// Java hash table implementation
// O(1) Average complexity for search, insertion and delete

public class Hash {


	//main method
	public static void main(String[] args) {

		//Create object
		Hash hash = new Hash();
		hash.hashingFunction("hello");
		
	}

	//method to return unique key
	public int hashingFunction(String key) {
		int value = 0;

		//Iterate through each character in the string
		for (char c : key.toCharArray())
		 {
		 	//get ascii value of character
		 	int ascii = (int)c;
		 	//add ascii value to the total value
		 	value += ascii;
		}

		//keep within 1k range
		value = value % 1000;

		//return the value
		return value;
	}

	//method to insert value into hash table
	public boolean insert(Object value) {
		boolean result = false;
		//TBD

		return result;
	}

	

}