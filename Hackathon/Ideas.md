# Desk Pet

- Coding in Python
- Raspbian OS 
- Mic
- Display
- pygame, sounddevice, numpy, gpiozero

**Hour 1-2 — Setup & Hardware**

- Flash Raspberry Pi OS to SD card
- Install Python dependencies (`pygame`, `sounddevice`, `numpy`, `gpiozero`)
- Test your display works and get pygame drawing to it
- Test your mic is recognized by the Pi
- Wire up your buttons

---

**Hour 3-5 — Face Rendering**

- Get a pygame window running at your display resolution
- Draw a basic face (circles for eyes, curve for mouth)
- Add blinking on a random timer
- Add 3-4 expressions (idle, happy, surprised, sleepy)
- Don't over-polish this — get it functional first

---

**Hour 6-8 — Audio Reactivity**

- Get mic input streaming with `sounddevice`
- Calculate volume level in real time
- Link volume to mouth open/close
- Add a "surprised" or "excited" reaction when volume spikes
- Test it feels responsive and not laggy

---

**Hour 9-11 — State Machine**

- Build your `PetState` enum and transition logic
- Wire expressions to states
- Add idle animations (slow blink, occasional yawn or look around)
- Make the pet "wake up" when it hears sound and return to sleep after silence

---

**Hour 12-15 — First Mini Game**

- Pick the simplest game first — reaction game or memory sequence
- Build the game loop inside the minigame state
- Add a way to enter and exit the game via button press
- Get it fully working before moving to a second game

---

**Hour 16-18 — Second Mini Game (optional)**

- Rhythm tap game is a natural fit since you already have audio
- Reuse your beat detection from the audio module
- Keep it simple — don't add scoring or lives until it works

---

**Hour 19-21 — Polish & Bug Fixing**

- Smooth out any janky transitions between states
- Add simple sound effects if you have a speaker
- Make sure buttons feel responsive
- Fix any performance issues on the Pi

---

**Hour 22-23 — Stress Test**

- Run it continuously and make sure it doesn't crash
- Test all state transitions
- Make sure the mic doesn't cause audio thread crashes over time

---

**Hour 24 — Final touches**

- Clean up your code structure
- Maybe add a startup animation
- Done 🎉

---

**Biggest risks to watch for:**

- Display setup eating too much time — get this done first, everything depends on it
- Audio latency feeling sluggish — use a separate thread early on
- Scope creep on the face art — simple geometric shapes are fine, resist perfectionism

**My honest advice:** Get the face drawing and audio reactivity done first. That alone will feel impressive and everything else builds on top of it. If you're running short on time, skip the second mini game.