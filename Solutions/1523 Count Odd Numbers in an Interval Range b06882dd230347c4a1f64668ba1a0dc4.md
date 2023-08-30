# 1523. Count Odd Numbers in an Interval Range

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/)

```java
class Solution {
    public int countOdds(int low, int high) 
    {             
        return ( (high-low) /2 ) + ((low%2 == 0 && high %2 == 0 ) ? 0 : 1);
     }
}
```