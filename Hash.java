// Java hash table implementation
// O(1) Average complexity for search, insertion and delete

// Notes:
// supports collection size of 1k
// does not currently support chaining

public class Hash {

	//array to store hash values
	private String[] hashArray = new String[1000];

	//main method
	public static void main(String[] args) {

		//Create object
		Hash hash = new Hash();
		hash.hashingFunction("hello");
		hash.insert("hello");
		System.out.println(hash.findValue("hello"));
		
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

	// find a value in the hash table
	public String findValue(String s) {
		//perform hash on the string to determine location
		int location = hashingFunction(s);
		//get value at location
		String value = hashArray[location];

		if (value == null) {
			return "value not found";
		}
		else {
			//return value
			return value;
		}

	}

	//method to insert value into hash table
	public void insert(String s) {
		//get the hash value for the string
		int value = hashingFunction(s);
		//store the value in the hash table
		hashArray[value] = s;
	}

	//method to delete value from hash table
	public void delete(String s) {
		//get the hash value for the string
		int value = hashingFunction(s);
		//store the value in the hash table
		hashArray[value] = null;
	}

	

}