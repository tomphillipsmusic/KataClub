# KataClub

Welcome to the Kata Club!

This is an extracurricular coding challenge area. Our goal here is to provide some coding challenges to help you practice implementing the concepts we've covered. Several of these challenges are examples of what you might find in some coding interviews.

To do some of the challenges you'll need to 

1. clone this repo
2. make a new branch 
3. complete the function / follow the instructions
4. run the unit tests (if applicable)

# Unit Tests

A unit test is a method to test a specific piece of code. The tests help us make sure our code is behaving as expected. Several of these challenges have solutions that can be validated with unit tests which we will provide when possible. Below is a rough outline of the general strategy.

1. give a test case
2. run your function
3. compare your results from step 2 to the hardcoded version of what you expect to happen
4. if they match then the test is a success


### Example 

this is a demo for a function and some tests that would go with it. The function should take in a string and return a greeting with the entered name in all caps. 

```
func greetingAllCapsName(name: String) -> String {
     let allCapsName: String = name.uppercased()
     return "hello, \(allCapsName)!"
}
```

Below are some examples of unit tests that might be written for the function greetingAllCapsName.

The first test takes in "tyler" (all lowercase) as the given test case. We then run the function with the test case. Then we compare the test case to the hardcoded value ("hello, TYLER").
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

The second test takes in "TYLER" (already all caps). We want to confirm that when we give someting in all caps it doesn't behave strangely.

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

#### To run all tests

in Xcode use ```cmd + u``` to run the existing tests.

The image below shows us what it looks like after tests have been run. In this example, 3 tests failed. Our code may still run without errors, but the results of the code don't match the expected results.

![image](https://user-images.githubusercontent.com/47198432/150194114-92f24290-f23d-47e4-a786-5695ba5096fe.png)

If you run your code and get all green check marks then your function passed our unit tests and qualifies as a valid solution.


#### To run an individual test

Navigate to the file with tests for the specific challenge. In the image below the file circled in orange (DynamicTriangleTests) has the unit tests for the Dynamic Triangle challenge. Press the play button (circled in red) next to the test function you want to run. If the test passes the play button will change to a green check; if it fails it will turn into a red x.

![image](https://user-images.githubusercontent.com/47198432/150199364-c4a8e75b-6e29-4954-8f77-a86304754cc9.png)

# Solutions

<details> 
  <summary> Dynamic Triangle </summary>
 
  ```
  LOL nice try
  ```
</details>
