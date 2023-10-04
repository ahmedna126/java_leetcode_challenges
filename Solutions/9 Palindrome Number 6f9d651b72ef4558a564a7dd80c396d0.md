# 9. Palindrome Number

[Palindrome Number - LeetCode](https://leetcode.com/problems/palindrome-number/)

```Java
class Solution {
    public boolean isPalindrome(int x) {
       StringBuilder test = new StringBuilder();

        StringBuilder s = new StringBuilder(String.valueOf(x));

        for (int i = s.length() -1 ; i >= 0 ; i--){
            test.append(s.substring(i , i+1));
        }

    
      return test.toString().equals(s.toString());
    }
}
```


```Java
class Solution {
    public boolean isPalindrome(int x) {
        StringBuilder s = new StringBuilder(String.valueOf(x));
        s.reverse();
       
        return s.toString().equals(x + "");
    }
}
```
