# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: arochard <arochard@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/11 18:18:44 by arochard          #+#    #+#              #
#    Updated: 2015/02/11 18:18:46 by arochard         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


;void	ft_bzero(void *s, size_t n);

section .text
	global ft_bzero
	extern ft_memset

ft_bzero:
	mov rdx,rsi
	mov rsi,0
	call ft_memset
	ret