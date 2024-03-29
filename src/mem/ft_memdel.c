/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memdel.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2014/11/10 18:53:47 by aollivie          #+#    #+#             */
/*   Updated: 2014/11/19 17:42:21 by aollivie         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../../inc/libft.h"

void	ft_memdel(void **ap)
{
	if ((void **)ap != NULL && (void *)ap != NULL)
	{
		free(*ap);
		*ap = NULL;
	}
}
