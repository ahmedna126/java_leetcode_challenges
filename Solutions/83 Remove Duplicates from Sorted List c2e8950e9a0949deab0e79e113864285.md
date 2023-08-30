# 83. Remove Duplicates from Sorted List

[Remove Duplicates from Sorted List - LeetCode](https://leetcode.com/problems/remove-duplicates-from-sorted-list/description/)

```java
package com.mycompany.firstproject;

public class test2
{

        public static ListNode deleteDuplicates(ListNode head)
        {
            ListNode temp = head;

            while (temp != null && temp.next != null)
            {
                if (temp.next.val == temp.val)
                {
                    temp.next = temp.next.next;
                    continue;
                }

               temp = temp.next;
            }

            return head;
        }

        public static void main(String[] args)
        {

            ListNode node1 = new ListNode(1);
            ListNode node2 = new ListNode(1);
            ListNode node3 = new ListNode(2);
            ListNode node4 = new ListNode(2);
            ListNode node5 = new ListNode(3);

                node1.next = node2;
                node2.next = node3;
                node3.next = node4;
                node4.next = node5;

                ListNode head = deleteDuplicates(node1);

                while (head != null){
                    System.out.print(head.val + "  ");
                    head = head.next;
                }

        }

}
```