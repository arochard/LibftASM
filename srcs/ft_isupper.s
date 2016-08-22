# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/22 16:44:34 by arochard          #+#    #+#              #
#    Updated: 2016/08/22 16:44:48 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;int		ft_isupper(int c);

section .text
	global ft_isupper

ft_isupper:
	cmp rdi, 65
	jb .noupper
	cmp rdi,90
	jg .noupper
	mov rax,1
	ret
	.noupper:
	mov rax,0
	ret
