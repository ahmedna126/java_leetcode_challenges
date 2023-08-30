# 682. Baseball Game

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/baseball-game/description/)

```jsx
class Solution {
    public int calPoints(String[] operations) 
    {
        int output = 0;

        int[] list = new int[operations.length];

        for (int i = 0 , j = -1; i < operations.length ; i++)
        {
            if (operations[i].equals("C"))
            {
                list[j] = 0;
                j--;
            }else if (operations[i].equals("D")){
                j++;
                list[j] = 2 * (list[j-1]) ;
            }else if (operations[i].equals("+")){
                j++;
                list[j] = (list[j-1] + list[j-2] );
            }else {
                j++;
                list[j] = (Integer.parseInt(operations[i]));
            }

        }

        for (int n : list){
            output += n;
        }

        return output;
    }
}
```

```jsx
class Solution {
    public int calPoints(String[] operations) {
          int output = 0;

        LinkedList<Integer> list = new LinkedList<>();

        for (int i = 0 , j = 0; i < operations.length ; i++)
        {
            if (operations[i].equals("C"))
            {
                list.removeLast();
                j--;
            }else if (operations[i].equals("D")){
                list.add( 2 * (list.getLast()) );
                j++;
            }else if (operations[i].equals("+")){
                list.add(list.getLast() + list.get(j-2));
                j++;
            }else {
                list.add(Integer.parseInt(operations[i]));
                j++;
            }

        }

        for (int n : list){
            output += n;
        }

        return output;
    }
}
```