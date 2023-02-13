import UIKit

// Задание выполнил Мишин Анатолий, студент ios-28
// 13.02.2023


// 1
enum GachiError: Error {
    case error400
    case error404
    case error500
}

var error400: Bool = false
var error404: Bool = false
var error500: Bool = false

do {
    if error400 {
        throw GachiError.error400
    }
    if error404 {
        throw GachiError.error404
    }
    if error500 {
        throw GachiError.error500
    }
    
} catch GachiError.error400 {
    print("You are swallower (Bad Request)")
} catch GachiError.error404 {
    print("You are fucking slave (Not found)")
} catch GachiError.error500 {
    print("You are not dungeon master (Internal Server Error)")
}


// 2

func welcomeToDeepDarkFantasies() throws {
        if error400 {
            throw GachiError.error400
        }
        if error404 {
            throw GachiError.error404
        }
        if error500 {
            throw GachiError.error500
        }
}

error404 = true

do {
    try welcomeToDeepDarkFantasies()
    
    } catch GachiError.error400 {
        print("You are swallower (Bad Request)")
    } catch GachiError.error404 {
        print("You are fucking slave (Not found)")
    } catch GachiError.error500 {
        print("You are not dungeon master (Internal Server Error)")
    }


// 3

func genericsAreTrash<T, E>(a: T, b: E) -> String {
    return T.self == E.self ? "Yes!Yes!Yes!Yes!" : "WREEEEEEE (no)"
}

print(genericsAreTrash(a: "Van Darkholm", b: "Billy Harrington"))


// 4 и 5 сделал в одном, решил поэкСПЕРМентировать, экСПЕРМменты == мои deep dark fantasies

func genericsAreTrashPreSiquell<T, E>(a: T, b: E) throws -> String {
    if T.self == E.self {
        throw GachiError.error404
    }
    return "WREEEEEEEEEE!!! (no)"
}

print(try genericsAreTrashPreSiquell(a: "Brad McGuire", b: 69))


