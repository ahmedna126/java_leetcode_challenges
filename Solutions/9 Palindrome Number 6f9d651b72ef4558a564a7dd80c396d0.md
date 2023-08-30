# 9. Palindrome Number

[Palindrome Number - LeetCode](https://leetcode.com/problems/palindrome-number/)

```php
package com.mycompany.firstproject;

public class FirstProject {

    public static boolean isPalindrome(int x) {

        String test = "";

        String s = String.valueOf(x);

        for (int i = s.length() -1 ; i >= 0 ; i--){
            test += s.substring(i , i+1);
        }

            if (test.equals(s)){
                return true;
            }

            return false;
    }

    public static void main(String[] args) {

        int x = 11;
        System.out.println(isPalindrome(x));

    }

}
```