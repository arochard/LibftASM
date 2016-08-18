/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main_toupper.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: arochard <arochard@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/11 17:15:45 by arochard          #+#    #+#             */
/*   Updated: 2015/02/11 17:15:47 by arochard         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>

extern		int ft_toupper(int c);
extern		int	ft_tolower(int c);
extern		int ft_isprint(int c);

int			main()
{
	printf("%c\n", ft_toupper('c'));
	printf("%c\n", ft_tolower('C'));
	printf("%d\n", ft_isprint(23));
	printf("%d\n", ft_isprint(' '));
	return 0;
}