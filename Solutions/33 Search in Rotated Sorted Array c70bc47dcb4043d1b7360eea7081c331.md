# 33. Search in Rotated Sorted Array

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/search-in-rotated-sorted-array/description/)

```java
class Solution {
    public static int search(int[] nums, int target) {
    int low = 0;
    int high = nums.length - 1;

    while (low <= high) {
        int mid = low + (high - low) / 2;

        if (nums[mid] == target) {
            return mid;
        } else if (nums[mid] >= nums[low]) { 
            if (target >= nums[low] && target < nums[mid]) {
                high = mid - 1;
            } else {
                low = mid + 1;
            }
        } else {
            if (target > nums[mid] && target <= nums[high]) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
    }

    return -1;
}

}
```