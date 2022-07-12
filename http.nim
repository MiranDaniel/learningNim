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
