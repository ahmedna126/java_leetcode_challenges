# 34. Find First and Last Position of Element in Sorted Array

[Find First and Last Position of Element in Sorted Array - LeetCode](https://leetcode.com/problems/find-first-and-last-position-of-element-in-sorted-array/)

```java
package com.mycompany.firstproject;

import java.util.Arrays;
public class test1 {

    public static int[] searchRange(int[] nums, int target) {
        int left = 0 ;
        int right = nums.length -1;
        int output [] = new int[2];
            while (left <= right){
               if (nums[left] == target){
                   output[0] = left;
                    while (left < right){
                        if (nums[right] == target ){
                            output[1] = right;
                            return output;
                        }else {
                            right = right - 1;
                        }
                    }
                    output[1] = left;
                   return output;
               }else if (nums[left] < target){
                   left = left + 1;
               }else if (nums[right] > target) {
                   right = right - 1;
               }

            }

        return new int[] {-1 , -1};
    }

    public static void main(String [] args){

        int s [] = searchRange(new int[] {1 , 2 ,3} , 2);

        System.out.println(Arrays.toString(s));

    }

}
```