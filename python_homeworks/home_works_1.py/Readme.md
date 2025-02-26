# Sierpinski Triangle
This scripts is a Pygame implementation of the Chaos Game to draw a Sierpinski Triangle.

### Rules

* Start with a big triangle
* Find the middle of each side of the big triangle
* Make a new small triangle and connect these three middle points to form a smaller triangle inside the big triangle. Then, pretend to erase the small triangle in the center.
* Repeat the magic, you now have three triangles left. Do the same thing with each one—find the middle of their sides, draw a small triangle, and erase it.

- **Python 3.6+**  
- **Pygame** (installed via `requirements.txt`)

## Setup Instructions

### 1. Clone or Download the Repository

Clone this repository or download the source code to your local machine.

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
