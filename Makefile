CC := g++
LIBS := -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
CXX_FLAGS := -Wfatal-errors -Wall -Wextra -Wpedantic -Wconversion -Wshadow

SOURCE_DIR := src
BUILD_DIR := build

SOURCES := $(wildcard src/*.cc)
OBJECTS := $(SOURCES:src/%.cc=$(BUILD_DIR)/%.o)
.PHONY: all

$(BUILD_DIR):
	mkdir -p $@

game: $(OBJECTS)
	$(CC) $(CXX_FLAGS) $< -o $@ $(LIBS)

$(OBJECTS): $(SOURCES)
	$(CC) $(CXX_FLAGS) $(LIBS) -c $< -o $@

clean:
	rm -rf $(BUILD_DIR)/* game 

# dependencies
state.o: geometry.h game.h

game.o: game_engine.h state.h geometry.h

game_engine.o: tilemap.h

tilemap.o: geometry.h
