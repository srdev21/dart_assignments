//========A===========

abstract class Role{
  void displayRole();
}

//========B===========

class Person implements Role{

  String name;
  int age;
  String adress;

  Person(this.name,  this.age,this.adress,);


  @override
  void displayRole() {
    // TODO: implement displayRole
  }

}

//========C===========

class Students extends Person{
  String studentId;
  String grade;
  List<int> courseScores;
  Students( String name, int age, String address,this.grade,this.courseScores,this.studentId)
  :super(name,age,address);

  void displayRole(){
    print("Role: Student");
  }
  double calculateAverageScore() {
    int totalScore = courseScores.fold(0, (sum, score) => sum + score); // Sum all scores
    return totalScore / courseScores.length; // Divide by the number of scores
  }

}

class Teacher extends Person{

  String teacherId;
  List<String> coursesTaught;

  Teacher(String name, int age, String address,this.coursesTaught,this.teacherId)
      :super(name,age,address);

  void displayRole(){
    print("Role: Teacher");

  }


    void displayCoursesTaught() {
      print("Courses Taught:");
      for (var course in coursesTaught) {
        print("- $course");
      }
    }




}


class StudentManagementSystem {
  static void main(){
   var students=  Students("Jhon Doe",20,"123 Main St","A",[90,85,82],"S1001");
   var teacher= Teacher("Mrs. Smith",35, "456 Oak",["Math", "Bangla","English"],"MT01");

//================Information of Student
    print("Student Information:\n");
    students.displayRole();
    print("Name: ${students.name}");
    print("Age: ${students.age}");
    print("Address: ${students.adress}");
    print("Average Score: ${students.calculateAverageScore()}\n\n");

//================Information of Teaacher
    print("Teacher Information:\n");
    teacher.displayRole();
    print("Name: ${teacher.name}");
    print("Age: ${teacher.age}");
    print("Address: ${teacher.adress}");
    teacher.displayCoursesTaught();
  }
}

//calling Main Method

void main(){
  StudentManagementSystem.main();
}









