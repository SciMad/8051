ORG 00H
MOV R1, 00H

main:
mov R7, #002H

muxing:
MOV R6, #002
repeat:
MOV A, R1
MOV P3, A
MOV P1, #0F9H

ADD A, #008H
MOV P3, A
MOV P1, #0A4H

ADD A, #008H
MOV P3, A
MOV P1, #0B0H

DJNZ R6, repeat
DJNZ R7, muxing

MOV A, R1
ADD A, #008H
MOV R1, A
SJMP main

end
