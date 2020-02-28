//
// THIS CODE IS MY OWN WORK, IT WAS WRITTEN WITHOUT CONSULTING A TUTOR
// OR CODE WRITTEN BY OTHER STUDENTS - Laura Neff
//
//
//
	.global main, Stop, CodeEnd
	.global DataStart, DataEnd
	.global Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q9, Q10
	.global ans_b, ans_s, ans_i, x, y, z

//******************************************************************
// DO NOT make any changes to the next 8 lines below
//******************************************************************
main:

//******************************************************************
// DO NOT make any changes to the line ABOVE
//
// Write the assembler instruction to each question after the 
// CORRESPONDING LABEL:
//                       Q1, Q2, Q3, ..... Q10
//
// I have defined the necessary variable at the v1, v2,.. labels 
// which are located at the end of the file (if you want to see them)
//******************************************************************

//******************************************************************
// Put your assembler instructions AFTER this line
//******************************************************************

//*************************************************************************
// Write the assembler instruction at label Q1 that executes this
// high level programming language statement: 
//
//      ans_b = 44;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q1:
//byte
    mov   r0, #44
    movw  r1, #:lower16:ans_b
    movt  r1, #:upper16:ans_b
    strb  r0, [r1]




//*************************************************************************
// Write the assembler instruction at label Q2 that executes this
// high level programming language statement:
//
//      ans_s = -99;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q2:

//short
   mov   r2, #-99
   movw  r3, #:lower16:ans_s
   movt  r3, #:upper16:ans_s
   strh  r2, [r3]
 





//*************************************************************************
// Write the assembler instruction at label Q3 that executes this
// high level programming language statement:
//
//      ans_i = 444;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q3:


//INT

 //mov   r4, #444
 movw  r4, #:lower16:444
 movt  r4, #:upper16:444

 movw  r5, #:lower16:ans_i
 movt  r5, #:upper16:ans_i

 str   r4, [r5]



//*************************************************************************
// Write the assembler instruction at label Q4 that executes this
// high level programming language statement:
//
//      ans_b = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q4:


//x is a byte

 movw  r6, #:lower16:x
 movt  r6, #:upper16:x
 ldrsb r7, [r6]   
 strb  r7, [r1]




//*************************************************************************
// Write the assembler instruction at label Q5 that executes this
// high level programming language statement:
//
//      ans_s = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q5:


//x is a  byte

  strh  r7, [r3]




//*************************************************************************
// Write the assembler instruction at label Q6 that executes this
// high level programming language statement:
//
//      ans_i = x;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q6:


//x is a byte

  str   r7, [r5]




//*************************************************************************
// Write the assembler instruction at label Q7 that executes this
// high level programming language statement:
//
//      ans_b = y;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q7:


//.byte y

 movw  r6, #:lower16:y
 movt  r6, #:upper16:y
 ldrsh r7, [r6]   
 strb  r7, [r1]




//*************************************************************************
// Write the assembler instruction at label Q8 that executes this
// high level programming language statement:
//
//      ans_b = z;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q8:

//.byte z

 movw  r6, #:lower16:z
 movt  r6, #:upper16:z
 ldr   r7, [r6]   
 strb  r7, [r1]



//*************************************************************************
// Write the assembler instruction at label Q9 that executes this
// high level programming language statement:
//
//      ans_s = z;  (can you explain the difference in the stored value ?)
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q9:



//.2byte z
   
 strh  r7, [r3]






//*************************************************************************
// Write the assembler instruction at label Q10 that executes this
// high level programming language statement:
//
//      ans_i = y;
//
// Do NOT forget to SKIP some space (or tab) before writing assembler code !!!
//*************************************************************************
Q10:


//.4byte y

 movw  r6, #:lower16:y
 movt  r6, #:upper16:y
 ldrsh r7, [r6]   
 str   r7, [r5]





//*************************************************************************
// DO NOT change anything below this line
//*************************************************************************
Stop:	
CodeEnd:
	nop







	.data
DataStart:

	.align  
ans_b:  .skip 1

	.align  
ans_s:  .skip 2

	.align  
ans_i:  .skip 4


	.align
x:	.byte  -13


	.align
y:	.2byte  2057		// 2^11 + 9

	.align
z:	.4byte  147463		// 2^17 + 2^14 + 7


DataEnd:
	.end

