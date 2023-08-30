# 349. Intersection of Two Arrays

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/intersection-of-two-arrays/)

```java
class Solution {
       public static int[] intersection(int[] nums1, int[] nums2)
    {
        HashSet<Integer> set1 = new HashSet<>();
        HashSet<Integer> set2 = new HashSet<>();

        for (int n : nums1) {
            set1.add(n);
        }

        for (int n : nums2) {
            if (set1.contains(n))
                set2.add(n);
        }

        int [] result = new int[set2.size()];
            int index = 0;
        for (int n : set2){
            result[index++] = n;
        }
        
        return result;
    }

}
```