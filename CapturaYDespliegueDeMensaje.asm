; Materia: Lenguajes de Interfaz
; Nombre: Alexander Gonzalez Can
; Horario: 10 - 11
; Docente: Jose Luis Medina Jimenez
; Descripcion: Esta practica nos muestra lo que es capturar una cadean de texto que se ingresa y como se imprime

INCLUDE Irvine32.inc

.data
mensaje BYTE "Escribe tu nombre: ",0 ; se declara una cadena de texto
nombre Byte 15 DUP(0)   ; se reservan 15 bytes para el nombre a escribir

.code 
main PROC
    mov edx, OFFSET mensaje ; se guardara en edx  la direccion de memoria donde comenzara el texto 
    call WriteString ; muestra el mensaje guardado en edx

    mov edx, OFFSET nombre ;  se guardara la direccion de memoria donde se guardara el nombre escrito
    mov ecx, SIZEOF nombre ; se guardara el tamaño de la variable nombre  que es de 15 bytes para que el bufer no se desborde
   
    call ReadString ; lee la cadena que se ingreso y la almacena en la variable nombre
    call Crlf
   
    mov edx, OFFSET nombre ; aqui se volvera a guardar la direccion de nombre para que WriteString sepa donde encontrar el nombre escrito
    call WriteString ; muestra en pantalla el nombre que se almaceno en la variable nombre
    call Crlf
    exit

main ENDP
END main