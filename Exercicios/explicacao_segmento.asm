.data
### 1� explica��o de como � armazenado nos segmentos e uso total de mem�ria

#cadeia: .ascii "abcde"  # 2 segmentos
#.word 0x345  		# 1 segmento
#octeto: .byte 0xff 	# 1/4 segmento
#string: .asciiz "teste" # 3/4 segmento + 1/2 segmento

# USO TOTAL DE MEM�RIA: 4,5 SEGMENTOS * 32 BITS = 18 BYTES

##########################################################################

## 2� analisando como a palavra � armazenada em 
## cada segmento e subsegmento da memoria
#palavra1: .word 0x10203040
.text
#lb $t0, palavra1+1
#la $t1, palavra1+1
#lb $t2, palavra1+2
#la $t3, palavra1+2