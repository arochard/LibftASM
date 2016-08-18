# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:05:31 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:05:33 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_isascii(int c);

section	.text
	global ft_isascii

ft_isascii:
	mov 	rax, rdi
	cmp		rdi, 127
	ja		.non_ascii
	cmp		rdi, 0
	jb		.non_ascii
	mov		rax, 1
	ret

.non_ascii:
	mov		rax, 0
	ret