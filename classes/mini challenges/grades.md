# Grades
Create a class called ** MyGrades **, said class will be in charge of keeping track of a student's grades in a specified subject (the subject name must be specified when creating the object).

MyClass must store the name of the subject, store the grades in an orderly manner and have methods to be able to perform the following operations:
- Add a new grade
- Update a grade
- Get a grade
- Print student grades

The school gives students a grade per month, ranging from 0 to 10

## Examples

### Create class
```
Input
let history = MyClass (named: "History")

Console Output
"Class History created"
```
### Add grade
```
Input
let history = MyClass (named: "History")
history.addGrade (10)
history.addGrade (5)

Console Output
"Class History created"
"Grade 10 added for month 1"
"Grade 5 added for month 2"
```
### Update grade
```
Input
let history = MyClass (named: "History")
history.addGrade (10)
history.addGrade (month: 1, grade: 7)

Console Output
"Class History created"
"Grade 10 added for month 1"
"Updated grade for month 1 from 10 to 7"
```
### Get grade
```
Input
let history = MyClass (named: "History")
history.addGrade (10)

let gradeMonthOne = history.getGrade (month: 1)
print (gradeMonthOne)

let gradeMonthTwo = history.getGrade (month: 2)
print (gradeMonthTwo)

Console Output
"Class History created"
"Grade 10 added for month 1"
"Optional (10)"
"nil"
```
### Print grades
```
Input
let history = MyClass (named: "History")
history.addGrade (10)
history.addGrade (8)

history.printGrades ()

Console Output
"Class History created"
"Grade 10 added for month 1"
"Grade 8 added for month 2"
"History:
month 1 -> 10
month 2 -> 8
"
```
