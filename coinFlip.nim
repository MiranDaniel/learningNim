import std/random

proc coinFlip*(lim: int): int = 
    var inARow = 0
    var attempts = 0
    while inARow < lim:
        if sample([true, false]):
            inARow += 1
        else:
            attempts += inARow
            inARow = 0
    attempts += lim
    attempts

proc randomness*(lim: int): float = 
    var i = 0;
    for _ in 0 .. lim:
        i += rand(-1..1)
    i/lim
