# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strchr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/22 16:46:13 by arochard          #+#    #+#              #
#    Updated: 2016/08/22 16:46:54 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char	*ft_strchr(const char *s, int c);

section .text
	global ft_strchr
		extern ft_strlen

		ft_strchr:
		cmp byte[rdi],0
		je .ret
		push rdi
		call ft_strlen
		inc rax
		pop rdi
		mov rcx,rax
		mov rax,rsi
		repne scasb
		dec rdi
		cmp byte[rdi],sil
		jne .ret
		mov rax,rdi
		ret
		.ret:
		mov rax,0
		ret
