import std/math
import strformat

var toCalc = float(69.420) # input number as float

var precision = 17-len(fmt"{toCalc}")

proc compare(a:float, b:float, switch: int): bool =
    var ax = round(a, precision)
    var bx = round(b, precision)

    if switch == -1:
        return ax < bx
    if switch == 1:
        return ax > bx
    if switch == 0:
        return ax == bx

var step = 1.0
var i = 1.0

while true:
    i = i+step # increment by step

    let result = gamma(float(i-1)) # Γ(n) = (n-1)!

    if compare(result, float(toCalc), -1):
        i = i
    elif compare(result, float(toCalc), 1):
        i = i-step
        step = step/2
    elif compare(result, float(toCalc), 0):
        echo float(i-1)-1
        quit()
