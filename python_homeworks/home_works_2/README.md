# Sierpinski Triangle Web Visualizer

A Flask web application that generates and streams the Sierpiński Triangle pattern using Pygame's headless mode. Implements the Chaos Game algorithm with real-time rendering to a web interface.


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

### 2. Create a Virtual Environment

Creating a virtual environment is recommended to manage dependencies.

- **On macOS/Linux:**
```bash
python3 -m venv venv
source venv/bin/activate 
```

  
- **On Windows:**
````bash 
Python -m venv venv
venv\Scripts\activate
````
### 3. Install Dependencies 

````bash
pip install -r requirements.txt
````

### Runing the Application 

````bash

python main.py

````