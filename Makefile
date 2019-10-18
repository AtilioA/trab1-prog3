CXX		  	:= g++
CXX_FLAGS 	:= -ggdb -g -Wall -std=c++17 #-O3 ZUMMMMMMM
SRC			:= src
INCLUDE		:= include
OBJ 		:= obj
EXECUTABLE	:= main

all: $(EXECUTABLE)

$(EXECUTABLE): $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -I$(INCLUDE) $^ -o $@

run:
	./$(EXECUTABLE) -u entradas/usuarios.csv -f entradas/favoritos.csv -g entradas/generos.csv -m entradas/midias_corrigidas.csv

runV:
	valgrind ./$(EXECUTABLE) -u entradas/usuarios.csv -f entradas/favoritos.csv -g entradas/generos.csv -m entradas/midias_corrigidas.csv

# RECEITINHAS PARA TESTES
# Entradas autorais
run_a1:
	./$(EXECUTABLE) -u entradas_autorais/usuarios1.csv -f entradas_autorais/favoritos1.csv -g entradas_autorais/generos1.csv -m entradas_autorais/midias1.csv

run_a2:
	./$(EXECUTABLE) -u entradas_autorais/usuarios2.csv -f entradas_autorais/favoritos2.csv -g entradas_autorais/generos2.csv -m entradas_autorais/midias2.csv

run_p:
	./$(EXECUTABLE) -u entradas_autorais/python/usuarios_python.csv -f entradas_autorais/python/favoritos_python.csv -g entradas_autorais/python/generos_python.csv -m entradas_autorais/python/midias_python.csv

# Entradas com erros
# Erro 1
run_e11:
	./$(EXECUTABLE) -u entradas/naoexiste.csv -f entradas/favoritos.csv -g entradas/generos.csv -m entradas/midias_corrigidas.csv

run_e12:
	./$(EXECUTABLE) -u entradas/usuarios.csv -f entradas/naoexiste.csv -g entradas/generos.csv -m entradas/midias_corrigidas.csv

run_e13:
	./$(EXECUTABLE) -u entradas/usuarios.csv -f entradas/favoritos.csv -g entradas/naoexiste.csv -m entradas/midias_corrigidas.csv

run_e14:
	./$(EXECUTABLE) -u entradas/usuarios.csv -f entradas/favoritos.csv -g entradas/generos.csv -m entradas/naoexiste.csv

# Erro 2
run_e2:
	echo ainda faremos?!

# Erro 3
# Tipo de usuário sem correspondente (Não é A ou P ou U)
run_e31: # (na verdade é erro de formatação?)
	./$(EXECUTABLE) -u entradas_autorais/testes/usuarios_e31.csv -f entradas_autorais/testes/favoritos_e31.csv -g entradas_autorais/testes/generos_e31.csv -m entradas_autorais/testes/midias_e31.csv
	# (Supostamente feito)

# Mídia sem sigla de gênero correspondente
run_e32:
	./$(EXECUTABLE) -u entradas_autorais/testes/usuarios_e32.csv -f entradas_autorais/testes/favoritos_e32.csv -g entradas_autorais/testes/generos_e32.csv -m entradas_autorais/testes/midias_e32.csv

# Mídia sem tipo correspondente
run_e33:
	./$(EXECUTABLE) -u entradas_autorais/testes/usuarios_e33.csv -f entradas_autorais/testes/favoritos_e33.csv -g entradas_autorais/testes/generos_e33.csv -m entradas_autorais/testes/midias_e33.csv

# Mídia sem código de produtor correspondente
run_e34:
	./$(EXECUTABLE) -u entradas_autorais/testes/usuarios_e34.csv -f entradas_autorais/testes/favoritos_e34.csv -g entradas_autorais/testes/generos_e34.csv -m entradas_autorais/testes/midias_e34.csv


# Favorito sem mídia correspondente
run_e35:
	./$(EXECUTABLE) -u entradas_autorais/testes/usuarios_e35.csv -f entradas_autorais/testes/favoritos_e35.csv -g entradas_autorais/testes/generos_e35.csv -m entradas_autorais/testes/midias_e35.csv
	# (Supostamente feito)


warns: $(SRC)/*.cpp
	$(CXX) $(CXX_FLAGS) -Wextra -I$(INCLUDE) $^ -o $@

clean:
	-rm $(OBJ)/*.o
	# make

cleanW:
	del /S /F "*.o"
	del /S /F "main.exe"
