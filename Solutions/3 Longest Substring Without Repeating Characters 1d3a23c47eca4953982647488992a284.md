# 3. Longest Substring Without Repeating Characters

[Longest Substring Without Repeating Characters - LeetCode](https://leetcode.com/problems/longest-substring-without-repeating-characters/description/)

```java
package org.example;

public class Main {

    public static int lengthOfLongestSubstring(String s) {
        int maxLength = 0;
        String currentSubstring = "";

        for (int i = 0; i < s.length(); i++)
        {
            char c = s.charAt(i);
                if (currentSubstring.contains(String.valueOf(c)))
                {
                    maxLength = Math.max(maxLength , currentSubstring.length());
                    int index = currentSubstring.indexOf(c);
                    currentSubstring = currentSubstring.substring(index+1);
                }

                currentSubstring += c;

        }

            maxLength = Math.max(maxLength , currentSubstring.length());

        return maxLength;
    }

    public static void main(String[] args)
    {

        System.out.println(lengthOfLongestSubstring("pwwkew"));

    }
}
```