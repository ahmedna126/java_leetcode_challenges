# 136. Single Number

[Single Number - LeetCode](https://leetcode.com/problems/single-number/description/)

```java
package com.mycompany.firstproject;

import java.util.Arrays;

public class test2
{

    public static int singleNumber(int[] nums) {
       Arrays.sort(nums);

        for (int i = 0; i < nums.length; i++) {
            if (i == nums.length-1 ) return nums[i];

                if (  nums[i] != nums[i+1]){
                    if (i == 0)
                    return nums[i];

                    if (nums[i-1] != nums[i])
                        return nums[i];

                }

        }

        return 0;
    }

        public static void main(String[] args)
        {
            System.out.println(singleNumber(new int[] {4,1,2,1,2}));
        }

}
```

# code 2

```java
package com.mycompany.firstproject;

import java.util.Arrays;

public class test2
{

    public static int singleNumber(int[] nums) {

            boolean cond = false;

        for (int i = 0; i < nums.length; i++) {
            test1:for (int j = 0; j < nums.length; j++)
            {
                if (i != j && nums[i] == nums[j]){
                    cond = false;
                    break test1;
                }
                cond = true;

            }

                if (cond){
                    return nums[i];
                }
        }

        return 0;
    }

        public static void main(String[] args)
        {
            System.out.println(singleNumber(new int[] {4,1,2,1,2}));
        }

}
```