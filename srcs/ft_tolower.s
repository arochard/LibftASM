# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:02:41 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:02:43 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int	ft_tolower(int c);

section	.text
	global ft_tolower
ft_tolower:
	mov 	rax, rdi
	cmp		rdi, 90
	ja		.error
	cmp		rdi, 65
	jb		.error
	add		rax, 32

.error:
	ret