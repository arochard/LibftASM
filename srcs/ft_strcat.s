# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:18:57 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:18:59 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;char	*ft_strcat(char *dest, const char *src);

section .text
	global ft_strcat
	extern ft_strlen
	extern ft_memcpy

ft_strcat:
	push rdi
	mov rdi,rsi
	call ft_strlen
	pop rdi
	push rdi
	mov rdx,rax
	inc rdx			;on incremente pour le \0
	mov rax,0
	repne scasb
	dec rdi
	call ft_memcpy
	pop rax
	ret