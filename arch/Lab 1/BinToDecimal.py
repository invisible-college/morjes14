
def BinToDecimal(binStr):
    if len(binStr) != 32:
        num = 32 - len(binStr)
        newStr = ("0" * num) + binStr
    else:
        newStr = binStr
    
    decimal = 0
    power = 0
    for i in newStr[ : : -1 ]:
        decimal += int(i) * (2**power)
        power += 1
    return decimal
        
print BinToDecimal("0101")

