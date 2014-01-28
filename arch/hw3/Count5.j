; Jessica Morton
; morjes14

; TODO: Fill in your code here for Arch HW 3, Problem 2 (print numbers from 1 to 5)

.class public examples/Count5
.super java/lan/Object

; standard initializer
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
       ; set limits used by this method
       .limit locals 4
       .limit stack 3

       getstatic java/lang/System/out Ljava/io/PrintStream;
       astore_1

       ; the integer 10 - the counter used in the loop
       bipush 10
       istore_2

     Loop:

       ; compute 10 - <local variable 2> ...
       bipush 4
       iload_2
       isub
       invokestatic java/lang/String/valueOf(I)Ljava/lang/String;
       astore_3

       aload_1    
       aload_3
       invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V

       ; decrement the counter and loop
       iinc 2 -1
       iload_2
       ifne Loop

       ; done
       return

.end method
