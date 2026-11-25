- With testing, we must demonstrate software is not incorrect (duh)
# Why do we test?
- risk reduction/saving money
- safety and security
- product quality
- customer satisfaction
- enhancing the development process
- *pareto rule: 80% of errors come from 20% of program components*

# Types of Testing
- **Unity testing**: focuses on smallest unit of software design (function etc.)
- **Integration testing**:test combination of unit tested components
- **Regression testing:** test component works properly even after adding components to the complete program
- **Alpha testing**: a type of acceptance testing which is done before the product is released to customers (done by QA)
- **Beta testing**: conducted at one or more customer sites by the end-user of the software. this version is released for a limited number of users.
- **System testing**: test all works for different operating systems. in this we have security testing, recovery testing, stress testing, and performance testing,

# Test Driven Development
- Write your tests *first*!
- They specify what you want.
- By doing the spec up front, you simplify the thinking required to write the solution 
	- developing tests and code together saves time
- Tests tell you when you have what you want 
	- you won't code unnecessary things
- Tests help document your intentions
	- they are always up to date

## Reasons for TDD
- Giving you confidence to refactor
- Improving your design (principles taught later) - forcing the code to be designed in a testable manner
- Develop faster in the long run
- Give you an easy way to retest the application in a number of seconds
- You know when the task is down
- Maintenance costs reduced

## The Biggest Advantage...
- Writing tests after the fact is bad and boring: you think you know it works but you haven't designed it for testing.
- It's like double entry bookkeeping.

## TDD Cycles
- Write a test
- Watch it fail
- Make a little change in your code
- Watch it succeed
- Refactor code to remove duplication OR refactor test OR repeat from top
![[Pasted image 20260311164940.png]]

# Unit Testing

## Unity Testing Should Be:
- **Independent**: each unit test should be able to run independently of other tests
- **Small**: each tests should test just one thing (single behaviour)
- **Fast**: so that it can be run as often as required
- **Predictable**: The assumptions for each test should be clear and defined within the test method
- **Named well**

## Summary
- Pre/Post text fixtures (@Before, @After): common setup / tear down code to save redundant code showing up repeatedly in tests.
- Assertion: test for the responses we expect, e.g. equals, true, null...
- Anticipated expection: test for error cases not just "happy" path
- There are also **parameterised JUnit test** and tests for exceptions.
