# 1464. Maximum Product of Two Elements in an Array

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/maximum-product-of-two-elements-in-an-array/)

```jsx
package org.example;
public class Main{

    public static int maxProduct(int[] nums)
    {
        int max1 = nums[0];
        int max2 = nums[1];

        for (int i = 2 ; i < nums.length ; i++) {
            if (nums[i] > max1){
                max2 = (max1 > max2) ? max1 : max2;
                max1 = nums[i];
            }else if (nums[i] > max2){
                max1 = (max2 > max1) ? max2 : max1;
                max2 = nums[i];
            }
        }
        return (max1 - 1 ) * (max2 - 1);
    }

    public static void main(String args[])
    {
        System.out.println(maxProduct(new int[] {1,5,4,5}));
    }  
}
```