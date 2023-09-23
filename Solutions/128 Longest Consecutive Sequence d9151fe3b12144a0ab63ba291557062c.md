# 128. Longest Consecutive Sequence

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/longest-consecutive-sequence/)

```java
class Solution {
    public int longestConsecutive(int[] nums) {
        if (nums.length == 0) return 0;
        HashSet<Integer> set = new HashSet<>();
        for (int n : nums){
            set.add(n);
         }

        int count = 1;

        for (int num : nums) {
            if (!set.contains(num - 1)) {
                int tempCount = 1;
                while (set.contains(num + 1)) {
                    tempCount++;
                    num++;
                }
                count = Math.max(count, tempCount);
            }

            if (count > nums.length / 2) break;
        }

        return count;
    }

}
```