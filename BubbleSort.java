//O(n^2) Average Complexity

import java.util.Arrays;

public class BubbleSort {
	public static void main(String[] args) {

		int[] values = {2,100,32,18,17,5};
		Sort b = new Sort();
		b.sort(values);
	}
}

class Sort {

	public void sort(int[] numbers) {

	 	boolean swapped = true;
	 	int x = 0;
	 	int temp;

	 	while (swapped) {
	 		//set swap condition to false.  only switches to true if swap actually occurs
	 		swapped = false;
				for (int i = 0; i< numbers.length - 1; i++) {
					//if value is greater than the next value, swap
					if (numbers[i] > numbers[i + 1]) {
						temp = numbers[i];
						numbers[i] = numbers[i+1];
						numbers[i+1] = temp;
						swapped = true;
					}		
				}
		}
		
		System.out.println("Sorted Order:");
		System.out.println(Arrays.toString(numbers));

	}
}

