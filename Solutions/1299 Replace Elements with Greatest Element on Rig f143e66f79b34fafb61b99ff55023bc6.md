# 1299. Replace Elements with Greatest Element on Right Side

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/replace-elements-with-greatest-element-on-right-side/)

### Code1

```java
class Solution {
    public int[] replaceElements(int[] arr) {
        int max=-1;
        int length=arr.length;
        int[] nums= new int[length];

        for(int i=length-1;i>=0;i--){
            nums[i]= max;
            if(arr[i]>=max){
                max=arr[i];
            }
        }
        return nums;
    }
}
```

### Code2

```java
class Solution {
    public int[] replaceElements(int[] arr) {
        int length = arr.length - 1;
        for(int i = 0 ; i < length ; i++)
        {
            arr[i] = findMax(arr , i+1);
        }
        arr[length] = -1;
        return arr;
    }
    public static int findMax(int[] arr , int startIndex)
    {
        int temp = arr[startIndex];
        for(int i = startIndex+1 ; i <= arr.length-1; i++ )
        {
            temp = Math.max(temp , arr[i]);
        }
        return temp;
    }

}
```