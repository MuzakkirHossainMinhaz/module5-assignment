// define interface for Role
abstract class Role {
  void displayRole();
}

// create Person class
class Person implements Role {
  String name;
  int age;
  String address;
  Role role;

  // constructor
  Person(this.name, this.age, this.address, this.role);

  // getter methods
  String getName() => name;
  int getAge() => age;
  String getAddress() => address;

  // displayRole() from Role interface
  @override
  void displayRole() {
    role.displayRole();
  }
}

// create Student class
class Student extends Person {
  String studentID;
  double grade;
  List<double> courseScores;

  // constructor
  Student(String name, int age, String address, this.studentID, this.grade,
      this.courseScores)
      : super(name, age, address, RoleStudent());

  // override displayRole method
  @override
  void displayRole() {
    print("Role: Student");
  }

  // calculate the average score of courses
  double calculateAverageScore() {
    double result = courseScores.reduce((value, element) => value + element) /
        courseScores.length;
    String temp = result.toStringAsFixed(1);
    return double.parse(temp);
  }
}

// create Teacher class
class Teacher extends Person {
  String teacherID;
  List<String> coursesTaught;

  // constructor
  Teacher(
      String name, int age, String address, this.teacherID, this.coursesTaught)
      : super(name, age, address, RoleTeacher());

  // override displayRole method
  @override
  void displayRole() {
    print("Role: Teacher");
  }

  // display the courses taught
  void displayCoursesTaught() {
    print("Courses Taught:");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

// create StudentManagementSystem class
class StudentManagementSystem {
  static void main() {
    // instances of Student and Teacher classes
    var student =
        Student("John Doe", 20, "123 Main Street", "S101", 4.0, [90, 85, 82]);
    var teacher = Teacher(
        "Mrs. Smith", 35, "456 Oak St", "T101", ["Math", "English", "Bangla"]);

    // display the information of the students and teachers
    print("Student Information:");
    student.displayRole();
    print("Name: ${student.getName()}");
    print("Age: ${student.getAge()}");
    print("Address: ${student.getAddress()}");
    print("Average Score: ${student.calculateAverageScore()}");

    print("\nTeacher Information:");
    teacher.displayRole();
    print("Name: ${teacher.getName()}");
    print("Age: ${teacher.getAge()}");
    print("Address: ${teacher.getAddress()}");
    teacher.displayCoursesTaught();
  }
}

// concrete classe for Student
class RoleStudent implements Role {
  @override
  void displayRole() {
    print("Role: Student");
  }
}

// concrete classe for Teacher
class RoleTeacher implements Role {
  @override
  void displayRole() {
    print("Role: Teacher");
  }
}

// main function to execute the program
void main() {
  StudentManagementSystem.main();
}
