import UIKit

func fibonacci(_ until:Int ) {
    let arrayOfInt = [0,1,2,4]
    arrayOfInt.map({
        (int: Int) -> Int in return int * 2;
    })
}

fibonacci(50);
