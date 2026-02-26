func calculatePerimeter(width: Double, height: Double) {
    let perimeter = 2 * (width + height)
    print("A rectangle with a length of \(height) and a width of \(width) has a perimeter of \(perimeter).")
}

func estimateReadingTime(Title: String, pageCount: Int) {
    print("\(Title) has \(pageCount) pages, so it will take about \(pageCount / 2) minutes to read.")
}

func coordsToIndex(x: Int, y: Int, arrayWidth: Int) -> Int {
    if x > arrayWidth {
        print("ERROR: X coordinate is too large for the array width.")
        return 0
    }
    let index = ((y-1) * arrayWidth) + x
    return index
}

func IndexToCoords(index: Int, arrayWidth: Int) -> (x: Int, y: Int) {
    let x = index % arrayWidth
    let y = (index - x) / arrayWidth + 1
    return (x, y)
}

//ASCII sorted by brightness
//`.-':_,^=;><+!rc*/z?sLTv)J7(|Fi{C}fI31tlu[neoZ5Yxjya]2ESwqkP6h9d4VpOGbUAKXHm8RD#$Bg0MNWQ%&@

func paintSquare(x: Int, y: Int, arrayWidth: Int, arrayHeight: Int) {
var currentLocation = 0
let boxWidth = 8
let boxHeight = 4
let placeToPaint = coordsToIndex(x: x, y: y, arrayWidth: arrayWidth)
print("The index to paint is \(placeToPaint).")
if (x > arrayWidth) || (y > arrayHeight) {
    print("ERROR: Coordinates are out of bounds for the array.")
    return
}
for row in 1...arrayHeight {    
    for index in 1...arrayWidth {
        currentLocation += 1
    let dx = abs(index - x)
    let dy = abs(row - y)

    //     if currentLocation == placeToPaint {
    //         print("@", terminator: "")
    //     }  else if (row+2 == y || row-2 == y || row +1 == y || row-1 == y || row == y) && (index+2 == x || index-2 == x || index+1 == x || index-1 == x || index == x) {
    //         print("!", terminator: "")
    //      } else if (row+1 == y || row-1 == y || row == y) && (index+1 == x || index-1 == x || index == x) {
    //         print("+", terminator: "")
    //         }
    //     else {
    //     print("`", terminator: "")
    // }
  if currentLocation == placeToPaint {
        print("@", terminator: "")
    }
    if (dx <= boxWidth) && (dy <= boxHeight) && !((dx < boxWidth/2) && (dy < boxHeight/2)) {
    print("!", terminator: "")
    }
    if (dx < boxWidth/2) && (dy < boxHeight/2) {
    print("u", terminator: "")
    }
    if dx > boxWidth || dy > boxHeight {
    print("`", terminator: "")
  
}
    }
print("\n")

}
}


paintSquare(x: 25, y: 20, arrayWidth: 100, arrayHeight: 50)
