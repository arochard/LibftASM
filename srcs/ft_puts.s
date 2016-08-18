# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:19:09 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:19:10 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_puts(const char *s);

%define MACH_SYSCALL(nb) 0x2000000 | nb
%define WRITE 4

section .text
	global ft_puts
	extern ft_strlen

ft_puts:
	test rdi,rdi
	je .error
	push rdi
	call ft_strlen
	mov rdx,rax
	pop rdi
	lea rsi,[rel rdi]
	mov rdi,1
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc .reterr
	jmp .newline

.error:
	mov rdi,1
	mov rdx,err.len
	lea rsi,[rel err.string]
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc .reterr
	mov rax,1
	ret

.newline:
	mov rdx,1
	lea rsi,[rel NEWLINE]
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc .reterr
	mov rax,1
	ret

.reterr:
	mov rax,-1
	ret

section .data
err:
	.string db "(null)", 10
	.len equ $ - err.string
NEWLINE db 0x0a