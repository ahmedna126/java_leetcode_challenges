# 119. Pascal's Triangle II

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/pascals-triangle-ii/)

```java
class Solution {
    public List<Integer> getRow(int rowIndex) {
         List<List<Integer>> list = new ArrayList<>();
        list.add(Arrays.asList(1));

        for (int i = 1; i < rowIndex + 1; i++) {
            List<Integer> list1 = new LinkedList<>();
            list1.add(1);
            List<Integer> list2 = list.get(i-1);

            for (int k = 0; k < list2.size() - 1 ; k++)
            {
                list1.add(list2.get(k) + list2.get(k+1));
            }
            list1.add(1);

            list.add(list1);
        }

        return list.get(rowIndex);
    }
}
```