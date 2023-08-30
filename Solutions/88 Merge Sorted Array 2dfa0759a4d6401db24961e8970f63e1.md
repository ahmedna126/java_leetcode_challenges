# 88. Merge Sorted Array

[Merge Sorted Array - LeetCode](https://leetcode.com/problems/merge-sorted-array/)

```java
package com.mycompany.firstproject;

import java.util.Arrays;

public class test2
{

    public static void merge(int[] nums1, int m, int [] nums2, int n)
    {

        for (int i = m ; i <  m + n  ; i++)
        {
                nums1[i] = nums2[i-m];
        }

        Arrays.sort(nums1);
        System.out.println(Arrays.toString(nums1));

    }

        public static void main(String[] args)
        {

            merge(new int[]{1,2,3,0,0,0} , 3 , new int[] {2,5,6} , 3);

        }

}
```