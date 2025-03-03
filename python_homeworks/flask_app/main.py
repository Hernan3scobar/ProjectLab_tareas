from flask import Flask, Response
import pygame
import random
import io

app = Flask(__name__)

# Pygame configuration
W, H = 800, 800
vertices = [(W//2, 50), (50, H-50), (W-50, H-50)]

# Headless pygame setup
import os
os.environ['SDL_VIDEODRIVER'] = 'dummy'
pygame.init()
pygame.display.set_mode((1,1))  # Minimal display surface

def generate_frames():
    screen = pygame.Surface((W, H))
    current = (W//2, H//2)
    screen.fill((0, 0, 0))
    clock = pygame.time.Clock()
    start = pygame.time.get_ticks()
    pts = 0
    running = True
    
    while running:
        elapsed = (pygame.time.get_ticks() - start) / 1000
        fps = 1 + 2999 * min(elapsed/100, 1)**2
        
        # Update position
        v = random.choice(vertices)
        current = ((current[0] + v[0]) // 2, (current[1] + v[1]) // 2)
        pts += 1
        screen.set_at(current, (255, 255, 255))
        
        # Draw UI elements
        pygame.draw.rect(screen, (0, 0, 0), (10, 10, 100, 30))
        font = pygame.font.SysFont(None, 24)
        text = font.render(f"{pts} points", True, (255, 0, 0))
        screen.blit(text, (10, 10))
        
        # Convert to JPEG properly
        img_bytes = io.BytesIO()
        pygame.image.save(screen, img_bytes, 'JPEG')
        img_bytes.seek(0)
        yield (b'--frame\r\n'
               b'Content-Type: image/jpeg\r\n\r\n' + img_bytes.read() + b'\r\n')
        
        clock.tick(fps) 

@app.route('/')
def index():
    return """
    <html>
      <head><title>Sierpiński Triangle</title></head>
      <body>
        <h1>Sierpiński Triangle Generator</h1>
        <img src="/video_feed" width="800" height="800">
      </body>
    </html>
    """

@app.route('/video_feed')
def video_feed():
    return Response(generate_frames(),
                    mimetype='multipart/x-mixed-replace; boundary=frame')

if __name__ == '__main__':
    app.run(threaded=True, port=5000)