# 238. Product of Array Except Self

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/product-of-array-except-self/)

```java
class Solution {
    public int[] productExceptSelf(int[] nums) {
        int [] res = new int[nums.length];
        int multiply = 1 , countzero = 0;

        for (int n : nums)
        {
            if (n == 0){
                countzero++;
            }else {
                multiply *= n;
            }
        }
        
        if (countzero == 0){
            for (int i = 0; i < nums.length; i++)
                res[i] = multiply / nums[i];
        }else if (countzero == 1) {
            for (int i = 0; i < nums.length ; i++)
                if (nums[i] == 0)
                    res[i] = multiply;
        }

        return res;
    }
}
```
