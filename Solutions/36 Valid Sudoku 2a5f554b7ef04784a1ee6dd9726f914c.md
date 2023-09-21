# 36. Valid Sudoku

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/valid-sudoku/)

```java
class Solution {
   public boolean isValidSudoku(char[][] board) {

         for (int i = 0; i < 9; i++) {
            HashSet<Character> RowSet = new HashSet<>();
            HashSet<Character> ColSet = new HashSet<>();
            for (int j = 0; j < 9; j++) {
                char r = board[i][j];
                char c = board[j][i];
                if ( (r != '.' && !RowSet.add(r) ) || (c != '.' && !ColSet.add(c))) {
                    return false;
                }
            }
        }

        for (int i = 0; i < 9; i = i + 3) {
            for (int j = 0; j < 9; j = j + 3) {
                if (!checkBlock(i, j, board))
                    return false;
            }
        }
        return true;
    }

    public static boolean checkBlock(int IdI, int IdJ, char[][] boards) {
        HashSet<Character> set = new HashSet<>();

        int rows = IdI + 3;
        int cols = IdJ + 3;
        for (int i = IdI; i < rows; i++) {
            for (int j = IdJ; j < cols; j++) {
                char c = boards[i][j];
                if (c != '.' && !set.add(c)) {
                    return false;
                }
            }
        }
        return true;
    }
}
```
