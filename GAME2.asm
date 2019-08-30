COD SEGMENT
	ASSUME CS:COD, DS:COD, ES:COD, SS:COD
	ORG 100h
	
	;MACROS ==============================================================================
	PRINT_STRING MACRO MSG 
		LEA DX, [MSG] 
		MOV AH, 09h 
		INT 21h 
	ENDM
	
	COLOCA_CURSOR00 MACRO 
		MOV DX,0000H
		CALL MOVE_CURSOR
	ENDM
	
	VERIFICA_MORTE MACRO LABLE
		CMP DH,12H
		JE LABLE
	ENDM
	
	VERIFICA_SKIP MACRO CNT
		mov ah,01h 
		int 16h		
		cmp al,SPACE
		jne CNT
		jmp INSTRUCTIONS
	ENDM
	
	;FIM MACROS ========================================================================
	
	;ROTINA PRINCIPAL - MAIN ===========================================================
	MAIN PROC 
	
	INICIO:
		CALL ZERA_REGISTRADORES
		MOV BX,0500H
		MOV CX,0000H
		MOV [BX],CX 
		CALL SALVA_SCORE 
		CALL ZERA_REGISTRADORES
		MOV AH,00H
		MOV AL,0Eh ; modo grafico
		INT 10h ; 80x25, 16 cores, 8 páginas
		;IMPRIME MENU ====================================================================
		
		PRINT_STRING MENU_1
		PRINT_STRING MENU_2
		PRINT_STRING MENU_3
		PRINT_STRING MENU_4
		PRINT_STRING MENU_5
		PRINT_STRING MENU_6
		PRINT_STRING MENU_7
		PRINT_STRING MENU_8
		PRINT_STRING MENU_9
		PRINT_STRING MENU_10
		PRINT_STRING MENU_11
		PRINT_STRING MENU_12
		PRINT_STRING MENU_13
		PRINT_STRING MENU_14
		PRINT_STRING MENU_15
		PRINT_STRING MENU_16
		PRINT_STRING MENU_17
		PRINT_STRING MENU_18
		PRINT_STRING MENU_19
		PRINT_STRING MENU_20
		PRINT_STRING MENU_21
		PRINT_STRING MENU_22
		PRINT_STRING MENU_23
		PRINT_STRING MENU_24
		PRINT_STRING MENU_25
		
		;FIM DO IMPRIME MENU ================================================================
		CALL ZERA_REGISTRADORES
	LER_MENU:
		mov ah,00h 
		int 16h
		cmp al,SPACE 
		je Jmp_Story 
		cmp al,_ESC
		je Jmp_Return 
		jmp LER_MENU
	Jmp_Story:
		jmp STORY
	Jmp_Return:
		jmp return
			
	STORY:
		;IMPRIME A TELA DE HISTÓRIA =======================================================================
		
		PRINT_STRING STORY_1
		PRINT_STRING STORY_2
		PRINT_STRING STORY_3
		PRINT_STRING STORY_4
		PRINT_STRING STORY_5
		PRINT_STRING STORY_6
		PRINT_STRING STORY_7
		PRINT_STRING STORY_8
		PRINT_STRING STORY_9
		PRINT_STRING STORY_10
		PRINT_STRING STORY_11
		PRINT_STRING STORY_12
		PRINT_STRING STORY_13
		PRINT_STRING STORY_14
		PRINT_STRING STORY_15
		PRINT_STRING STORY_16
		PRINT_STRING STORY_17
		PRINT_STRING STORY_18
		PRINT_STRING STORY_19
		PRINT_STRING STORY_20
		PRINT_STRING STORY_21
		PRINT_STRING STORY_22
		PRINT_STRING STORY_23
		PRINT_STRING STORY_24
		PRINT_STRING STORY_25
		
	MarchaImperial: ;MÚSICA DE BACKGROUND DA TELA STORY
	
		CALL _G1T
		CALL PAUSA1T
		VERIFICA_SKIP continua
		
		Continua:
		CALL _G1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua2
		Continua2:
		CALL _G1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua3
		Continua3:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua4
		Continua4:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua5
		Continua5:
		CALL _G1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua6
		Continua6:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua7
		Continua7:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua8
		Continua8:
		CALL _G2T
		CALL PAUSA2T
		
		VERIFICA_SKIP continua9
		Continua9:
		CALL _Dh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua10
		Continua10:
		CALL _Dh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua11
		Continua11:
		CALL _Dh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua12
		Continua12:
		CALL _Dsh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua13
		Continua13:
		CALL _B05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua14
		Continua14:
		CALL _Fs1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua15
		Continua15:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua16
		Continua16:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua17
		Continua17:
		CALL _G2T
		CALL PAUSA2T
		
		VERIFICA_SKIP continua18
		Continua18:
		CALL _Gh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua19
		Continua19:
		CALL _G05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua20
		Continua20:
		CALL _G05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua21
		Continua21:
		CALL _Gh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua22
		Continua22:
		CALL _Fsh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua23
		Continua23:
		CALL _Fh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua24
		Continua24:
		CALL _Eh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua25
		Continua25:
		CALL _Dsh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua26
		Continua26:
		CALL _Eh05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua27
		Continua27:
		CALL _Gs05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua28
		Continua28:
		CALL _Csh1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua29
		Continua29:
		CALL _Ch05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua30
		Continua30:
		CALL _B05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua31
		Continua31:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua32
		Continua32:
		CALL _A05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua33
		Continua33:
		CALL _As05T
		CALL PAUSA05T
		VERIFICA_SKIP continua34
		Continua34:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua35
		Continua35:
		CALL _G1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua36
		Continua36:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua37
		Continua37:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua38
		Continua38:
		CALL _G1T
		CALL PAUSA1T
		
		VERIFICA_SKIP continua39
		Continua39:
		CALL _Ds05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua40
		Continua40:
		CALL _As05T
		CALL PAUSA05T
		
		VERIFICA_SKIP continua41
		Continua41:
		CALL _G2T
		CALL PAUSA2T
		
		;FIM DO IMPRIME TELA DE HISTÓRIA ======================================================================
		mov al,00h
		mov ah,01h 
		int 16h		
		cmp al,SPACE
		JE INSTRUCTIONS
		Jmp MarchaImperial

		
	INSTRUCTIONS:
		mov ah,0ch
		mov al,0h
		int 21h
		;IMPRIME A TELA DE INSTRUCTIONS ==========================================================================
		
		PRINT_STRING INSTRUC_1
		PRINT_STRING INSTRUC_2
		PRINT_STRING INSTRUC_3
		PRINT_STRING INSTRUC_4
		PRINT_STRING INSTRUC_5
		PRINT_STRING INSTRUC_6
		PRINT_STRING INSTRUC_7
		PRINT_STRING INSTRUC_8
		PRINT_STRING INSTRUC_9
		PRINT_STRING INSTRUC_10
		PRINT_STRING INSTRUC_11
		PRINT_STRING INSTRUC_12
		PRINT_STRING INSTRUC_13
		PRINT_STRING INSTRUC_14
		PRINT_STRING INSTRUC_15
		PRINT_STRING INSTRUC_16
		PRINT_STRING INSTRUC_17
		PRINT_STRING INSTRUC_18
		PRINT_STRING INSTRUC_19
		PRINT_STRING INSTRUC_20
		PRINT_STRING INSTRUC_21
		PRINT_STRING INSTRUC_22
		PRINT_STRING INSTRUC_23
		PRINT_STRING INSTRUC_24
		PRINT_STRING INSTRUC_25
		
		;FIM DO IMPRIME TELA DE INSTRUCTIONS ===============================================================
		mov al,00h
		LEITURA_INSTRUCTIONS:
		mov ah,08h 
		int 21h
		cmp al,SPACE 
		jne LEITURA_INSTRUCTIONS
		jmp GAME
		
	GAME:
		
		CALL LIMPANDO_TELA
		CALL LIMPANDO_TELA
		COLOCA_CURSOR00
		CALL LIMPANDO_TELA
		CALL ZERA_REGISTRADORES
		COLOCA_CURSOR00
		
		
		;PRINTA TELA GAME ==========================================================================================
		PRINT_STRING GAME_1
		PRINT_STRING GAME_2
		PRINT_STRING GAME_3
		PRINT_STRING GAME_4
		PRINT_STRING GAME_5
		PRINT_STRING GAME_6
		PRINT_STRING GAME_7
		PRINT_STRING GAME_8
		PRINT_STRING GAME_9
		PRINT_STRING GAME_10
		PRINT_STRING GAME_11
		PRINT_STRING GAME_12
		PRINT_STRING GAME_13
		PRINT_STRING GAME_14
		PRINT_STRING GAME_15
		PRINT_STRING GAME_16
		PRINT_STRING GAME_17
		PRINT_STRING GAME_18
		PRINT_STRING GAME_19
		PRINT_STRING GAME_20
		;FIM PRINTA TELA GAME =====================================================================================
		
		
		MOV DH,12h ; 
		MOV DL,28h ; 
		CALL MOVE_CURSOR
		CALL NAVE
		
		
		MOV DH,00H ; 
		MOV DL,22H ; 
		CALL MOVE_CURSOR
		
		CALL SPAWN_ENIMIGOS
		
		
		MOV DH,12h ; 
		MOV DL,28h ; 
		CALL MOVE_CURSOR
		
	JOGO:
		
		mov al,00h
		;LE PROXIMO CHAR
		mov ah,00h
		int 16h
		cmp al,_ESC 
		je Jmp_Quit1
		cmp al,41h ;'A'
		je Jmp_Move_Esquerda
		cmp al,61h ;'a'
		je Jmp_Move_Esquerda
		cmp al,44h ;'D'
		je Jmp_Move_Direita
		cmp al,64h ;'d'
		je Jmp_Move_Direita
		cmp al,4Bh ;'K'
		je Jmp_Atira
		cmp al,6Bh ;'k'
		je Jmp_Atira
		jmp JOGO 
		;FIM DA LEITURA DO CHAR
	
	;LABELS PRA EVITAR JUMP OUT OF RANGE
	Jmp_Quit1:
		jmp INICIO
	Jmp_Move_Esquerda:
		jmp MOVE_ESQUERDA
	Jmp_Move_Direita:
		jmp MOVE_DIREITA
	Jmp_Atira:
		jmp ATIRA
		
	MOVE_ESQUERDA:
		;lable quando aperta A
		CMP DL,34D
		JE VOLTA_GAME 
		PUSH DX 
		CALL INC_SCORE 
		CALL RECUPERA_SCORE 
		MOV DH,CL ;
		MOV DL,22H ;
		VERIFICA_MORTE JMP_MORTE 
		CALL MOVE_CURSOR
		CALL SPAWN_ENIMIGOS
		MOV DH,12H 
		MOV DL,00H 
		CALL MOVE_CURSOR
		CALL APAGA_LINHA
		POP DX
		DEC DL
		CALL MOVE_CURSOR
		CALL NAVE
		JMP VOLTA_GAME
		
	MOVE_DIREITA:
		;lable quando aperta D
		CMP DL,44D
		JE VOLTA_GAME ;
		PUSH DX ;
		CALL INC_SCORE ;
		CALL RECUPERA_SCORE 
		MOV DH,CL ;
		MOV DL,22H ;
		VERIFICA_MORTE JMP_MORTE 
		CALL MOVE_CURSOR
		CALL SPAWN_ENIMIGOS
		MOV DH,12H 
		MOV DL,00H 
		CALL MOVE_CURSOR
		CALL APAGA_LINHA
		POP DX
		INC DL
		CALL MOVE_CURSOR
		CALL NAVE
		JMP VOLTA_GAME
		
	VOLTA_GAME:
		JMP JOGO
		
	JMP_MORTE:
		JMP GAME_OVER
		
	ATIRA:
		;lable quando aperta K
		MOV DH,12H
		PUSH DX 
		MOV CX,0000H
		PUSH AX 
		PUSH BX
		PUSH CX
		CALL _G05T 
		POP CX 
		POP BX
		POP AX
		BULLET_TRAVEL:
			PUSH CX
			DEC DH 
			CALL MOVE_CURSOR
			CALL PRINT_TIRO
			CALL DELAY_MAIOR
			CALL PRINT_ESPACO
			POP CX
			INC CL 
			CMP CL,19D
			JNE BULLET_TRAVEL
		
		POP DX 
		JMP JOGO
			
	
	GAME_OVER:
		
		COLOCA_CURSOR00
		CALL LIMPANDO_TELA
		COLOCA_CURSOR00
	;IMPRIME A TELA DE GAME OVER ==========================================================================
		
		PRINT_STRING DEAD_1
		PRINT_STRING DEAD_2
		PRINT_STRING DEAD_3
		PRINT_STRING DEAD_4
		PRINT_STRING DEAD_5
		PRINT_STRING DEAD_6
		PRINT_STRING DEAD_7
		PRINT_STRING DEAD_8
		PRINT_STRING DEAD_9
		PRINT_STRING DEAD_10
		PRINT_STRING DEAD_11
		PRINT_STRING DEAD_12
		PRINT_STRING DEAD_13
		PRINT_STRING DEAD_14
		PRINT_STRING DEAD_15
		PRINT_STRING DEAD_16
		PRINT_STRING DEAD_17
		PRINT_STRING DEAD_18
		PRINT_STRING DEAD_19
		PRINT_STRING DEAD_20
		PRINT_STRING DEAD_21
		PRINT_STRING DEAD_22
		
		CALL ZERA_REGISTRADORES
		CALL IMPRIME_SCORE
		
		;FIM DO IMPRIME TELA DE GAME OVER ===============================================================
		CALL ZERA_REGISTRADORES
		mov al,00h
	LER_GAME_OVER:
		mov ah,00h ;
		int 16h
		cmp al,SPACE ;
		je JMP_INICIO
		cmp al,_ESC
		je Jmp_FIM
		jmp LER_MENU
		
	JMP_INICIO:
		jmp INICIO
	Jmp_FIM:
		jmp return
	
	;ROTINAS: 
	ROTINAS:
		jmp INICIO
		
		;ROTINA PARA LIMPAR A TELA =====================================================
		LIMPANDO_TELA:
			MOV AL,00H
			_LOOP:
				INC AL
				LEA DX,LIMPA_TELA 
				MOV AH,09h 
				INT 21h 
				CMP AL,21D
				JNE _LOOP
			RET
		
		APAGA_LINHA:
			LEA DX,LIMPA_LINHA 
			MOV AH,09h 
			INT 21h 
			RET
		
		MOVE_CURSOR:
			MOV AH,02h 
			MOV BH,00h ; 
			INT 10h
			RET
			
		;ROTINA PARA IMPRIMIR NAVE =====================================================
		NAVE:
			MOV BL,05h 
			MOV AL,'A'
			MOV AH,09h ;
			MOV CX,1h 
			INT 10h
			RET
			
		PRINT_ESPACO:
			MOV BL,05h ;
			MOV AL,' '; 
			MOV AH,09h ;
			MOV CX,1h ;
			INT 10h
			RET
			
		PRINT_TIRO:
			MOV BL,01h 
			MOV AL,'|'
			MOV AH,09h ;
			MOV CX,1h ; 
			INT 10h
			RET
			
		SPAWN_ENIMIGOS:
			MOV BL,04h ;
			MOV AL,'X'; 
			MOV AH,09h ;
			PUSH DX
			CALL RANDOM
			MOV CX,DX 
			POP DX
			INT 10h
			RET
			
		;ROTINA DE DELAY ==============================================================
		DELAY_MENOR:
			MOV BX,01H
			DURA1:
				MOV CX,7FFFh
			DURAC1:
				DEC CX
				JNE DURAC1
				DEC BX
				JNE DURA1
				RET
		
		DELAY_MAIOR:
			MOV BX,02H
			DURA2:
				MOV CX,0FFFFh
			DURAC2:
				DEC CX
				JNE DURAC2
				DEC BX
				JNE DURA2
				RET
				
		;ROTINA PARA ARMAZENAR PONTUAÇÃO NA MEMORIA
		SALVA_SCORE:
			MOV BX,500H
			MOV [BX],CX 
			MOV BX,0000H
			MOV CX,0000H
			RET
		
		;ROTINA PARA RECUPERAR PONTUAÇÃO DA MEMORIA
		RECUPERA_SCORE:
			PUSH BX
			MOV BX,500H
			MOV CX,[BX] ;
			MOV BX,0000H
			POP BX
			RET
		
		INC_SCORE:
			MOV BX,500H
			MOV CX,[BX] 
			INC CX
			MOV [BX],CX 
			MOV BX,0000H
			MOV CX,0000H
			RET
		
		IMPRIME_SCORE:
			;imprime score salvo em cx
			CALL ZERA_REGISTRADORES
			CALL RECUPERA_SCORE
			CALL RANDOM256 
			ADD CX,DX
			PUSH CX
			CALL ZERA_REGISTRADORES
			POP CX
			MOV AX,CX
			MOV CX,1000D
			DIV CX
			PUSH DX
			MOV DL,AL
			ADD DL,30H
			MOV AH,02H
			INT 21H
			CALL ZERA_REGISTRADORES
			POP DX
			MOV AX,DX
			MOV DX,0000H
			MOV CX,100D
			DIV CX
			PUSH DX
			MOV DL,AL
			ADD DL,30H
			MOV AH,02H
			INT 21H
			CALL ZERA_REGISTRADORES
			POP DX
			MOV AX,DX
			MOV DX,0000H
			MOV CX,10D
			DIV CX
			PUSH DX
			MOV DL,AL
			ADD DL,30H
			MOV AH,02H
			INT 21H
			CALL ZERA_REGISTRADORES
			POP DX
			ADD DL,30H
			MOV AH,02H
			INT 21H
			CALL ZERA_REGISTRADORES
			RET
			
		ZERA_REGISTRADORES: 
			MOV AX,0000H
			MOV BX,0000H
			MOV CX,0000H
			MOV DX,0000H
			RET
			
		
		RANDOM:
			PUSH AX;
			PUSH BX;
			PUSH CX;
			MOV AH, 00h ;         
			INT 1AH; 
			MOV AX,DX
			XOR DX,DX 
			MOV CX,9h ;   
			DIV CX ; 
			INC DX ;
			POP CX
			POP BX
			POP AX 
			RET  
			
		RANDOM256:
			PUSH AX;
			PUSH BX;
			PUSH CX;
			MOV AH,00h ;      
			INT 1AH; 
			MOV AX,DX
			XOR DX,DX
			MOV CX,99h ;
			DIV CX ; 
			INC DX ;
			POP CX
			POP BX
			POP AX 
			RET 

	_G1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3043 ; sol
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET
	_G05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3043 ; sol
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET
	_Ds1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3834 ; re#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL 
	_Ds05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3834 ; re#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET
		
	_As05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2559 ; la#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET
		
	_G2T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3043 ; sol 
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA2T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET
		
	_Dh1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2031 ; re agudo
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_Dsh05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 1917 ; re agudo
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET		
	_B05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2415 ; si
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET			
		
	_Fs1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3224 ; FA#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET			
	_Fs2T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 3224 ; FA#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA2T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET			
					
	_Gh1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 1521 ; SOL AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_Fsh05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 1612 ; FA# AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
	_Fh05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 1715 ; FA AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_Eh05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 1809; MI AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_Gs05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2873; SOL#
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_Csh1T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2152;DO# AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA1T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
	
	_Ch05T:
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2280;DO AGUDO
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
	_A05T:	
		MOV AL, 182
		OUT 43h, AL ;prepara a nota
		MOV AX, 2711;LA
		OUT 42h, AL ; manda byte menos significativo
		MOV AL, AH
		OUT 42h, AL ; manda byte mais significativo
		IN AL, 61h ; verifica qual o valor está na porta 61h
		OR AL, 00000011b ; "seta" os dois bits menos significativos
		OUT 61h, AL ; atualiza o valor na porta 61h ... reproduz
		CALL PAUSA05T
		IN AL, 61h ; verifica qual o valor está na porta 61h
		AND AL, 11111100b ; "zera" os dois bits menos significativos
		OUT 61h, AL ; atualiza valor na porta 61h, fim reprodução
		RET	
		
		
		
		
	PAUSA2T:
		MOV BX, 0Ch ; determina a duração do som
	DURAPAUSE2:
		MOV CX, 0FFFFh
	DURACPAUSE2:
		DEC CX
		JNE DURACPAUSE2
		DEC BX
		JNE DURAPAUSE2
		RET	
		
	PAUSA1T:
		MOV BX, 06h ; determina a duração do som
	DURAPAUSE1:
		MOV CX, 0FFFFh
	DURACPAUSE1:
		DEC CX
		JNE DURACPAUSE1
		DEC BX
		JNE DURAPAUSE1
		RET
		
	PAUSA05T:
		MOV BX, 03h ; determina a duração do som
	DURAPAUSE05:
		MOV CX, 0FFFFh
	DURACPAUSE05:
		DEC CX
		JNE DURACPAUSE05
		DEC BX
		JNE DURAPAUSE05
		RET
	;FIM DO CÓDIGO =============================================================================================
		return:
			CALL ZERA_REGISTRADORES
			ret	
