# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/18 17:14:14 by arochard          #+#    #+#              #
#    Updated: 2016/08/18 17:14:16 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;size_t	ft_strlen(const char *str);
global ft_strlen

ft_strlen:
	xor rax,rax
	cmp rdi,0
	je .ret
	push rdi
	mov rcx,-1
	cld
	repne scasb
	mov rax,-2
	sub rax,rcx
.ret:
	pop rdi
	ret