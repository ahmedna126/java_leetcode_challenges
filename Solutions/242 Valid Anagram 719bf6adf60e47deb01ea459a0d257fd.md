# 242. Valid Anagram

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/valid-anagram/description)

```jsx
package org.example;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;

public class Main {

    public static boolean isAnagram(String s, String t) {
        if (s.length() != t.length()) return false;

       char[] c1 = s.toCharArray();
       char[] c2 = t.toCharArray();

       Arrays.sort(c1);
       Arrays.sort(c2);

        return Arrays.equals(c1 , c2);
    }
    public static void main(String[] args)
    {

        System.out.println(isAnagram("abcd" , "cdba"));

    }
}
```