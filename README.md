# module5-assignment

**Student Management System** in **Dart:** A Flutter-based application for Module 5 of the **_'App Development with Flutter'_** course. Utilizes Dart programming language with Object-Oriented Programming (OOP) concepts to create a comprehensive student management system, offering efficient data organization and user-friendly interfaces.

**Obtained Mark:** 100%

## Assignment Details

Enhance the student management system by using interfaces to ensure role-based behavior and actions.

### Requirements

#### Task 1: Define an interface named `Role`

-   Declare a method `void displayRole()` to be implemented by classes that represent different roles (Student, Teacher).

#### Task 2: Create a class `Person`

-   Include attributes for `name`, `age`, and `address`.
-   Include a reference to the `Role` interface.
-   Provide a constructor and getter methods for the attributes.
-   Implement the `Role` interface methods.

#### Task 3: Create a class `Student` that extends `Person`

-   Include additional attributes for `studentID`, `grade`, and a list to store `courseScores`.
-   Provide a constructor to initialize attributes.
-   Override the `displayRole()` method to display `"Role: Student"`.
-   Implement a method to calculate the average score of courses.

#### Task 4: Create another class `Teacher` that extends `Person`

-   Include an attribute for `teacherID` and an array to store `coursesTaught`.
-   Provide a constructor to initialize attributes.
-   Override the `displayRole()` method to display `"Role: Teacher"`.
-   Implement a method to display the courses taught by the teacher.

#### Task 5: Create a class `StudentManagementSystem`

-   In the main method, create instances of `Student` and `Teacher` classes.
-   Set the attributes using appropriate methods.
-   Use the `displayRole()` method to display the role of each person.
-   This extended scenario incorporates interfaces to provide role-based behavior for `Students` and `Teachers`.

#### Sample I/O:

-   If a student, named John Doe, is 20 years old and resides at 123 Main Street. His average score is 89.0, calculated from scores of 90, 85, and 82 in three subjects. Then Output should be:

    ```dart
    Student Information:
    Role: Student
    Name: John Doe
    Age: 20
    Address: 123 Main St
    Average Score: 89.0
    ```

-   If a teacher, named Mrs. Smith, is 35 years old and resides at 456 Oak St. And his course thoughts are Math, English, Bangla. Then Output should be:

    ```dart
    Teacher Information:
    Role: Teacher
    Name: Mrs. Smith
    Age: 35
    Address: 456 Oak St
    Courses Taught:
    -   Math
    -   English
    -   Bangla
    ```
