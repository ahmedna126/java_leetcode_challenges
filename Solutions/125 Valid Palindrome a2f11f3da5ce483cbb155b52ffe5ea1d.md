# 125. Valid Palindrome

[Valid Palindrome - LeetCode](https://leetcode.com/problems/valid-palindrome/description/)

```java
package problem_solving;

import java.util.Arrays;

public class problem_solving {
    public static boolean isPalindrome(String s) {
       String str = s.replaceAll("[^a-zA-Z0-9]", "").toLowerCase();
        int j = str.length() -1;

        for (int i = 0; i < str.length() -1 ; i++) {
            if (str.charAt(i) != str.charAt(j)){
                    return false;
            }
            j--;
        }

        return true;
    }

    public static void main(String[] args) {
       System.out.println(isPalindrome("A man, a plan, a canal: Panama"));

    }
}
```