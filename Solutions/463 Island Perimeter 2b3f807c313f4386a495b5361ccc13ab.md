# 463. Island Perimeter

[Island Perimeter - LeetCode](https://leetcode.com/problems/island-perimeter/description/)

```java
package com.mycompany.firstproject;

import java.util.Arrays;

public class test2 {

    public static int islandPerimeter(int[][] grid) {
        int output = 0;

        for (int i = 0; i < grid.length; i++) {
            for (int j = 0; j < grid[i].length; j++) {
                if (grid[i][j] == 1){
                    output += 4;

                    if ( j-1 >= 0  && grid[i][j-1] == 1)  output -= 1;

                    if ( j+1 != grid[i].length && grid[i][j+1] == 1)  output -=1;

                    if (i-1 >= 0 && grid[i-1][j] == 1)   output -= 1;

                    if (i+1 != grid.length && grid[i+1][j] == 1) output -=1;
                }
            }
        }
        return output;
    }

    public static void main(String[] args) {

        System.out.println(islandPerimeter(new int[][]{
                {0, 1, 0, 0},
                {1, 1, 1, 0},
                {0, 1, 0, 0},
                {1, 1, 0, 0}
        }));

        // System.out.println(islandPerimeter(new int[][] { {1,0} } ));

    }

}
```