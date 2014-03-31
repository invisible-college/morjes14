 ;Lab4 if program

.class public arch/Lab4_if
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
    .limit locals 2
    .limit stack 3

    0: iconst_5
    1: istore_1
    2: iload_1
    3: iconst_2
    4: irem
    5: ifne          15
    8: iload_1
    9: iconst_2
   10: idiv
   11: istore_1
   12: goto          18
   15: iinc          1 -1
   18: getstatic java/lang/System/out Ljava/io/PrintStream;
   21: iload_1
   22: invokevirtual java/io/PrintStream/println(I)V
   25: return

.end method