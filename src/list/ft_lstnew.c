#include "../../inc/libft.h"

t_list	*ft_lstnew(void const *content, size_t content_size)
{
    t_list *new;


    if (!(new = malloc(sizeof(content_size))))
	return (NULL);
    if (content)
    {
	if (!(new->content = malloc(sizeof(content_size))))
	    return (NULL);
	new->content = ft_memcpy(new->content, content, content_size);
	new->content_size = content_size;
    }
    else
    {
	new->content = NULL;
	new->content_size = 0;
    }
    new->next = NULL;
    return (new);
}
