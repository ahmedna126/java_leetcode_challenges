# 287. Find the Duplicate Number

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/find-the-duplicate-number/)

### code by HashSet

```java
class Solution {
    public int findDuplicate(int[] nums) {
        HashSet <Integer> set = new HashSet<>();
        for (int n : nums)
        {
            if (set.contains(n)){
                return n;
            }
            set.add(n);
        }
        return -1;
    }
}
```