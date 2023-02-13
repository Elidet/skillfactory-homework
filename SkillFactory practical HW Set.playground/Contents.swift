import UIKit

// Домашнее задание по модулю 13.6 Множества выполнено учащимся Мишиным Анатолием iOS-28 27.01.2023


// Задача №1

let dungeonMaster = (age: 69, sex: "male", gender: "master", name: "Иван Темный Холм")
let fuckingSlave = (age: 18, sex: "female", gender: "slave", name: "Билли Херингтон")

print(dungeonMaster.2)
print(fuckingSlave.name)

print("=========================")


// Задача №2


let countDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print(countDays)

print("=========================")

let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]


for (index, value) in months.enumerated() {
    print("В месяце \(value) \(countDays[index]) день/дней")
    
}

print("=========================")

let arrayOfTuplesMounths = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for (index, value) in arrayOfTuplesMounths.enumerated() {
    print("В месяце \(value.0) \(value.1) день/дней")
}

print("=========================")

for (index, value) in arrayOfTuplesMounths.enumerated(){
    print(arrayOfTuplesMounths[arrayOfTuplesMounths.count - (index + 1)])
}
           
print("=========================")

let daysInYear = 365
let myBirthday = "31 октября"
let dayOfMyBirthday = 365 - countDays[11] - countDays[10] //номер дня моего рождения в году
print("Дней от моего Дня Рождения до следующего года: \(365 - dayOfMyBirthday)")

print("=========================")


// Задача №3


var students = ["Anatoliy Mishin": 4, "Danila Swetz": 5, "Fucking Slave": 2, "Ivan Darkholm": 6, "Billy Harington": 4] // если что, у нас пятибальная система!!!
print("За экзамен по ООП студент Anatoliy Mishin получил \(students["Anatoliy Mishin"]!) балла")
students.updateValue(5, forKey: "Anatoliy Mishin")
students
print("После того, как Anatoliy Mishin позанимался ООП с Ivan Darkholm, то смог пересдать ООП и получить \(students["Anatoliy Mishin"]!) баллов")
if students["Anatoliy Mishin"]! >= 3 {
    print("Поздравляем с пересдачей на хорошую оценку!")
} else if students["Anatoliy Mishin"]! <= 2 {
        print("Иди чистить вилкой!")
    }

students.updateValue(3, forKey: "Steve Rambo")
students.updateValue(4, forKey: "Brad McGuire")
students

students["Fucking Slave"] = nil
students

print("В группе \(students.count) студентов")

for (student, grade) in students {
    print("Студент \(student) за экзамен по ООП получил оценку \(grade)")
}

print("Средний балл по группе составляет \((students["Anatoliy Mishin"]! + students["Danila Swetz"]! + students["Ivan Darkholm"]! + students["Billy Harington"]! + students["Steve Rambo"]! + students["Brad McGuire"]!) / students.count)")
        


