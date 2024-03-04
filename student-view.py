import random

class OnlineGradesPlatform:
    def __init__(self, student_name, courses):
        self.student_name = student_name
        self.grades = {course: random.randint(60, 100) for course in courses}

    def view_grades(self):
        print(f"Student: {self.student_name}")
        print("Course\t\tGrade")
        print("----------------------")
        for course, grade in self.grades.items():
            print(f"{course}\t\t{grade}")

# Example usage
student_name = "John Doe"
courses = ["Mathematics", "English", "History", "Science", "Programming"]
student_platform = OnlineGradesPlatform(student_name, courses)

print("Welcome to the Online Grades Platform")
print("------------------------------------")
student_platform.view_grades()
