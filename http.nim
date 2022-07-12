import std/httpclient
import std/strformat

proc getKeys*() =
    var client = newHttpClient()
    var r = client.get("https://mirandaniel.com/keys")
    echo("Got your keys!")


    echo(fmt"Status code is {r.status}")
    echo(fmt"Length of key is {r.body.len} characters")
    echo(fmt"Version used is {r.version}")

    var server = r.headers["server"]
    var via = r.headers["via"]
    echo(fmt"Server used is {server} via {via}")

proc downloadImage*() =
    var client = newHttpClient()
    for i in 0..5:
        echo(fmt"Downloading image ./build/{250+250*i}.png")
        var r = client.get(fmt"https://picsum.photos/{250+250*i}")
        write_file(fmt"build/{250+250*i}.png", r.body)
