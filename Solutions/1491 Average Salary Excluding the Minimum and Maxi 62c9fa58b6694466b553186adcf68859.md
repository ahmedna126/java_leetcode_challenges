# 1491. Average Salary Excluding the Minimum and Maximum Salary

[Average Salary Excluding the Minimum and Maximum Salary - LeetCode](https://leetcode.com/problems/average-salary-excluding-the-minimum-and-maximum-salary/description/)

```java
package problem_solving;

import java.util.Arrays;

public class problem_solving {
    public static double average(int[] salary) {
        Arrays.sort(salary);
        double sum = 0.0;

        int i = salary.length - 2;
        while (i != 0){
            sum += salary[i--];
        }

        return  sum / (salary.length-2);
    }

    public static void main(String[] args) {
        System.out.println(average(new int[] {4000,3000,1000,2000}));

    }

}
```