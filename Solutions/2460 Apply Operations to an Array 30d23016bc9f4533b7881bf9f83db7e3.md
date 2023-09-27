# 2460. Apply Operations to an Array

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/apply-operations-to-an-array/)

### Code1

```java
class Solution {
    public int[] applyOperations(int[] nums) {
      int length = nums.length;
        int [] arr = new int[length];

        for (int i = 0 , j = 0; i < length; i++)
        {
            if (i < length-1 && nums[i] != 0 &&nums[i] == nums[i+1])
            {
                arr[j++] = 2 * nums[i];
                nums[++i] = 0;
            }else if (nums[i] != 0){
                arr[j++] = nums[i];
            }
        }
        return arr;
     }
}
```

### Code2

```java
class Solution {
    public int[] applyOperations(int[] nums) {
        for (int i = 0; i < nums.length-1; i++)
        {
            if (nums[i] == nums[i+1])
            {
                nums[i] = 2 * nums[i];
                nums[i+1] = 0;
                i++;
            }
        }

       moveZeroes(nums);
       
        return nums;
    }

     public static void moveZeroes(int[] nums) 
     {
        int i = 0;
        for (int num : nums)
        {
            if (num != 0)
            {
                nums[i] = num;
                i++;
            }
        }

        while (i <= nums.length - 1)
        {
            nums[i] = 0;
            i++;
        }

     }
}
```
