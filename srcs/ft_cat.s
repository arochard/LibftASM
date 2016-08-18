# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_cat.s                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/18 17:19:10 by arochard          #+#    #+#              #
#    Updated: 2016/08/18 17:19:12 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_cat(int fd);

%define MACH_SYSCALL(nb) 0x2000000 | nb
%define READ 3
%define WRITE 4


section .text
	global ft_cat

ft_cat:
	cmp rdi,0
	jl .reterr2

.read:
	push rdi
	mov rax, MACH_SYSCALL(READ)
	lea rsi,[rel buffer]
	mov rdx,buffsize
	syscall
	jc .reterr
	cmp rax,0
	je .end
	mov rdi,1
	mov rdx,rax
	mov rax, MACH_SYSCALL(WRITE)
	syscall
	jc .reterr
	pop rdi
	jmp .read

.end:
	pop rdi
	mov rax,0
	ret

.reterr:
	pop rdi
    mov rax,1
	ret

.reterr2:
    mov rax,1
	ret

section .data
	buffer times 255 db 0
	buffsize equ $ - buffer