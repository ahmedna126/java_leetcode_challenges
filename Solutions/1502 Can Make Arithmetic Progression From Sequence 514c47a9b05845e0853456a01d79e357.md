# 1502. Can Make Arithmetic Progression From Sequence

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/can-make-arithmetic-progression-from-sequence/description/)

```jsx
class Solution {
    public boolean canMakeArithmeticProgression(int[] arr) {
        Arrays.sort(arr);

         int n = arr[0] - arr[1] ;

        for (int i = 1; i < arr.length -1 ; i++)
        {
            if ((arr[i] - arr[i+1]) != n ){
                return false;
            }
        }
        return true;
    }
}
```