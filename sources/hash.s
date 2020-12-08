	.file	"hash.cpp"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	_Z4hashPKc
	.type	_Z4hashPKc, @function
_Z4hashPKc:
.LFB0:
	.cfi_startproc
	endbr64

### ici, vous devez calculer la fonction de hash
### sur la string s (terminée par \0, le caractère
### nul de valeur 0) selon l'algorithme suivant:
###
### uint64_t h=0
### pour chaque caractère c de s:
###      faire une rotation à droite de 19 bits de h
###      faire la négation des bits de h
###      additionner c
###
### retourner h
###
### la rotation à droite est une opération cyclique qui
### "tasse" les bits vers la droite, mais les bits sortant
### ne tombent pas, ils entrent par la gauche.
###
### pourquoi 19?
###
        xor rax,rax
.LFB00:	
	cmp byte ptr[rdi],0
	jz .LFB01

	
	ror rax,19		
	not rax
	add rax,[rdi]
	inc rdi

	jmp .LFB00

.LFB01:

	## Question Bonus :: l'importance d'avoir une fontion de hash a la fois rapide a calculer et 
	## d'apparence bien aléatoir:: c'est la securité et la qualité du service. 
	##le coté aléatoir de cette fontcion permet de renforcer la securité, de sorte que 
	##même si seulemet un caractère manque a l'appel, c'est tout le hash qui change(ou du moins c'est l'impressione qu'il doit donner)
	## la rapidité est favorbale pour son coté pratique, par exemple géneralement on utilise la fonction de hash pour sécuriser les mot de passe
	## et quand l'utilisateur veut se connecter, il est plutôt souhaitable que ca ne soit pas trés long.
	
	
	## Ahmed Yaddaden


        
	ret
	.cfi_endproc
.LFE0:
	.size	_Z4hashPKc, .-_Z4hashPKc
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
