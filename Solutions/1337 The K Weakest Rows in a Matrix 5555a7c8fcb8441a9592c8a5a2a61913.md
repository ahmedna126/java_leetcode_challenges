# 1337. The K Weakest Rows in a Matrix

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/the-k-weakest-rows-in-a-matrix/)

```java
class Solution {
    public int[] kWeakestRows(int[][] mat, int k) {
        int arr[] = new int[mat.length];
        int res[] = new int[k];

        for (int i = 0 ; i < mat.length ; i++)
            {
                int nums [] = mat[i];
                int count = 0;
                int j = 0;
                while ( j < nums.length && nums[j] == 1 ){
                    count++;
                    j++;
                }
                arr[i] = count;
            }

        for (int i = 0; i < k; i++)
        {
            int index = 0 , min = arr[0];
            for (int j = 1; j < arr.length ; j++)
            {
                if (arr[j] < min ){
                    min = arr[j];
                    index = j;
                }
            }

            res[i] = index;
            arr[index] = mat[0].length+1;
        }
        
        return res;  
    }
}
```