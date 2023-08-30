# 1480. Running Sum of 1d Array

[Running Sum of 1d Array - LeetCode](https://leetcode.com/problems/running-sum-of-1d-array/)

```java
class Solution {
    public int[] runningSum(int[] nums) {
        int [] sol = new int[nums.length];

        for (int i = nums.length-1 ; i >= 0 ; i--) {
            for (int j = i; j >= 0 ; j--) {
                sol[i] +=nums[j];
            }
        }

        return sol;
    }
}
```