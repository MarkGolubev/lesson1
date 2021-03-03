//
//  main.swift
//  lesson1
//
//  Created by Марк Голубев on 02.03.2021.
//

import Foundation

//1. Решить квадратное уравнение.
//a·x2+b·x+c=0
//2x^2+6x+1=0 например такое
//D=b2−4·a·c решаем с помошью нахождения дискриминанта
//х=(-b+-sqrt(d))/2a

func dis(_ a: Double, _ b: Double, _ c: Double) -> Double {
    return (2 * b - 4 * a * c).squareRoot()
}

let (a,b,c) = (2.0, 6.0, 1.0)
let d = dis(a, b, c)
print("Дискриминант уравнения равен \(d)")
let x1 = (-b+d)/(2 * a)
let x2 = (-b-d)/(2 * a)
print("x^1 равен: \(x1)\nx^1 равен: \(x2)")
//Не понял пока, почему у переменной типа int нельзя найти корень, или это делается как то по другому?

//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

// a) находим гипотенузу по формуле gipotenuza^2 = katet1^2 + katet2^2
func gip(_ katet1: Double, _ katet2: Double) -> Double {
    return (katet1 * katet1 + katet2 * katet2).squareRoot()
}

let (katet1, katet2) = (4.0, 3.0)
let gipotenuza = gip(katet1, katet2)
print("Гипотенуза треугольника равна: \(gipotenuza)")

// b) находим периметр по формуле p = gipotenuza + katet1 + katet2
let p = gipotenuza + katet1 + katet2
print("Периметр треугольника равен: \(p)")

// с) находим площадь треугольника по формуле S = katet1 * katet2 / 2
let s = katet1 * katet2 / 2
print("Площадь треугольника равна: \(s)")

