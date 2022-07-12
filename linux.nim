import std/strformat
import std/strutils
import std/[streams, osproc]

proc size*() =
    var cmd = startProcess("du", args = ["-sh", "build/"], options = {poUsePath})
    discard cmd.waitForExit()
    let sizeOfBuild = cmd.outputstream.readAll.split("\t")[0]
    cmd.close()

    cmd = startProcess("du", args = ["-sh", "."], options = {poUsePath})
    discard cmd.waitForExit()
    let sizeOfCode = cmd.outputstream.readAll.split("\t")[0]
    cmd.close()

    echo(fmt"Size of build is {sizeOfBuild}")
    echo(fmt"Size of code+build is {sizeOfCode}")
