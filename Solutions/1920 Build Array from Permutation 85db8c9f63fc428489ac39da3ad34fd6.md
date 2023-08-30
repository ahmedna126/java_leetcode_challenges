# 1920. Build Array from Permutation

[Build Array from Permutation - LeetCode](https://leetcode.com/problems/build-array-from-permutation/description/)

```jsx
package Exception;

import java.util.Arrays;

public class main {

   public static int[] buildArray(int[] nums) {
        int[] output = new int [nums.length];
        
            for (int i = 0; i <= nums.length - 1; i++) 
            {
                output[i] = nums[nums[i]];
            }

       return output; 
    }

    public static void main(String[] args) {
	      int arr [] = {0,2,1,5,3,4};
        System.out.println(Arrays.toString(buildArray(arr)));

    }

}
```