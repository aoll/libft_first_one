/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/14 15:55:30 by aollivie          #+#    #+#             */
/*   Updated: 2014/11/14 18:38:52 by aollivie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/libft.h"

void		ft_putstr_fd(char const *s, int fd)
{
	int i;

	i = 0;
	while (s[i])
		ft_putchar_fd(s[i++], fd);
}
