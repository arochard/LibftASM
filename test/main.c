/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlabro <jlabro@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/09 18:13:50 by jlabro            #+#    #+#             */
/*   Updated: 2015/05/28 18:10:15 by jlabro           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>

int		ft_toupper(int c);
int		ft_tolower(int c);
int		ft_isalpha(int c);
int		ft_isalnum(int c);
int		ft_isdigit(int c);
int		ft_isprint(int c);
int		ft_isascii(int c);
void	ft_bzero(void *s, size_t n);
int		ft_puts(const char *s);
void	ft_memset(void *s, int c, size_t n);
size_t	ft_strlen(const char *str);
void	*ft_memcpy(void *dest, const void *src, size_t n);
char	*ft_strcat(char *dest, const char *src);
char	*ft_strdup(const char *s);
void	ft_cat(int fd);
int 	ft_strcmp(const char *s1, const char *s2);

int		ft_isupper(int c);
int		ft_islower(int c);
char	*ft_strjoin(char *dest, const char *src);
char	*ft_strchr(const char *s, int c);

int		main(const int ac, const char **av)
{
	char	*dest;
	char	*src;
	int		nb;
	int		i;
	int		fd;

	nb = 6;
	i = 0;
	dest = (char*)malloc(sizeof(char) * (nb + 1));
	src = (char*)malloc(sizeof(char) * (nb + 1));
	while (i < 6)
		dest[i++] = 'C';
	dest[i] = '\0';
	if (ac == 2)
	{
		fd = open(av[1], O_RDONLY);
		ft_cat(fd);
	}
	printf("\033[31misupper:\n\033[0m");
	printf("a ==> isupper:%d\n", ft_isupper('a'));
	printf("A ==> isupper:%d\n", ft_isupper('A'));
	printf("9 ==> isupper:%d\n", ft_isupper('9'));
	printf("\033[32mtolower:\n\033[0m");
	printf("Z ==> tolower: %c\n", ft_tolower('Z'));
	printf("z ==> tolower: %c\n", ft_tolower('z'));
	printf("~ ==> tolower: %c\n", ft_tolower('~'));
	printf("\033[33mislower:\n\033[0m");
	printf("a ==> islower:%d\n", ft_islower('a'));
	printf("A ==> islower:%d\n", ft_islower('A'));
	printf("9 ==> islower:%d\n", ft_islower('9'));
	printf("\033[34mtoupper:\n\033[0m");
	printf("Z ==> toupper: %c\n", ft_toupper('Z'));
	printf("z ==> toupper: %c\n", ft_toupper('z'));
	printf("~ ==> toupper: %c\n", ft_toupper('~'));

	printf("\033[35misMachin:\n\033[0m");
	printf("5 ==> isalpha: %d\n", ft_isalpha('5'));
	printf("8 ==> isalnum: %d\n", ft_isalnum('8'));
	printf("/ ==> isdigit: %d\n", ft_isdigit('/'));
	printf("int 24 ==> isprint: %d\n", ft_isprint(24));
	printf("int 1 ==> isascii: %d\n", ft_isascii(1));
	printf("\033[36mft_bzero:\n\033[0m");
	printf("oiginal: %s\n", dest);
	ft_bzero(dest, nb);
	printf("ft_bzero: %s\n", dest);
	i = 0;
	while (i < 6)
		dest[i++] = 'C';
	dest[i] = '\0';
	printf("\033[31mft_memset:\n\033[0m");
	printf("original: %s\n", dest);
	ft_memset(dest, 'A', 5);
	printf("ft_memset: %s\n", dest);
	printf("\033[32mft_strlen:\n\033[0m");
	printf("salut ==> ft_strlen: %zu\n", ft_strlen("salut"));
	i = 0;
	while (i < 6)
		dest[i++] = 'A';
	dest[i] = '\0';
	i = 0;
	while (i < 6)
		src[i++] = 'B';
	src[i] = '\0';
	printf("\033[33mft_memcpy:\n\033[0m");
	printf("original: %s\n", dest);
	ft_memcpy(dest, src, 6);
	printf("ft_memcpy: %s\n", dest);
	dest = (char*)malloc(sizeof(char) * (nb * 2 + 1));
	i = 0;
	while (i < 6)
		dest[i++] = 'A';
	dest[i] = '\0';
	printf("\033[35mft_strjoin:\n\033[0m");
	printf("ft_strjoin: %s\n", ft_strjoin("coucou", "salut"));

	printf("\033[34mft_strcat:\n\033[0m");
	printf("ft_strcat: %s\n", ft_strcat(dest, src));

	printf("\033[36mft_strdup:\n\033[0m");
	printf("coucou ==> ft_strdup: %s\n", ft_strdup("coucou"));

	printf("\033[36mft_strcmp:\n\033[0m");
	printf("coucou, salut ==> ft_strcmp: %d\n", ft_strcmp("coucou", "salut"));
	printf("allo, allo ==> ft_strcmp: %d\n", ft_strcmp("allo", "allo"));

	printf("\033[31mft_strchr:\n\033[0m");
	printf("salut, l ==> ft_strchr: %s\n", ft_strchr("salut", 'l'));
	printf("salut, d ==> ft_strchr: %s\n", ft_strchr("salut", 'd'));

	ft_puts("ft_puts");
	i = ft_puts("hello");
	ft_cat(open(__FILE__, O_RDONLY));
	printf("return ft_puts:%d\n", i);
	ft_cat(-42);
	ft_cat(0);
	return (0);
}
