# 167. Two Sum II - Input Array Is Sorted

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/)

### code1 By BinarySearch

```java
class Solution {
    public int[] twoSum(int[] numbers, int target) {
        int low = 0 , high = numbers.length-1;

            while (low < high)
            {
                int complement = numbers[low] + numbers[high];
                if (complement == target)
                {
                    return new int[]{low+1 , high+1};
                }else if (complement > target){
                    high--;
                }else {
                    low++;
                }
            }
            
        return new int[] {-1 , -1};
    }
}
```

### code2 By hashMap

```java
class Solution {
    public int[] twoSum(int[] numbers, int target) {
        HashMap<Integer , Integer> hashMap = new HashMap<>();

        for (int i = 0; i < numbers.length ; i++)
        {
            int complement = target - numbers[i];
            if (hashMap.containsKey(complement))
            {
                return new int[]{ hashMap.get(complement)+1 , i+1};
            }

            hashMap.put(numbers[i] , i);
        }
        
        return new int[]{-1 , -1};
    }
}
```

### code3 By hashSet

```java
class Solution {
    public int[] twoSum(int[] numbers, int target) {
        int [] res = {-1 , -1};

        HashSet<Integer> set = new HashSet<>();
        for (int n : numbers) {
            set.add(n);
        }

           StringBuilder str = new StringBuilder();
           int i = 1 ;
        for (int num : numbers)
        {
            if ( res[0] == -1 && set.contains(target - num))
            {
                res[0] = i;
                str.append(target - num);
            }else if (res[0] != -1 && Integer.parseInt(str.toString()) == num ){
                res[1] = i;
                return res;
            }
            i++;
        }
        return res;
    }
}
```