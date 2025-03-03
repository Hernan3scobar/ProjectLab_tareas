# Sierpinski Triangle Web Visualizer

A Flask web application that generates and streams the Sierpiński Triangle pattern using Pygame's headless mode. Implements the Chaos Game algorithm with real-time rendering to a web interface.

![Sierpinski Triangle Demo](https://en.wikipedia.org/wiki/Sierpi%C5%84ski_triangle#/media/File:Sierpinski_triangle.svg)

## Features

- Real-time fractal generation in browser
- Accelerating point density over time
- Points counter display
- Headless Pygame rendering (no GUI required)
- Cross-platform compatibility

## Prerequisites

- **Python 3.8+**
- **Pygame 2.1+** (headless rendering)
- **Flask 2.0+** (web interface)
- **Pillow 9.0+** (image processing)

## Environment Setup

### 1. Clone Repository
```bash
git clone https://github.com/yourusername/sierpinski-web.git
cd sierpinski-web