# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 16:27:19 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 17:13:31 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int	ft_toupper(int c);

section	.text
	global ft_toupper
ft_toupper:
	mov 	rax, rdi
	cmp		rdi, 122
	ja		.error
	cmp		rdi, 97
	jb		.error
	sub		rax, 32

.error:
	ret