MAIN ENDP

	QUEBRA_LINHA EQU 0Ah
	VOLTA_CARRO EQU 0DH
	SPACE EQU 20H
	_ESC EQU 1Bh
	
	NUM_MAX DB "Insira um string de, no maximo, 40 caracteres: ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STR1 DB 40, ?, 40 DUP('$'), '$'
	LIMPA_TELA DB "                                                                                ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	LIMPA_LINHA DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	
	;MENU INICAL ===============================================================================================================
	MENU_1  DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_2  DB      " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_3  DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_4  DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_5  DB 		"  _____  _               _   _ ______ _______          ___   ___   ___    __  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_6  DB 		" |  __ \| |        /\   | \ | |  ____|__   __|/\      / _ \ / _ \ / _ \  / /  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_7  DB 		" | |__) | |       /  \  |  \| | |__     | |  /  \    | (_) | | | | (_) |/ /_  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_8  DB 		" |  ___/| |      / /\ \ | . ` |  __|    | | / /\ \    > _ <| | | |> _ <| '_ \ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_9  DB 		" | |    | |____ / ____ \| |\  | |____   | |/ ____ \  | (_) | |_| | (_) | (_) |",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_10 DB 		" |_|    |______/_/    \_|_| \_|______|  |_/_/    \_\  \___/ \___/ \___/ \___/ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_11 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_12 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_13 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_14 DB 		"              Feito por:                                                      ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_15 DB 		"                       Leandro Kurashiki                                      ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_16 DB 		"                       Lucas Medeiros                                         ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_17 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_18 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_19 DB 		"                           Pressione ESPACO para iniciar                      ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_20 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_21 DB 		"                                        ou                                    ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_22 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_23 DB 		"                             Pressione ESC para sair                          ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_24 DB 		"                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	MENU_25 DB 		" - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",'$'
	
	;TELA DE HISTÓRIA =====================================================================================================
	STORY_1  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_2  DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_3  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_4  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_5  DB "  _____  _               _   _ ______ _______          ___   ___   ___    __  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_6  DB " |  __ \| |        /\   | \ | |  ____|__   __|/\      / _ \ / _ \ / _ \  / /  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_7  DB " | |__) | |       /  \  |  \| | |__     | |  /  \    | (_) | | | | (_) |/ /_  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_8  DB " |  ___/| |      / /\ \ | . ` |  __|    | | / /\ \    > _ <| | | |> _ <| '_ \ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_9  DB " | |    | |____ / ____ \| |\  | |____   | |/ ____ \  | (_) | |_| | (_) | (_) |",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_10 DB " |_|    |______/_/    \_|_| \_|______|  |_/_/    \_\  \___/ \___/ \___/ \___/ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_11 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_12 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_13 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_14 DB "             Thanos, um pirata espacial da pior geracao, destruiu o           ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_15 DB "       Planeta 8086 usando sua Estrela da Morte e roubou a pedra Filosofal,   ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_16 DB "         que pode dar vida eterna a alguem. Agora e seu dever como melhor     ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_17 DB "          marinheiro espacial, vingar seu Planeta, recuperar a Pedra e        ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_18 DB "                               salvar o universo                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_19 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_20 DB "                     Boa sorte em sua jornada, jovem Padawan.                 ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_21 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_22 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_23 DB "                        Pressione ESPACO para continuar                       ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_24 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	STORY_25 DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",'$'
	
	;TELA DE INSTRUÇÕES =====================================================================================================
	INSTRUC_1  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_2  DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_3  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_4  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_5  DB "  _____  _               _   _ ______ _______          ___   ___   ___    __  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_6  DB " |  __ \| |        /\   | \ | |  ____|__   __|/\      / _ \ / _ \ / _ \  / /  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_7  DB " | |__) | |       /  \  |  \| | |__     | |  /  \    | (_) | | | | (_) |/ /_  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_8  DB " |  ___/| |      / /\ \ | . ` |  __|    | | / /\ \    > _ <| | | |> _ <| '_ \ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_9  DB " | |    | |____ / ____ \| |\  | |____   | |/ ____ \  | (_) | |_| | (_) | (_) |",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_10 DB " |_|    |______/_/    \_|_| \_|______|  |_/_/    \_\  \___/ \___/ \___/ \___/ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_11 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_12 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_13 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_14 DB "                                 COMO JOGAR:                                  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_15 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_16 DB "                   Pressione A para se mover para esquerda <                  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_17 DB "                   Pressione D para se mover para direita >                   ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_18 DB "                A cada movimento seu novos enimigos aparecerao,               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_19 DB "                      entao pense cuidadosamente cada passo                   ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_20 DB "                           Pressione K para atirar                            ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_21 DB "                           Pressione ESC para sair                            ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_22 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_23 DB "                       Pressione ESPACO para continuar                        ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_24 DB "                                 BOA SORTE!                                   ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	INSTRUC_25 DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",'$'
	
	;TELA DE MORREU ===========================================================================================================
	DEAD_1  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_2  DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_3  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_4  DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_5  DB "  _____  _               _   _ ______ _______          ___   ___   ___    __  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_6  DB " |  __ \| |        /\   | \ | |  ____|__   __|/\      / _ \ / _ \ / _ \  / /  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_7  DB " | |__) | |       /  \  |  \| | |__     | |  /  \    | (_) | | | | (_) |/ /_  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_8  DB " |  ___/| |      / /\ \ | . ` |  __|    | | / /\ \    > _ <| | | |> _ <| '_ \ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_9  DB " | |    | |____ / ____ \| |\  | |____   | |/ ____ \  | (_) | |_| | (_) | (_) |",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_10 DB " |_|    |______/_/    \_|_| \_|______|  |_/_/    \_\  \___/ \___/ \___/ \___/ ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_11 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_12 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_13 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_14 DB "                                 VOCE MORREU                                  ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_15 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_16 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_17 DB "                          Pressione ESPACO para sair                          ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_18 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_19 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_20 DB "                            Sua pontuacao foi:                                ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_21 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	DEAD_22 DB "                                   ",'$'
	;DEAD_23 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	;DEAD_24 DB "                                                                              ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	;DEAD_25 DB " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -",'$'
	
	;TELA DO GAME ===========================================================================================================
	GAME_1  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_2  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_3  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_4  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_5  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_6  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_7  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_8  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_9  DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_10 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_11 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_12 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_13 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_14 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_15 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_16 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_17 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_18 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_19 DB "                                 |           |                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	GAME_20 DB "                                 |___________|                               ",QUEBRA_LINHA,VOLTA_CARRO,'$'
	
	
COD ENDS 
	END MAIN 