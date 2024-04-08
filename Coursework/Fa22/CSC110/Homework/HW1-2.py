homeworkGrade = float(input('Enter Homework grade: '))

midtermGrade = float(input('Enter Midterm grade: '))

finalExamGrade = float(input('Enter Final Exam grade: '))

finalGrade = ((float(homeworkGrade)*.45)+(float(midtermGrade)*.25)+(float(finalExamGrade)*.3))

print("Your final grade is:", round(finalGrade,2))
