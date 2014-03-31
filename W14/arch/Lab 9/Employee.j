 ;Lab9 Employee program

.class public arch/Lab6
.super java/lang/Object

.method public Employee([Ljava/lang/String;)V
    Code:
       0: aload_0
       1: invokespecial #1                  // Method java/lang/Object."<init>":()V
       4: aload_0
       5: iload_1
       6: putfield      #2                  // Field ID:I
       9: aload_0
      10: aload_2
      11: putfield      #3                  // Field name:Ljava/lang/String;
      14: return

.method public static main([Ljava/lang/String;)V
    Code:
       0: new           #4                  // class Employee
       3: dup
       4: iconst_1
       5: ldc           #5                  // String Jessica
       7: invokespecial #6                  // Method "<init>":(ILjava/lang/String;)V
      10: astore_1
      11: iconst_1
      12: putstatic     #7                  // Field n:I
      15: return

.end method