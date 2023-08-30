# 58. Length of Last Word

[Length of Last Word - LeetCode](https://leetcode.com/problems/length-of-last-word/description/)

```java
class Solution {
    public int lengthOfLastWord(String s) {
         String [] str = s.trim().split(" ");

        return str[str.length-1].length() ;
    }
}
```