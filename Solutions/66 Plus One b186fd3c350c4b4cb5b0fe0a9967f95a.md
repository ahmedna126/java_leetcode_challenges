# 66. Plus One

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/plus-one/description/)

```jsx
class Solution {
    public int[] plusOne(int[] digits) {
         
        int i = 0;
        while (i <= digits.length - 1 && digits[digits.length - 1 - i] == 9) {
            i++;
        }

        int[] output = (digits.length == i) ? new int[digits.length + 1] : new int[digits.length];

        if (digits.length == i) {
            output[0] = 1;
        } else {

            for (int j = 0; j <= digits.length - i - 1; j++) 
            {
                output[j] = digits[j];
            }

            output[digits.length - 1 - i] = digits[digits.length - i - 1] + 1;
        }
        return output;
    }
}
```

```jsx
class Solution {
    public int[] plusOne(int[] digits) {
for (int i = digits.length - 1; i >= 0; i--) {
	if (digits[i] < 9) {
		digits[i]++;
		return digits;
	}
	digits[i] = 0;
}

digits = new int[digits.length + 1];
digits[0] = 1;
return digits;
}
}
```