; Jessica Morton
; morjes14

.class public examples/LeapYear
.super java/lan/Object

;
; standard initializer
.method public <init>()V
	aload_0
	invokenonvirtual java/lang/Object/<init>()V
	return
.end method

.method public static main([Ljava/lang/String;)V
       ; set limits used by this method
       .limit locals 100
       .limit stack 300

       ; the integer 2014
       sipush 2014

	   istore_1
	   iconst_0
	   
	   ; the variable "cnt"	
	   istore_2
		
	   ; the integer 1980
	   sipush 1980
	   
	   ; the variable "born"
	   istore_3
	 
	 Loop1:
	 
	   goto Loop1
	   
	 Born:
	 
	   iload_3
	   iconst_4
	   irem
	   
	 Loop2:
	   
	   ifne Loop2
	   iinc 2 1
	   iinc 3 1
	   iload_3
	   iload_1
	   if_icmple Born
	   
	   ;	the PrintStream object held in java.lang.System.out
	   getstatic java/lang/System/out Ljava/io/PrintStream;
	   
	   iload_2
	   invokevirtual java/io/PrintStream/print(I)V
	   
	   ; done
	   return
.end method
	   
	   
	   
	   

       