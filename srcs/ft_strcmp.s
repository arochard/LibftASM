# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/22 17:22:09 by arochard          #+#    #+#              #
#    Updated: 2016/08/22 17:23:17 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int 	ft_strcmp(const char *s1, const char *s2);

section .text
	global ft_strcmp

ft_strcmp:
	cmp byte[rdi],0
	je .check
	cld
	cmpsb
	jnz .retdiff
	jmp ft_strcmp
.check:
	cmp byte[rsi],0
	je .ret
	jmp .retdiff2
.ret:
	mov rax,0
	ret
.retdiff2:
	mov rax,0
	mov al,byte[rdi]
	sub al,byte[rsi]
	jng .sub
	ret
.retdiff:
	mov rax,0
	dec rdi
	dec rsi
	mov al,byte[rdi]
	sub al,byte[rsi]
	jng .sub
	ret
.sub:
	sub rax,256
	ret
