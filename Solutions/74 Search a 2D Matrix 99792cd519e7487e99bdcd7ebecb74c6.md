# 74. Search a 2D Matrix

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/search-a-2d-matrix/)

```java
class Solution {
    public boolean searchMatrix(int[][] matrix, int target) {
       int low1 = 0 , high1 = matrix.length - 1 , mid1 = low1 + (high1 - low1) /2;
        while (low1 < high1)
        {
            if (matrix[mid1][0] == target){
                return true;
            }else if (matrix[mid1][0] < target ){
                if (matrix[mid1][matrix[0].length-1] >= target) break;
                low1 = mid1 + 1;
            }else {
                high1 = mid1 - 1;
            }
             mid1 = low1 + (high1 - low1) /2;
        }

        int low2 = 0 , high2 = matrix[0].length - 1;
        while (low2 <= high2)
        {
            int mid2 = low2 + (high2 - low2) /2;
            if (matrix[mid1][mid2] == target){
                return true;
            }else if (matrix[mid1][mid2] < target){
                low2 = mid2 + 1;
            }else {
                high2 = mid2 - 1;
            }
        }

        return false; 
    }
}
```