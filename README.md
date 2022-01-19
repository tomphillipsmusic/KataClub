# KataClub

Welcome to the Kata Club

This is an extracurricular coding challenge area

We will try to post one challenge per week and review them on Fridays from 12-1

Clone the repo, make a new branch, fill out the function section that is left blank


# Unit Tests

A unit test is a method to test a specific piece of code. The tests help us make sure our code is behaving as expected. Several of these challenges have solutions that can be validated with unit tests which we will provide when possible. Below is a rough outline of the general strategy.

1. give a test case
2. hardcode the expected value
3. run your function
4. compare your results from step 3 to the hardcoded results of 2
5. if they match then the test is a success


### Example 

this is a demo for a function and some tests that would go with it.

```
func greetingAllCapsName(name: String) -> String {
     let allCapsName: String = name.uppercased()
     return "hello, \(allCapsName)!"
}
```

these are some examples of unit tests that might be written for the function greetingAllCapsName
```
func testAllLowercaseName() throws {
     // Given
     let inputName = "tyler"
     
     // When
     actualResult = greeting(name: inputName)
     
     // Then
     XCTAssert(actualResult == "hello, TYLER", "entering all lowercase name returns an all uppercase name")
}
```

```
func testAllUppercaseName() throws {
     // Given
     let inputName = "TYLER"
     
     // When
     actualResult = greeting(name: inputName)
     
     // Then
     XCTAssert(actualResult == "hello, TYLER", "entering all uppercase name returns an all uppercase name")
}
```

### In XCode

in Xcode use ```cmd + u``` to run the existing tests.

The image below shows us what it looks like after tests have been run. In this example, 3 tests failed. Our code may still run without errors, but the results of the code don't match the expected results.

![image](https://user-images.githubusercontent.com/47198432/150194114-92f24290-f23d-47e4-a786-5695ba5096fe.png)

If you run your code and get all green check marks then your function passed our unit tests and qualifies as a valid solution.

# Solutions

<details> 
  <summary> Dynamic Triangle </summary>
 
  ```
  func triangleOfOnes(with height: String) -> String {
        return ""
    } 
  ```
  
  ```
  func triangleOfOnes(with height: String) -> String {
        return ""
    } 
  ```
</details>
