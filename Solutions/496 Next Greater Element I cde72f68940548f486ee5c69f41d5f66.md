# 496. Next Greater Element I

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/next-greater-element-i/)

```java
class Solution {
    public int[] nextGreaterElement(int[] nums1, int[] nums2) {
        int[] nums3 = new int[nums1.length];

        for (int i = 0; i < nums3.length ; i++)
        {
            nums3[i] =  findNextMaxNum(nums2 , nums1[i]);
        }
        return nums3;
    }

    public static int findNextMaxNum(int[] arr , int n )
    {
         int temp = -1 ;
        for (int i = 0 ; i < arr.length ; i++)
        {
            if (arr[i] == n) {
                while ((i + 1) < arr.length && temp <= n) {
                    i++;
                    temp = Math.max(n, arr[i]);
                }
                break;
            }
        }
        return (temp == n) ? -1 : temp ;
    }
}
```

```java
class Solution {
    public int[] nextGreaterElement(int[] nums1, int[] nums2) {
        int[] nums3 = new int[nums1.length];
        ArrayList<Integer> arr = new ArrayList<>(nums2.length + 1);
        for (int n : nums2){
            arr.add(n);
         }
           arr.add(-1);

        for (int i = 0; i < nums1.length ; i++)
        {
            nums3[i] =  findMax(arr , nums1[i]);
        }
        return nums3;
    }
        
    public static int findMax(ArrayList arr , int n )
    {
        int temp = -1 ;
        for (int i = arr.indexOf(n) + 1 ; i < arr.size() -1 ; i++) 
        {
            temp = Math.max(n , (Integer) arr.get(i));
             if (temp > n ) break;
        }
        
        return (temp == n) ? -1 : temp ;
    }
}
```