# 1572. Matrix Diagonal Sum

[Matrix Diagonal Sum - LeetCode](https://leetcode.com/problems/matrix-diagonal-sum/description/)

```java
package problem_solving;

import java.util.Arrays;

public class problem_solving {

    public static int diagonalSum(int[][] mat) {
        int output = 0;
        int j = mat.length;

        for ( int i = 0; i < mat.length; i++) {
            output += mat[i][i];
            output += mat[i][j-1-i];
        }

        output -= (j % 2 !=0)? mat[j/2][j/2] : 0;

        return output;
    }

    public static void main(String[] args) {
        System.out.println(diagonalSum(new int[][] {{1,2,3},{4,5,6},{7,8,9}}));
    }
}
```