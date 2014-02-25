.class public arch/Lab6
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
.limit stack 3
.limit locals 3
                ; #0 is reserved
                ; #1 is loop counter i
                ; #2 is number of iterations initially 5
  iconst_0
  istore_1      ; i = 0
  iconst_5
  istore_2
Loop:
  getstatic java/lang/System/out Ljava/io/PrintStream;
  iload_1
  iload_1
  imul
  invokevirtual java/io/PrintStream/println(I)V
  iload_1
  iconst_1       
  iadd     
  istore_1
  iload_1
  iload_2
  if_icmplt     Loop  

  return
.end method