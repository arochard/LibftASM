# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:05:51 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:05:53 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_isdigit(int c);

section	.text
	global ft_isdigit

ft_isdigit:
	mov 	rax, rdi
	cmp		rdi, 57
	ja		.non_digit
	cmp		rdi, 48
	jb		.non_digit
	mov		rax, 1
	ret

.non_digit:
	mov		rax, 0
	ret