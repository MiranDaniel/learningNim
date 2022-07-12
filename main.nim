import fizzbuzz # basic fizzbuzz
import myMath # basic math functions
import coinFlip # coin flip speed test
import linux # linux API
import http # http requests :)
import lipsum # lorem ipsum...
import std/random
import std/strformat
import std/times

randomize() # std/random init

fizzbuzz.gen(rand(20..50)) # fizzbuzz from 1 to random up to 50


# calculates 7 random factorials from 0 to 10
var generated: seq[int]
while true:
    let inp = rand(10)
    if not generated.contains(inp):
        echo(fmt"Factorial of {inp} is {myMath.fac(inp)}")
        generated.add(inp)
    if len(generated) >= 7:
        break

let time = cpuTime()
var attempts = coinFlip.coinFlip(20)
echo(fmt"It took {cpuTime() - time} seconds and {attempts} attempts to flip 20 heads in a row")

let randomness = coinFlip.randomness(10_000_000)
echo(fmt"Randomly adding and subtracting 1 10 million times produced on average {randomness}")

http.getKeys() # gets my PGP keys using HTTP GET
linux.size() # prints directory sizes
http.downloadImage()

lipsum.lipsumOps()
