# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ozahir <ozahir@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/18 16:52:03 by ozahir            #+#    #+#              #
#    Updated: 2021/11/20 17:06:08 by ozahir           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC= ft_strmapi.c ft_bzero.c ft_memset.c ft_strncmp.c \
 	ft_calloc.c ft_putchar_fd.c ft_strnstr.c ft_isalnum.c \
 	ft_putendl_fd.c ft_strrchr.c ft_isalpha.c ft_putnbr_fd.c \
 	ft_strtrim.c ft_isascii.c ft_putstr_fd.c ft_substr.c \
 	ft_isdigit.c  ft_tolower.c ft_isprint.c \
 	ft_split.c ft_toupper.c ft_itoa.c ft_strdup.c ft_striteri.c \
 	ft_strjoin.c ft_strlen.c ft_memcpy.c ft_memchr.c ft_strlcat.c\
   	ft_memcmp.c ft_strlcpy.c ft_atoi.c ft_strchr.c ft_memmove.c

OBJ= ft_strmapi.o ft_bzero.o ft_memset.o ft_strncmp.o \
 	ft_calloc.o ft_putchar_fd.o ft_strnstr.o ft_isalnum.o \
 	ft_putendl_fd.o ft_strrchr.o ft_isalpha.o ft_putnbr_fd.o \
 	ft_strtrim.o ft_isascii.o ft_putstr_fd.o ft_substr.o \
 	ft_isdigit.o  ft_tolower.o ft_isprint.o \
 	ft_split.o ft_toupper.o ft_itoa.o ft_strdup.o ft_striteri.o \
 	ft_strjoin.o ft_strlen.o ft_memcpy.o ft_memchr.o ft_strlcat.o\
   	ft_memcmp.o ft_strlcpy.o ft_atoi.o ft_strchr.o ft_memmove.o

NAME= libft.a

CC = gcc

FLAGS = -Wall -Wextra -Werror
all: $(NAME) 

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ) 

$(OBJ): $(SRC) libft.h
	$(CC) $(FLAGS) -c $(SRC)
	
$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

.PHONY: clean fclean all re

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all


