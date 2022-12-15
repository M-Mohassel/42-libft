# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: misi-moh <misi-moh@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/14 17:47:36 by misi-moh          #+#    #+#              #
#    Updated: 2022/12/15 19:53:58 by misi-moh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	=	ft_isalnum.c	ft_isalpha.c	ft_isdigit.c	ft_isascii.c	ft_isprint.c \
			ft_strlen.c		ft_toupper.c	ft_tolower.c	ft_strchr.c	*ft_strrchr.c \
			ft_strncmp.c	ft_bzero.c
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