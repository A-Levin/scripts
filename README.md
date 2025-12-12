# Scripts

Personal shell scripts collection.

## grayscale

Toggle grayscale mode on Linux with NVIDIA + Intel hybrid graphics.

### Usage

```bash
grayscale        # toggle
grayscale on     # enable grayscale
grayscale off    # disable grayscale
```

### Requirements

- NVIDIA GPU with `nvidia-settings`
- Intel GPU with xrandr CTM support
- X11

### Installation

```bash
cp grayscale ~/bin/
chmod +x ~/bin/grayscale
```
