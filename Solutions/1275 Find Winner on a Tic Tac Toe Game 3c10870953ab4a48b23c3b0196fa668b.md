# 1275. Find Winner on a Tic Tac Toe Game

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/find-winner-on-a-tic-tac-toe-game/)

```jsx
class Solution {
    public String tictactoe(int[][] moves) {
        
         LinkedList<String> list1 = new LinkedList<>();

         for (int i = (moves.length % 2 == 0)? 1 : 0; i < moves.length; i += 2) 
         {
            list1.add(moves[i][0] + "" + moves[i][1]);
         }

        if (
                   (list1.contains("00") && list1.contains("11") && list1.contains("22"))
                || (list1.contains("02") && list1.contains("11") && list1.contains("20"))
                || (list1.contains("00") && list1.contains("10") && list1.contains("20"))
                || (list1.contains("01") && list1.contains("11") && list1.contains("21"))
                || (list1.contains("02") && list1.contains("12") && list1.contains("22"))
                || (list1.contains("00") && list1.contains("01") && list1.contains("02"))
                || (list1.contains("10") && list1.contains("11") && list1.contains("12"))
                || (list1.contains("20") && list1.contains("21") && list1.contains("22"))
        ) {
            return (moves.length % 2 == 0) ? "B" : "A";
        }

       return (moves.length == 9)? "Draw" :"Pending";
    }
}
```

chatGpt

```jsx
class Solution {
    public String tictactoe(int[][] moves) {
        char[][] grid = new char[3][3];

        for (int i = 0; i < moves.length; i++) {
            char player = (i % 2 == 0) ? 'A' : 'B';
            grid[moves[i][0]][moves[i][1]] = player;
        }

        if (checkWin(grid, 'A')) {
            return "A";
        } else if (checkWin(grid, 'B')) {
            return "B";
        } else if (moves.length == 9) {
            return "Draw";
        } else {
            return "Pending";
        }
    }

    private boolean checkWin(char[][] grid, char player) {
        for (int i = 0; i < 3; i++) {
            if (grid[i][0] == player && grid[i][1] == player && grid[i][2] == player) {
                return true;
            }
            if (grid[0][i] == player && grid[1][i] == player && grid[2][i] == player) {
                return true;
            }
        }
        
        if (grid[0][0] == player && grid[1][1] == player && grid[2][2] == player) {
            return true;
        }
        if (grid[0][2] == player && grid[1][1] == player && grid[2][0] == player) {
            return true;
        }

        return false;
    }
}
```