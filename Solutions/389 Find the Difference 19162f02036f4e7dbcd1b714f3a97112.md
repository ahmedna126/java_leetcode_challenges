# 389. Find the Difference

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/find-the-difference/description/)

```jsx
package org.example;

public class Main {

    public static char findTheDifference(String s, String t) {

        int num = 0;

        for(int cs : s.toCharArray()) num -= cs;

        for(int ct : t.toCharArray()) num += ct;

        return (char) (num);
    }
    public static void main(String[] args)
    {
        System.out.println(findTheDifference("abcd" , "abecd"));
    }
}
```

```jsx
class Solution {
    public char findTheDifference(String s, String t) {
        
         char c = 0;
        for(char cs : s.toCharArray()) c ^= cs;
        for(char ct : t.toCharArray()) c ^= ct;
        return c;

         }
}
```