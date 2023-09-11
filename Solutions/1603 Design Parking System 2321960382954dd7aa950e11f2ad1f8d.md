# 1603. Design Parking System

[LeetCode - The World's Leading Online Programming Learning Platform](https://leetcode.com/problems/design-parking-system/)


# code1

```Java
class ParkingSystem {

    int[] arr ;
    public ParkingSystem(int big, int medium, int small) {
        arr = new int[]{big, medium, small};
    }

    public boolean addCar(int carType) {
        return (arr[carType-1]-- > 0)? true : false;
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = new ParkingSystem(big, medium, small);
 * boolean param_1 = obj.addCar(carType);
 */
```

# code2

```java
class ParkingSystem {

    int big , medium , small ;
    public ParkingSystem(int big, int medium, int small) {
        this.big = big;
        this.medium = medium;
        this.small = small;
    }

    public boolean addCar(int carType) {
        boolean cond = false;
        switch (carType)
        {
            case 1 : 
               cond = (this.big-- > 0) ? true : false;
               break;
            case 2 :
               cond = (this.medium-- > 0) ? true : false;
               break;
            case 3 :
               cond = (this.small-- > 0) ? true : false;
               break;
        }
        return cond;
    }
}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * ParkingSystem obj = new ParkingSystem(big, medium, small);
 * boolean param_1 = obj.addCar(carType);
 */
```
