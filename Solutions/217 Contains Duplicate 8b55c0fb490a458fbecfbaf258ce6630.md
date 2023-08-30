# 217. Contains Duplicate

[Contains Duplicate - LeetCode](https://leetcode.com/problems/contains-duplicate/description/)

```java
package problem_solving;

import java.util.Arrays;

public class problem_solving {
    public static boolean containsDuplicate(int[] nums) {
        Arrays.sort(nums);

        for (int i = 0; i < nums.length - 1; i++) {
            if (nums[i] == nums[i+1]){
                return true;
            }
        }

        return false;
    }

    public static void main(String[] args) {
        System.out.println(containsDuplicate(new int[] {3,3}));

    }

}
```