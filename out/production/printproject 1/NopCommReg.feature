Feature:  Nopcommerce Registration

  As a User
      I want to check the Register Functionality of Nopcommerce

Background: I am on Nopcommerce Registration page
     Given   I open the Google Chrome Browser
     When    I open the Url https://demo.nopcommerce.com/register
     Then    I am on Nopcommerce Registration page

     Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
              When   I enter first name "<First Name>"
              And    I enter last name  "<Last Name>"
              And    I enter Email address "<Email>"
              And    I enter password "<Password>"
              And    I enter confirm password "<Confirm Password>"
              And    Click on Registration button
              Then   I can see an error message "<error message>"
              And    I an not able to register

              Examples:
                  |First Name  |Last Name  |Email               |Password   |Confirm Password |error message          |
                  |" "         |bakshi     |bakshi@gmail.com    |456897     |456897           |please enter First Name|
                  |Rohan       | " "       |bakshi@gmail.com    |456897     |456897           |please enter Last Name |
                  |Rohan       |bakshi     | " "                |456897     |456897           |please enter valid email|
                  |Rohan       |bakshi     |bakshi@gmail.com    |           |456897           |password is required    |
                  |Rohan       |bakshi     |bakshi@gmail.com    |456897     | " "             |confirm password is required|
                  |Rohan       |bakshi     |bakshi@gmail.com    |456897     |45689            |password and confirm password do not match|
                  |Rohan       |Bakshi     |bakshi@gmail.com    |45689      | " "             |minimum 6 character password is required  |
                  |" "         | " "       | " "                | " "       | " "             | Mandatory (*) field is required |

       Scenario: