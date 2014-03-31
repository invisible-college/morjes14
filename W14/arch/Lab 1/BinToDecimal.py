
def BinToDecimal(binStr):
    if len(binStr) != 32 and int(binStr[0]) == 1:
        num = 32 - len(binStr)
        newStr = ("1" * num) + binStr
        print newStr
    elif len(binStr) != 32 and int(binStr[0]) == 0:
        num = 32 - len(binStr)
        newStr = ("0" * num) + binStr
        print newStr
    else:
        newStr = binStr
    
    decimal = 0
    power = 0
    for i in newStr[ : : -1]:
        decimal += int(i) * (2**power)
        power += 1

    if int(binStr[0]) == 1:
        decimal = decimal - (2**power)
        return decimal
    else:
        return decimal
                       
print BinToDecimal("100")

