# **609. Find Duplicate File in System**

[Find Duplicate File in System - LeetCode](https://leetcode.com/problems/find-duplicate-file-in-system/)

```java
import java.util.Hashtable;

class Solution {
    public List<List<String>> findDuplicate(String[] paths) {
        HashMap<String, LinkedList<String>> hashMap = new HashMap<>();

        for (String path : paths) {
            String[] arr = path.split(" ");
            for (int i = 1; i < arr.length; i++) {
                String str = arr[i];
                StringBuilder pathFile = new StringBuilder();
                StringBuilder text = new StringBuilder();
                int index = str.indexOf('(');

                pathFile.append(arr[0] + "/");
                pathFile.append(str.substring(0, index));
                text.append(str.substring(index + 1, str.length() - 1));

                hashMap.computeIfAbsent(text.toString(), k -> new LinkedList<>()).add(pathFile.toString());

            }
        }

        LinkedList<List<String>> list = new LinkedList<>();

        for (List<String> pathsList : hashMap.values()) {
            if (pathsList.size() > 1)
                list.add(pathsList);
        }

        return list;
    }
}
```

a
