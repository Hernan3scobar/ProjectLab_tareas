import pygame, random
pygame.init(); W, H = 800, 800; screen = pygame.display.set_mode((W, H))
vertices = [(W//2,50),(50,H-50),(W-50,H-50)]
current = (W//2, H//2)
screen.fill((0,0,0))
clock = pygame.time.Clock(); start = pygame.time.get_ticks()
font = pygame.font.SysFont(None,24); pts = 0; running = True

while running:
    elapsed = (pygame.time.get_ticks()-start)/1000
    fps = 1 + 2999 * min(elapsed/100,1)**2  
    for e in pygame.event.get():
        if e.type == pygame.QUIT: running = False
    v = random.choice(vertices)
    current = ((current[0]+v[0])//2, (current[1]+v[1])//2); pts += 1
    screen.set_at(current, (255,255,255))
    pygame.draw.rect(screen, (0,0,0), (10,10,100,30))
    screen.blit(font.render(f"{pts} points", True, (255,0,0)), (10,10))
    pygame.display.update(); clock.tick(fps)
pygame.quit()
