# 225. Implement Stack using Queues

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/implement-stack-using-queues/description/)

```java
class MyStack {

    public int top;
    public int[] arr;
    public MyStack() {
        top = -1;
        arr = new int[100];
    }

    public void push(int x) {
        top++;
        arr[top] = x;
    }

    public int pop() {
        int temp = arr[top];
        top--;
        return temp;
    }

    public int top() {
        return arr[top];
    }

    public boolean empty() {
        return top == -1;
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = new MyStack();
 * obj.push(x);
 * int param_2 = obj.pop();
 * int param_3 = obj.top();
 * boolean param_4 = obj.empty();
 */
```

```java
class MyStack {
    Queue<Integer> q;
    int top;

    public MyStack() {
        q = new LinkedList<>();
        top = 0; 
    }
    
    public void push(int x) {
        q.offer(x);
        top = x;
    }
    
    public int pop() {
        int size = q.size();
        while (size > 2) {
            q.offer(q.poll());
            size--;
        }
        top = q.peek();
        q.offer(q.poll());
        return q.poll();
    }
    
    public int top() {
        return this.top;
    }
    
    public boolean empty() {
        return q.isEmpty();
    }
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = new MyStack();
 * obj.push(x);
 * int param_2 = obj.pop();
 * int param_3 = obj.top();
 * boolean param_4 = obj.empty();
 */
```