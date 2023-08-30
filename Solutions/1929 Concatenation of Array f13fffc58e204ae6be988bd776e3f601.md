# 1929. Concatenation of Array

[Concatenation of Array - LeetCode](https://leetcode.com/problems/concatenation-of-array/description/)

```jsx
package com.mycompany.problemsolving;

import java.util.Arrays;

public class ProblemSolving {
    
     public static int[] getConcatenation(int[] nums) {
         
         int output[] = new int[nums.length + nums.length];
         
         System.arraycopy(nums, 0, output, 0, nums.length);
         System.arraycopy(nums, 0, output, nums.length, nums.length);
         
        
         return output;
    }

    public static void main(String[] args) {
        
        System.out.println(Arrays.toString(getConcatenation(new int [] {1,3,2,1}) ));
        
        
        
        
    }
}
```