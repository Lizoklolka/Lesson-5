//
//  main.swift
//  Lesson 5
//
//  Created by Елизавета Разувайкина on 21.03.2021.
//

import Foundation


enum Window: String {
    case open = "открыто", close = "закрыто"
}

enum Engine: String {
    case on = "включен", off = "выключен"
}

enum Door: String {
    case open = "открыта", close = "закрыта"
    
}

enum Luke: String {
    case open = "открыт", close = "закрыт"
}

protocol Car: class {
    var mark: String {get}
    var year: Int {get}
    var km: Double {get set}
    var window: Window {get set}
    var engine: Engine {get set}
    
    func changeWindow(to: Window)
    func changeEngine(to: Engine)
}

extension Car {
    func changeWindow(to: Window) {
        window = to
    }
    
    func changeEngine(to: Engine) {
        engine = to
    }
}

class SportCar: Car, CustomStringConvertible {
    var description: String {
        return "Марка машины: \(mark), Год выпуска: \(year), Пробег: \(km), Окно: \(window.rawValue), Двигатель: \(engine.rawValue), Дверь: \(door.rawValue)"
    }
    
    let mark: String
    let year: Int
    var km: Double
    var window: Window
    var engine: Engine
    var door: Door
    
    init(mark: String, year: Int, km: Double, window: Window, engine: Engine, door: Door) {
        self.mark = mark
        self.year = year
        self.km = km
        self.window = window
        self.engine = engine
        self.door = door
    }
    
    func changeDoor(to: Door) {
        door = to
    }
}

class TrunkCar: Car, CustomStringConvertible {
    
    var description: String {
        return "Марка машины: \(mark), Год выпуска: \(year), Пробег: \(km), Окно: \(window.rawValue), Двигатель: \(engine.rawValue), Люк: \(luke.rawValue)"
    }
    
    let mark: String
    let year: Int
    var km: Double
    var window: Window
    var engine: Engine
    var luke: Luke
    
    init(mark: String, year: Int, km: Double, window: Window, engine: Engine, luke: Luke) {
        self.mark = mark
        self.year = year
        self.km = km
        self.window = window
        self.engine = engine
        self.luke = luke
    }
    
    func changeLuke(to: Luke) {
        luke = to
    }
}

var car1 = SportCar(mark: "Honda", year: 2020, km: 200, window: .close, engine: .off, door: .close)

var car2 = SportCar(mark: "Hyndai", year: 2015, km: 150, window: .open, engine: .off, door: .open)

var car3 = TrunkCar(mark: "Chevrolet", year: 2012, km: 120, window: .open, engine: .on, luke: .open)

var car4 = TrunkCar(mark: "Audi", year: 2000, km: 00, window: .close, engine: .on, luke: .open)

car1.changeDoor(to: .open)
car2.changeEngine(to: .on)
car3.changeWindow(to: .close)
car4.changeLuke(to: .close)

print ("""
\(car1)
\(car2)
\(car3)
\(car4)
""")

