# 229. Majority Element II

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/majority-element-ii/)

### Code1

```java
class Solution {
    public List<Integer> majorityElement(int[] nums) {
        Arrays.sort(nums);
        List<Integer> list = new LinkedList<>();

        for (int i = 0; i < nums.length; i++)
        {
            int count = 1 , num = nums[i];
            while (i < (nums.length-1) && num == nums[i+1])
            {
                count++;
                i++;
            }
            if (count > nums.length/3) list.add(num);
        }
        return list;
    }
}
```

### Code2

```java
import java.util.Hashtable;
class Solution {
    public List<Integer> majorityElement(int[] nums) {
       List<Integer> list = new LinkedList<>();
        Hashtable<Integer , Integer> hashtable = new Hashtable<>();
        for (int n : nums) {
            hashtable.put(n, hashtable.getOrDefault(n, 0) + 1);
        }
        for (Map.Entry<Integer , Integer> map : hashtable.entrySet())
        {
            if (map.getValue() > nums.length /3 )
                list.add(map.getKey());
        }
        return list;  
    }
}

```


### Code3

```Java
class Solution {
    public List<Integer> majorityElement(int[] nums) {
        List<Integer> list = new LinkedList<>();
        HashSet <Integer> hashSet = new HashSet<>();
        for (int n : nums) hashSet.add(n);

        Iterator<Integer> it = hashSet.iterator();
        while (it.hasNext())
        {
           int count = 0, num = it.next();
            for (int n : nums)
            {
              if (n == num) count++;
            }
            if (count > nums.length/3) list.add(num);
        }
        return list;
    }
}
```
