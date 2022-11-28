# Pacman

This game was created as a very early intro to C++ dev by me in the first
year.

## Installation

1. Install SFML.

```
sudo apt install libsfml
```

2. Use this command from project root:

```
g++ src/*.cc -lsfml-window -lsfml-graphics -lsfml-system -lsfml-audio -o game
```

3. Play

```
./game
```

4. With CUDA support. Do run `nvidia-prime` once too see the GPU is actually
   being used.

```
__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia ./game
```
