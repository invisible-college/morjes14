; Lab2A Add two integers

.class public examples/Lab2B
.super java/lang/Object

.method public <init>()V
    0: aload_0
    1: invokenonvirtual java/lang/Object/<init>()V
    4: return
.end method

.method public static main([Ljava/lang/String;)V
	.limit locals 1
	.limit stack 2
    0: getstatic java/lang/System/out Ljava/io/PrintStream;
    3: iconst_4
    4: invokevirtual java/io/PrintStream/println(I)V
    7: return
.end method