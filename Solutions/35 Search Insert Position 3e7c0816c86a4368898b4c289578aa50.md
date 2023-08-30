# 35. Search Insert Position

[Search Insert Position - LeetCode](https://leetcode.com/problems/search-insert-position/description/)

```java
package com.mycompany.firstproject;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class test1 {

    public static int searchInsert(int[] nums, int target) {
        for (int i = 0; i < nums.length; i++) {
            if (nums[i] == target || nums[i] > target)
                return i;

            if (i == nums.length-1)
                return nums.length;

        }

        return 0;
    }
    public static void main(String [] args){

        System.out.println(searchInsert(new int[] {1,4,5,6} , 2));

    }

}
```