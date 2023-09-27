# 2215. Find the Difference of Two Arrays

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/find-the-difference-of-two-arrays/)

```java
class Solution {
    public List<List<Integer>> findDifference(int[] nums1, int[] nums2) {
        List<List<Integer>> list = new LinkedList<>();
        list.add(find(nums1 , nums2));
        list.add(find(nums2 , nums1));
        return list;
    }

    public static List<Integer> find(int[] nums1, int[] nums2)
    {
        HashSet<Integer> set = new HashSet<>();
        for (int n : nums2) set.add(n);

        HashSet<Integer> list = new HashSet<>();

        for (int n1 : nums1 )
        {
            if (!set.contains(n1))
            {
                list.add(n1);
            }
        }
        return list.stream().toList();
    }
}
```