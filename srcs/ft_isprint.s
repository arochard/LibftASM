# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:06:24 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:06:25 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_isprint(int c);

section	.text
	global ft_isprint

ft_isprint:
	mov 	rax, rdi
	cmp		rdi, 126
	ja		.non_printable
	cmp		rdi, 32
	jb		.non_printable
	mov		rax, 1
	ret

.non_printable:
	mov		rax, 0
	ret