# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: misi-moh <misi-moh@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 17:47:36 by misi-moh          #+#    #+#              #
#    Updated: 2022/12/22 20:01:34 by misi-moh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_isalnum.c	ft_isalpha.c	ft_isdigit.c	ft_isascii.c	ft_isprint.c \
			ft_strlen.c		ft_toupper.c	ft_tolower.c	ft_strchr.c	*ft_strrchr.c \
			ft_strncmp.c	ft_bzero.c	*ft_memset.c	ft_atoi.c	*ft_memcpy.c \
			*ft_memmove.c	ft_strlcpy.c	ft_strlcat.c	*ft_memchr.c	ft_memcmp.c \
			*ft_strnstr.c	ft_calloc.c		ft_strdup.c		*ft_itoa.c	ft_substr.c \
			ft_strjoin.c	ft_strtrim.c
OBJS	= $(SRCS:.c=.o)

CC = gcc
RM = rm -f
Cflags = -Wall -Werror -Wextra -I.

NAME = libft.a

all:	$(NAME)

$(NAME):	$(OBJS)
			ar rcs $(NAME) $(OBJS)

clean:
				$(RM) $(OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

.PHONY:			all clean fclean