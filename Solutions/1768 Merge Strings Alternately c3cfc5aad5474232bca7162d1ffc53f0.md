# 1768. Merge Strings Alternately

[Merge Strings Alternately - LeetCode](https://leetcode.com/problems/merge-strings-alternately/description)

```jsx
package Exception;

import java.util.ArrayList;
import java.util.List;

public class main {

    public static String mergeAlternately(String word1, String word2) {
        int start = 0;
        int end = (word1.length() > word2.length()) ? word1.length() : word2.length();

        String output = "";
        int i = 0, k = 0;

        while (start < end) {
            test1:
            for (; i <= word1.length() - 1;) {
                output += word1.charAt(i);
                i++;
                break test1;
            }

            test2:
            for (; k <= word2.length() - 1;) {
                output += word2.charAt(k);
                k++;
                break test2;
            }

            start++;

        }

        return output;

    }

    public static void main(String[] args) {

        System.out.println(mergeAlternately("abc", "pqr"));

    }

}
```

```jsx
class Solution {
    public String mergeAlternately(String word1, String word2) {
        StringBuilder result = new StringBuilder();
          int i = 0;
         
        while (i < word1.length() || i < word2.length()) {
            
            if ( i < word1.length() ) {
                result.append(word1.charAt(i));
            }

            if (i < word2.length()) {
                result.append(word2.charAt(i));
            }

            i++;

        }

        return result.toString();
    }
}
```

```jsx
package Exception;

import java.util.ArrayList;
import java.util.List;

public class main {

    public static String mergeAlternately(String word1, String word2) {

        String output = "";
        int i = 0;

        while (i < word1.length() || i < word2.length()) {
            
            if ( i < word1.length() ) {
                output += word1.charAt(i);
            }

            if (i < word2.length()) {
                output += word2.charAt(i);
            }

            i++;

        }

        return output;

    }

    public static void main(String[] args) {

        System.out.println(mergeAlternately("abc", "pqr"));

    }

}
```