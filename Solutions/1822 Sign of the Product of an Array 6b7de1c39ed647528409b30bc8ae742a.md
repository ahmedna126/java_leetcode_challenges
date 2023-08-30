# 1822. Sign of the Product of an Array

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/sign-of-the-product-of-an-array)

```jsx
import java.math.BigInteger;

class Solution {
    public int arraySign(int[] nums) {
         BigInteger res = BigInteger.ONE;

        for (int i = 0; i < nums.length ; i++) {
            res = res.multiply(BigInteger.valueOf(nums[i]));
        }

        return res.signum() ;
    }
}
```