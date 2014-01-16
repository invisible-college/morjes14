 
def jvm(expr):
    tokens = expr.split()
    stack = []

    for t in tokens:
        if t == '+':
            sum = int(stack.pop()) + int(stack.pop()) 
            stack.append(sum)  
        elif t == '-':
            sum = int(stack.pop()) - int(stack.pop()) 
            stack.append(sum)  
        elif t == '*':
            sum = int(stack.pop()) * int(stack.pop()) 
            stack.append(sum)  
        elif t == '/':
            sum = int(stack.pop()) / int(stack.pop()) 
            stack.append(sum)  
        else:
            stack.append(t)
          
    return stack
    
print jvm("5 3 /")