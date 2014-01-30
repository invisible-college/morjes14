;Jessica Morton
;morjes14

.class public examples/LeapYear
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
    .limit locals 4
    .limit stack 5

	0: sipush        2014
    3: istore_1
    4: iconst_0
    5: istore_2
    6: sipush        1980
    9: istore_3
    10: iload_3
    11: iload_1
    12: if_icmpgt     30
    15: iload_3
    16: iconst_4
    17: irem
    18: ifne          24
    21: iinc          2 1
    24: iinc          3 1
    27: goto          10
    30: getstatic java/lang/System/out Ljava/io/PrintStream;

    33: iload_2
    34: invokevirtual java/io/PrintStream/println(I)V
    37: return

.end method