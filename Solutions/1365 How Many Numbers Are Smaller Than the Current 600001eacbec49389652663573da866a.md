# 1365. How Many Numbers Are Smaller Than the Current Number

[How Many Numbers Are Smaller Than the Current Number - LeetCode](https://leetcode.com/problems/how-many-numbers-are-smaller-than-the-current-number/description/)

```jsx
package org.example;

import java.util.*;
import java.util.stream.Collectors;

public class Main {

    public static int[] smallerNumbersThanCurrent(int[] nums)
    {
        int output[] = new int[nums.length];
        ArrayList<Integer> list = (ArrayList<Integer>) Arrays.stream(nums).boxed().collect(Collectors.toList());
        Collections.sort(list);

        for (int i = 0; i <= nums.length-1 ; i++)
        {
            int n = 0;
            int index = list.indexOf( nums[i] );

            for (int j = index-1; j >= 0 ; j-- )
            {
                if (nums[i] > list.get(j) )
                    n++;
            }
                output[i] = n;
        }

        return output;
    }

    public static void main(String[] args) {

        int n1[] = smallerNumbersThanCurrent(new int[]{8, 1, 2, 2, 3});
        String s1 = "";
        for (int n : n1)
            s1 += n + ",";

        System.out.print('[' + s1.substring(0, s1.length() - 1) + "]\n" );

    }
}
```

```jsx
class Solution {
public int[] smallerNumbersThanCurrent(int[] nums) {
    int[] output = new int[nums.length];
    int[] count = new int[101]; // since the numbers are between 0 and 100
    for (int num : nums) {
        count[num]++;
    }
    for (int i = 1; i <= 100; i++) {
        count[i] += count[i-1];
    }
    for (int i = 0; i < nums.length; i++) {
        output[i] = nums[i] == 0 ? 0 : count[nums[i]-1];
    }
    return output;
}
}
```