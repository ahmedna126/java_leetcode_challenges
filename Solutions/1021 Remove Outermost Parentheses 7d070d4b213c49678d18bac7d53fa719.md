# 1021. Remove Outermost Parentheses

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/remove-outermost-parentheses/)

```java
class Solution {
    public String removeOuterParentheses(String s) {
        int count = 0;
        StringBuilder result = new StringBuilder();

        for (char c : s.toCharArray()) {
            if (c == '(') {
                if (count != 0) {
                    result.append(c);
                }
                count++;
            } else {
                if (count != 1) {
                    result.append(c);
                }
                count--;
            }
        }

        return result.toString();
    }
}
```