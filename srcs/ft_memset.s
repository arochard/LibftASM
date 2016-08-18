# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/18 17:17:01 by arochard          #+#    #+#              #
#    Updated: 2016/08/18 17:17:03 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;void	*ft_memset(void *s, int c, size_t n);

section .text
	global ft_memset

ft_memset:
	push rdi
	mov rax,rsi
	mov rcx,rdx
	cld
	repe stosb
	pop rax
	ret