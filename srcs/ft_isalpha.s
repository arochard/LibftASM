# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalpha.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:06:17 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:06:19 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;int	ft_isalpha(int c);

section .text
	global ft_isalpha

ft_isalpha:
	cmp rdi, 'A'
	jb	.notalpha
	cmp rdi,'z'
	ja .notalpha
	cmp rdi,'Z'
	ja .check
	mov rax,1
	ret
.check:
	cmp rdi,'a'
	jb .notalpha
	mov rax,1
	ret
.notalpha:
	mov rax,0
	ret