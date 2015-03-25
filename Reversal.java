// String reversal in Java

public class Reversal {

	public static void main(String[] args) {

		// test functionality
		System.out.println(reverseString("test"));

	}

	public static String reverseString(String s) {
		// copy that will be manipulated
		String copy = "";
		// length of string received
		int length = s.length();

		// loop through string backwards
		// copy each character to the copy to generate reversed string
		for (int i = length -1; i >= 0; i--) {
			copy = copy + s.charAt(i);
		}
		// return result
		return copy;
	}

}