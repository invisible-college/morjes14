; HW3 Count5

.class public examples/Count5
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
    .limit locals 2
    .limit stack 2

    0: iconst_1
    1: istore_1
    2: iload_1
    3: bipush        6
    5: if_icmpge     21
    8: getstatic java/lang/System/out Ljava/io/PrintStream;
    11: iload_1
    12: invokevirtual java/io/PrintStream/println(I)V
    15: iinc          1 1
    18: goto          2
    21: return

.end method