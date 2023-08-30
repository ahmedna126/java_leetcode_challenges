# 347. Top K Frequent Elements

[Top K Frequent Elements - LeetCode](https://leetcode.com/problems/top-k-frequent-elements/description/)

```java
class Solution {
    public int[] topKFrequent(int[] nums, int k) {
            int [] output = new int[k];
         int n = nums.length;
           
           HashMap <Integer , Integer> emp = new HashMap<>();
                                 
          boolean visited[] = new boolean[n];
     
            Arrays.fill(visited, false);

        for (int i = 0; i < n; i++) {

            if (visited[i] == true)
                continue;
 
                    int count = 1;
                for (int j = i + 1; j < n; j++) {
                    if (nums[i] == nums[j]) {
                        visited[j] = true;
                        count++;
                    }
                }
                       
                   emp.put(nums[i], count);
          
        }
        
        
        List<Map.Entry<Integer, Integer>> list = new LinkedList<>(emp.entrySet());
         Collections.sort(list, Map.Entry.comparingByValue(Comparator.reverseOrder()));
         
         List<Integer> topKKeys = list.stream().map(Map.Entry::getKey).limit(k).collect(Collectors.toList());
         
         for (int i = 0; i < k; i++) {
             output[i] = topKKeys.get(i);
         }
        
        
         return output;
    }
}
```

same solution

```jsx
package ArrayList;

import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class test1 
{
    
     public static int[] topKFrequent(int[] nums, int k) {
         int [] output = new int[k];
         int n = nums.length;
           
           HashMap <Integer , Integer> emp = new HashMap<>();
                                 
          boolean visited[] = new boolean[n];
     
            Arrays.fill(visited, false);

        for (int i = 0; i < n; i++) {

            if (visited[i] == true)
                continue;
 
                    int count = 1;
                for (int j = i + 1; j < n; j++) {
                    if (nums[i] == nums[j]) {
                        visited[j] = true;
                        count++;
                    }
                }
                       
                   emp.put(nums[i], count);
          
        }
        
        
        List<Map.Entry<Integer, Integer>> list = new LinkedList<>(emp.entrySet());
         Collections.sort(list, Map.Entry.comparingByValue(Comparator.reverseOrder()));
         
         List<Integer> topKKeys = list.stream().map(Map.Entry::getKey).limit(k).collect(Collectors.toList());
         
         for (int i = 0; i < k; i++) {
             output[i] = topKKeys.get(i);
         }
        
        
         return output;
       
     }

    public static void main(String[] args) {
        
        int [] arr = topKFrequent(new int[] {1,1,1,2,2,3}, 2);
        
        for(int num : arr){
            System.out.println(num);
        }
        
    }
    
}
```