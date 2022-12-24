/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_split.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: misi-moh <misi-moh@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/22 20:32:16 by misi-moh          #+#    #+#             */
/*   Updated: 2022/12/24 18:19:55 by misi-moh         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include"libft.h"

static size_t	size_alloc(char const *s, char c)
{
	size_t	i;
	size_t	total;

	total = 0;
	i = 0;
	while (s[i])
	{
		if (s[i] != c)
		{
			total++;
			while (s[i] && s[i] != c)
				i++;
		}
		else
			i++;
	}
	return (total);
}

char	**ft_split(char const *s, char c)
{
	size_t	i;
	size_t	j;
	size_t	len;
	size_t	a;
	char	**str;

	str = (char **)malloc(sizeof(char *) * (size_alloc(s, c) + 1));
	if (!str)
		return (NULL);
	i = 0;
	j = 0;
	while (s[i])
	{
		if (s[i] != c)
		{
			len = 0;
			a = i;
			while (s[i] && s[i] != c && ++len)
				i++;
			str[j++] = ft_substr(s, a, len);
		}
		else
			i++;
	}
	str[i] = 0;
	return (str);
}
