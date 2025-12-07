# clip-image

Save clipboard images to a file. Cross-platform (macOS, Linux, Windows).

Enable LLM tools to add your clipboard images to files they may be working on.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## Installation

### Homebrew (macOS/Linux)

```bash
brew install jadnohra/tap/clip-image
```

### Manual

```bash
curl -o /usr/local/bin/clip-image https://raw.githubusercontent.com/jadnohra/clip-image/main/clip-image
chmod +x /usr/local/bin/clip-image
```

## Usage

```bash
clip-image                    # saves to system temp directory
clip-image /path/to/image.png # saves to specified path
```

Example:
```bash
$ clip-image
Image saved to: /tmp/clipboard-image.png

$ clip-image ~/screenshot.png
Image saved to: /Users/you/screenshot.png
```

## How It Works

| Platform | Method |
|----------|--------|
| **macOS** | Uses `osascript` to access clipboard as PNG |
| **Linux** | Uses `xclip` to read clipboard image data |
| **Windows** | Uses PowerShell with `System.Windows.Forms.Clipboard` |

## Requirements

- **macOS**: None (uses built-in osascript)
- **Linux**: `xclip` — install with `sudo apt install xclip`
- **Windows**: PowerShell (included with Windows)
- **All**: Python 3.6+

## License

MIT
