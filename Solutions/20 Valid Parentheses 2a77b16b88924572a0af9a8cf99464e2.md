# 20. Valid Parentheses

[Valid Parentheses - LeetCode](https://leetcode.com/problems/valid-parentheses/)

```java
class Solution {
    public boolean isValid(String s) {
       String [] s1 = s.split("");
       List<String> list = new ArrayList<>(Arrays.asList(s1));

        for (int i = 0; i < list.size() - 1; i++)
        {
            if ( list.get(i) == "(" || list.get(i) == "[" || list.get(i) == "{" )
            {
                list.remove(list.size() - 1);
            }
        }

        return list.isEmpty();
    }
}
```