# 896. Monotonic Array

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/monotonic-array/description/)

```jsx
class Solution {
    public boolean isMonotonic(int[] nums) 
    {

         int i = 0;

        while (i < nums.length - 2  && nums[i] == nums[i+1])
            i++;

        Boolean cond = (i <= nums.length - 2 && nums[i] <= nums[i + 1] ) ? true : false;

        for ( i = 0; i < nums.length - 1 ; i++)
        {
            if (cond)
            {
                if ( !(nums[i] <= nums[i+1] ) )
                    return false;

            }else {
                if (!(nums[i] >= nums[i+1]))
                    return false;
            }
        }
        return true;
        
    }
}
```