# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_islower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/22 16:43:35 by arochard          #+#    #+#              #
#    Updated: 2016/08/22 16:44:08 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_islower(int c);

section .text
	global ft_islower

	ft_islower:
	cmp rdi, 97
	jb .nolower
	cmp rdi,122
	jg .nolower
	mov rax,1
	ret
	.nolower:
	mov rax,0
	ret
