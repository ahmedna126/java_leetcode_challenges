# 14. Longest Common Prefix

[Longest Common Prefix - LeetCode](https://leetcode.com/problems/longest-common-prefix/description/)

```java
package com.mycompany.firstproject;

import java.util.Arrays;

public class test2 {

    public static String longestCommonPrefix(String[] strs) {
            if (strs.length == 0){
                return "";
            }

            String prefix = strs[0];
            int length = prefix.length();

        for (int i = 1; i < strs.length; i++) {
            while (strs[i].indexOf(prefix) != 0){
                prefix = prefix.substring(0 , --length);
                if (length == 0){
                    return "";
                }
            }
            
        }

        return prefix;
    }

    public static void main(String[] args) {

        System.out.println(longestCommonPrefix(new String[]{"flower","flow","flight"}));

    }

}
```