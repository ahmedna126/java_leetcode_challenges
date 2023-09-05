# 49. Group Anagrams

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/group-anagrams/)

### code1

```java
class Solution {
    public List<List<String>> groupAnagrams(String[] strs)
    {
        HashMap<String , ArrayList<String>> hashmap = new HashMap<>();

        for (String s : strs)
        {
            char chars[] = s.toCharArray();
            Arrays.sort(chars);
            String s2 = new String(chars);
            
            List<String> arr = hashmap.computeIfAbsent(s2, key -> new ArrayList<>());
            arr.add(s);
        }

        return new ArrayList<>(hashmap.values());
    }
}
```


### code2

```java
class Solution {
    public List<List<String>> groupAnagrams(String[] strs)
    {
        List<List<String>> list = new LinkedList<>();

        HashMap<String , ArrayList<String>> hashmap = new HashMap<>();

        for (String s : strs)
        {
            char c1[] = s.toCharArray();
            Arrays.sort(c1);
            StringBuilder s2 = new StringBuilder();
            for (char c : c1)
            {
                s2.append(c);
            }
            List<String> arr = hashmap.computeIfAbsent(s2.toString(), key -> new ArrayList<>());
            arr.add(s);
        }

        for(Map.Entry<String, ArrayList<String>> entry : hashmap.entrySet()) {
            List<String> l1 = new LinkedList<>();
            for (String s : entry.getValue()){
                l1.add(s);
            }
            list.add(l1);
        }

        return list;
    }
}
```

### code3

```java
class Solution {
    public List<List<String>> groupAnagrams(String[] strs)
    {
      List<List<String>> list = new LinkedList<>();

        ArrayList<String> str1 = new ArrayList<>(strs.length);

        for (int i = 0 ; i < strs.length ; i++)
        {
            char c1[] = strs[i].toCharArray();
            Arrays.sort(c1);
            StringBuilder s2 = new StringBuilder();
            for (char c : c1) {
                s2.append(c);
            }
            str1.add(s2.toString());
        }

        for (int i = 0; i < str1.size() ; i++)
        {
            List<String> l1 = new LinkedList<>();
            String temp = str1.get(i).toString();
            if (temp != "-1") {
                int index = i;
                while (index != -1) {
                    str1.set(index, "-1");
                    l1.add(strs[index]);
                    index = str1.indexOf(temp);
                }

                list.add(l1);
            }
        }

        return list;
    }
}
```
