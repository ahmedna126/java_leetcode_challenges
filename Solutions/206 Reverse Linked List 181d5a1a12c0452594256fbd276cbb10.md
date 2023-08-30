# 206. Reverse Linked List

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/reverse-linked-list/description/)

```java
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public ListNode reverseList(ListNode head) {
        ListNode prev = null;
        ListNode cur = head;
        ListNode temp = null;

        while(cur != null)
        {   
            temp = cur.next;
            cur.next = prev;
            prev = cur;
            cur = temp;
        }
        
				head = prev;      
        
				return head;
    }
}
```