import std/md5
import std/sha1
import std/base64
import std/strformat
import std/strutils

proc lipsumOps*() =
    var lipsum = """
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices sed nunc non condimentum. 
    Mauris dictum nisi sed dictum aliquet. Sed ex odio, placerat vel felis ac, vestibulum posuere sem. 
    Mauris tempor tincidunt purus, eu placerat tortor venenatis et. 
    Ut in risus eget orci volutpat vestibulum vitae eget velit. Ut dictum commodo ligula id lacinia. 
    Aliquam congue mollis massa ac pellentesque. 
    """

    var lipsumSha = parseSecureHash("38A4E935494DFBE538C5415B0FF10E2327B31CA9")

    echo(fmt"MD5: {getMD5(lipsum)}")
    echo(fmt"SHA1: {secureHash(lipsum)}")
    echo(fmt"Base64: {encode(lipsum)}")

    if lipsumSha == secureHash(lipsum):
        echo("Lipsum matches lipsumSha")
    else:
        echo("Lipsum does not match lipsumSha")

    var words = lipsum.split(" ").len
    echo(fmt"""Lipsum has {words} words""")
    echo(fmt"""Lipsum has {lipsum.len} characters""")
