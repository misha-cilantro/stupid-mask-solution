# The Problem

You have a game with guys in it. The guys have transparent bodies. It looks bad:
<img width="761" height="232" alt="image" src="https://github.com/user-attachments/assets/fc2e437d-3767-4f08-888f-d5889ed40f55" />

The obvious solution is to make them not an outline, ie. fill in their little guy bodies. BUT what if you really want
the background to still come through? (Because why not, stylistic effect etc.)

# The Goal

Filter out the outline of any guy behind the current guy behind drawn, but still show the background. We can do it... with
shaders!

# The Solution

That's what this stupid repo is, a basic example of how this can be solved with shaders. Each guy is made of an outline
and a mask texture. The shader (mask.gdshader) on the mask checks if it is visible, and if so, it samples the texture
behind the current pixel and uses that instead. Otherwise, it's transparent.

So it essentially overwrites each outline it might see where the white mask color is with the background or wall. Neat!

<img width="818" height="181" alt="image" src="https://github.com/user-attachments/assets/2e47c8c0-5f77-4dc9-a0cb-452d124a7386" />

DON'T STEAL MY BEAUTIFUL ART!!1

# Caveat

I am not a texture or gfx wizard. This was just a quick solution I threw together with a bunch of googling. But it works!
And generally if you can do it with a texture it will be very fast.
