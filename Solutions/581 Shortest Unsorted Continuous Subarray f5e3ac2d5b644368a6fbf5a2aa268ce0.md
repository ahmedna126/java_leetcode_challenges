# 581. Shortest Unsorted Continuous Subarray

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/shortest-unsorted-continuous-subarray/)

### code1

```java
class Solution {
    public int findUnsortedSubarray(int[] nums) {
        int [] nums1 = Arrays.copyOf(nums , nums.length);
        Arrays.sort(nums1);
        int start = -1 , end = 0;

        for (int i = 0; i < nums.length; i++)
        {
            if (nums[i] != nums1[i] )
            {
                start = i;
                break;
            }
        }

        if (start == -1 ) return 0;

        for (int i = nums.length -1; i >= 0; i--) {
            if (nums[i] != nums1[i] )
            {
                end = i;
                break;
            }
        }
        return end - start + 1 ;
    }
}
```

### code2

```java
class Solution {
    public int findUnsortedSubarray(int[] nums) {
        int n = nums.length;
    int start = -1, end = -2;
    int min = nums[n - 1], max = nums[0];

    for (int i = 1; i < n; i++) {
        max = Math.max(max, nums[i]);
        min = Math.min(min, nums[n - 1 - i]);

        if (nums[i] < max) {
            end = i;
        }
        if (nums[n - 1 - i] > min) {
            start = n - 1 - i;
        }
    }

    return end - start + 1;
    }
}
```