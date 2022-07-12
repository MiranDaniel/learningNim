import std/strformat

proc gen*(lim: int) = 
    for i in 1 .. lim:
        if i mod 15 == 0:
            echo("FizzBuzz")
        elif i mod 3 == 0:
            echo("Fizz")
        elif i mod 5 == 0:
            echo("Buzz")
        else:
            echo(i)
    echo(fmt"Generated FizzBuzz from 1 to {lim} :)")