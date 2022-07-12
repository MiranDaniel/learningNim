proc fac*(i: int): int = 
    if i > 1:
        fac(i-1)*i
    else:
        1
    