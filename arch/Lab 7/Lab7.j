 ;Lab7 fibonacci program

.class public arch/Lab6
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
	.limit locals 3
	.limit stack 10

     0: bipush        10
     2: newarray       int
     4: astore_1
     5: aload_1
     6: iconst_0
     7: iconst_0
     8: iastore
	 9: aload_1
    10: iconst_1
    11: iconst_1
    12: iastore
    13: iconst_2
    14: istore_2
    15: iload_2
    16: bipush        10
    18: if_icmpge     41
    21: aload_1
    22: iload_2
    23: aload_1
    24: iload_2
    25: iconst_1
    26: isub
    27: iaload
    28: aload_1
    29: iload_2
    30: iconst_2
    31: isub
    32: iaload
    33: iadd
    34: iastore
    35: iinc          2 1
    38: goto          15
    41: getstatic java/lang/System/out Ljava/io/PrintStream;
    44: aload_1
    45: invokestatic java/util/Arrays/toString([I)Ljava/lang/String;
    48: invokevirtual java/io/PrintStream/print(Ljava/lang/String;)V
    51: return

.end method