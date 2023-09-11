# 1108. Defanging an IP Address

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/defanging-an-ip-address/)

# code1

```Java
class Solution {
    public String defangIPaddr(String address) {
        return address.replace("." , "[.]");
    }
}
```

# code2

```java
class Solution {
    public String defangIPaddr(String address) {
        StringBuilder str = new StringBuilder();
        for (char c : address.toCharArray()){
            str.append((c == '.')? "[.]" : c );
        }
        return str.toString();
    }
}
```
