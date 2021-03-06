# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:06:00 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:06:01 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_isalnum(int c);

section	.text
	global ft_isalnum
	
ft_isalnum:
	mov 	rax, rdi
	cmp		rdi, 126
	ja		.not_alnum
	cmp		rdi, 32
	jb		.not_alnum
	mov		rax, 1
	ret

.not_alnum:
	mov		rax, 0
	ret