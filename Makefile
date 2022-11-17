NAME = libftprintf.a

CC = gcc
CFLAGS = -Wall -Werror -Wextra
LIB1 = ar -rcs
LIB2 = ranlib
RM = rm -f

INCLUDE = ft_printf.h

SOURCES =	ft_printf.c \
			hexadecimals.c \
			decimals.c \
			characters.c
OBJECTS =	$(SOURCES:.c=.o)

all: $(NAME)
$(NAME):	$(OBJECTS)	$(INCLUDE)
			$(LIB1)		$(NAME)	$(OBJECTS)
			$(LIB2)		$(NAME)

.o: .c
	$(CC) -c $(CFLAGS) $(SOURCES) -I $(INCLUDE) -o $@

clean:
	$(RM)	$(OBJECTS)

fclean: clean
	$(RM)	$(NAME)

re: fclean all

.PHONY: all clean fclean re