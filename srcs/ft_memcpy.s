# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/18 17:17:51 by arochard          #+#    #+#              #
#    Updated: 2016/08/18 17:17:52 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;void	*ft_memcpy(void *dest, const void *src, size_t n);

section .text
	global ft_memcpy

ft_memcpy:
	push rdi
	mov rcx,rdx
	cld
	repe movsb
.end:
	pop rax
	ret