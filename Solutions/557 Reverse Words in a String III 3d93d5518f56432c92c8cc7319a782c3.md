# 557. Reverse Words in a String III

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/reverse-words-in-a-string-iii/)

```java
class Solution {
    public String reverseWords(String s) {
        StringBuilder res = new StringBuilder();
        String[] arr = s.split(" ");
        for (String str : arr){
            res.append(new StringBuffer(str).reverse().append(" "));
        }
        
       // res.deleteCharAt(res.length() - 1);   If you don't want to use trim()
        return res.toString().trim();        
    }
}
```

### Coed2

```java
class Solution {
    public String reverseWords(String s) {
        StringBuilder res = new StringBuilder();
        StringBuilder temp = new StringBuilder();

        for (int i = s.length() - 1 ; i >= -1; i--)
        {
            if (i == -1 || s.charAt(i) == ' ' )
            {
                res.insert( 0 , temp+" ");
                temp = new StringBuilder();
            }else {
                temp.append(s.charAt(i));
            }
        }

      //  res.deleteCharAt(s.length());
        return res.toString().trim();
    }
}
```

### Code3

```java
class Solution {
    public String reverseWords(String s) {
        StringBuilder res = new StringBuilder();
        StringBuilder temp = new StringBuilder();

        for (int i = 0 ; i <= s.length() ; i++)
        {
            if (i == s.length()) {
                res.append(temp.reverse() );
            }else if (s.charAt(i) == ' '){
                res.append(temp.reverse().append(" "));
                temp = new StringBuilder();
            } else {
                 temp.append(s.charAt(i));
            }
        }

        return res.toString();
    }
}
```
