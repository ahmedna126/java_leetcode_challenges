# 657. Robot Return to Origin

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/robot-return-to-origin/)

```jsx
class Solution {
    public boolean judgeCircle(String moves) {
        int UpDown = 0;
        int LeftRight = 0;

        for (char c : moves.toCharArray() )
        {
            if (c == 'U')
                UpDown++;
            else if (c == 'D')
                UpDown--;
            else if (c == 'R')
                LeftRight++;
            else if (c == 'L')
                LeftRight--;
        }
        return (LeftRight == 0 && UpDown == 0);
    }
}
```

```jsx
class Solution {
    public boolean judgeCircle(String moves) {
        int UpDown = 0;
        int LeftRight = 0;

        for (char c : moves.toCharArray() )
        {
            switch (c){
                case 'U':
                    UpDown++;
                    break;
                case 'D':
                    UpDown--;
                    break;
                case 'L':
                    LeftRight++;
                    break;
                case 'R':
                    LeftRight--;
                    break;
            }
        }

        return (LeftRight == 0 && UpDown == 0); 
    }
}
```