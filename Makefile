# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: ohendrix <ohendrix@student.codam.nl>         +#+                      #
#                                                    +#+                       #
#    Created: 2024/01/12 16:42:13 by ohendrix      #+#    #+#                  #
#    Updated: 2024/02/16 16:16:34 by ohendrix      ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = pipex
SOURCES = \
pipex.c \
ft_free.c

CFLAGS = -Wall -Werror -Wextra

all: $(NAME)

$(NAME):
	make -C Libft/ all
	cc $(SOURCES) $(CFLAGS) Libft/libft.a -o $(NAME) 

clean:
		rm -f $(OBJS)
		make -C Libft/ clean

fclean: clean
		rm -f $(NAME)
		make -C Libft/ fclean
re: fclean all