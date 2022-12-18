/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strnstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: misi-moh <misi-moh@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/17 18:47:41 by misi-moh          #+#    #+#             */
/*   Updated: 2022/12/17 19:51:36 by misi-moh         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strnstr(const char *big, const char *small, size_t len)
{
	int	i;
	int	j;

	i = 0;
	j = 0;
	if (!small || !small[0])
		return ((char *)(big));
	while (i < len)
	{
		while (big[i + j] == small[j])
		{
			j++;
			if (small[j] == '\0' && i + j <= len)
				return ((char *)(big + i));
		}
		j = 0;
		i++;
	}
	return (NULL);
}
