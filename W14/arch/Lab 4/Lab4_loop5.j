;Lab4 loop5

.class public arch/Lab4_loop5
.super java/lang/Object

.method public <init>()V
      0: aload_0
      1: invokenonvirtual java/lang/Object/<init>()V
      4: return
.end method

.method public static main([Ljava/lang/String;)V
      .limit locals 3
      .limit stack 5

       0: iconst_0
       1: istore_1
       2: iconst_0
       3: istore_2
       4: iload_2
       5: iconst_5
       6: if_icmpge     19
       9: iload_1
      10: iload_2
      11: iadd
      12: istore_1
      13: iinc          2 1
      16: goto          4
      19: getstatic java/lang/System/out Ljava/io/PrintStream;
      22: iload_1
      23: invokevirtual java/io/PrintStream/println(I)V
      26: return

.end method