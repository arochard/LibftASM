# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/18 17:18:34 by arochard          #+#    #+#              #
#    Updated: 2016/08/18 17:18:35 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;char	*ft_strdup(const char *s);

section .text
	global ft_strdup
	extern malloc
	extern ft_strlen
	extern ft_memcpy

ft_strdup:
	enter 0,0  ;push rbp,mov rbp,rsp
	mov rax,0
	cmp rdi,0
	je .ret
	push rdi
	call ft_strlen
	mov rdx,rax
	mov rdi,rax
	call malloc
	cmp rax,0
	je .reterr
	mov rdi,rax
	pop rsi
	call ft_memcpy

.ret:
	leave
	ret

.reterr:
	pop rsi
	leave
	ret