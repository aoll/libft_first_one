#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aollivie <aollivie@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/14 17:07:06 by aollivie          #+#    #+#              #
#    Updated: 2016/02/03 12:47:52 by aollivie         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = libft.a

CC= gcc

FLAG= -Wextra -Wall #-Wpadded -Wstrict-prototypes -Wwrite-strings -Wconversion

AR= ar -rcs

SRC =	src/str/ft_strclr.c \
	src/str/ft_strncmp.c \
	src/str/ft_strcmp.c \
	src/str/ft_strncpy.c \
	src/str/ft_strcpy.c \
	src/str/ft_strnequ.c \
	src/str/ft_strdel.c \
	src/str/ft_strnew.c \
	src/str/ft_strdup.c \
	src/str/ft_strnstr.c \
	src/str/ft_strequ.c \
	src/str/ft_strrchr.c \
	src/str/ft_striter.c \
	src/str/ft_strsplit.c \
	src/str/ft_striteri.c \
	src/str/ft_strjoin.c \
	src/str/ft_strstr.c \
	src/str/ft_strlcat.c \
	src/str/ft_strsub.c \
	src/str/ft_strlen.c \
	src/str/ft_strtrim.c \
	src/str/ft_strcat.c \
	src/str/ft_strmapi.c \
	src/str/ft_strmap.c \
	src/str/ft_strchr.c \
	src/str/ft_strncat.c \
	src/str/ft_bzero.c \
	src/int/ft_isspace.c \
	src/int/ft_isalnum.c \
	src/int/ft_isalpha.c \
	src/int/ft_isascii.c \
	src/int/ft_isdigit.c \
	src/int/ft_itoa.c \
	src/int/ft_atoi.c \
	src/int/ft_isprint.c \
	src/put/ft_putnbr_fd.c \
	src/put/ft_putnbr.c \
	src/put/ft_putchar.c \
	src/put/ft_putchar_fd.c \
	src/put/ft_putendl.c \
	src/put/ft_putendl_fd.c \
	src/put/ft_putstr.c \
	src/put/ft_putstr_fd.c \
	src/mem/ft_memcpy.c \
	src/mem/ft_memdel.c \
	src/mem/ft_memmove.c \
	src/mem/ft_memcmp.c \
	src/mem/ft_memset.c \
	src/mem/ft_memalloc.c \
	src/mem/ft_memccpy.c \
	src/mem/ft_memchr.c \
	src/char/ft_tolower.c \
	src/char/ft_toupper.c \
	src/char/ft_fc.c \
	src/char/ft_nb_c.c \
	src/file/get_next_line.c \
	src/list/ft_lstnew.c \
	src/list/ft_lstdelone.c \
	src/list/ft_lstdel.c \
	src/list/ft_lstadd.c \
	src/list/ft_lstiter.c

OBJ = $(SRC:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	 $(AR) $(NAME) $(OBJ)

%.o: %.c
	 $(CC) -c $(FLAG) $< -o  $@

clean : 
	@rm -f $(OBJ)

fclean : clean
	@rm -f $(NAME)

re : fclean all

.PHONY : all clean fclean re
