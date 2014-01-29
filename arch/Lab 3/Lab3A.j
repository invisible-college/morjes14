;Lab3A 

.class public examples/Lab3A 
.super java/lang/Object

.method public <init>()V
  aload_0
  invokenonvirtual java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava/lang/String;)V
  .limit locals 3
  .limit stack 3

  sipush 240
  istore_1
  sipush 170
  istore_2

  getstatic java/lang/System/out Ljava/io/PrintStream;

  iload_1
  iload_2
  iand

  invokevirtual java/io/PrintStream/println(I)V

  getstatic java/lang/System/out Ljava/io/PrintStream;

  iload_1
  iload_2
  ior

  invokevirtual java/io/PrintStream/println(I)V

  print:
  getstatic java/lang/System/out Ljava/io/PrintStream;

  iload_1
  iload_2
  ixor

  invokevirtual  java/io/PrintStream/println(I)V

  return

.end method