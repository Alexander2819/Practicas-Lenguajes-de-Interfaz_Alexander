; Nombre: Alexander Gonzalez Can
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez

; Descripcion: Este programa usa un ciclo el cual se ira decrementando con loop hasta llegar a 0

INCLUDE Irvine32.inc
.data
.code
main PROC
    mov ecx, 5 ; se le asignara 5 a la variable ecx para indicar cuantas veces se repetira el ciclo
ciclo: ; indica el incio del ciclo

    mov eax, ecx ; se copia el valor de ecx al registro eax
  
    call WriteDec ; imprimira el valor almacenado en eax
    call Crlf ; salto de linea 

    loop ciclo ; el loop decrementara a ecx en 1 y se repetira hasta que ecx no sea 0
    exit
main ENDP
END mainP