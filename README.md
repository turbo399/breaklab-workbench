# BreakLab

**Chop it. Flip it. Loop it.** BreakLab is a local-first break editor for making quick loops, slicing breaks, auditioning chops from a MIDI keyboard, and exporting material for samplers such as the M-VAVE FM-1/ZP12 and SLOOP.

## Run it

Open index.html in Brave, Chromium, or Chrome. Audio is processed in your browser and stays on your computer.

For MIDI input, use a Chromium-based browser, connect the keyboard before opening BreakLab, then choose Connect MIDI keyboard and select its input.

## Install the Linux desktop launcher

The launcher opens BreakLab in an app-style Chromium/Brave window. It does not require Node, Electron, or an internet connection after download. You need one of Brave, Chromium, or Google Chrome installed.

1. Download this repository as a ZIP and extract it.
2. Open a terminal in the extracted repository folder (usually named breaklab-workbench-main).
3. Run ./install-linux.sh
4. Find BreakLab in the Applications menu. To remove it later, run ./uninstall-linux.sh from the extracted folder.

## Features

- Load WAV or MP3 breaks, detect/correct source BPM, and stretch to the project tempo.
- Create equal or hand-drawn uneven slices; preview, trim, and add slices.
- Trigger slices with a computer keyboard or external MIDI keyboard. Chromatic mapping includes black keys.
- Set slice start/end points, pitch, and time stretch; apply pitch/stretch to selected slices together.
- Shape sound with filter, resonance, drive, phaser, tempo-synced delay, and reverb.
- Build 1–4 bar patterns with per-bar randomisation, swing, reversal, undo, and MIDI export.
- Export processed WAV loops, 12-bit ZP12 sample packs, and SLOOP sample packs with matching MIDI.
- Choose retro skins including BBC Micro, ZX Spectrum, Atari ST, Amiga Workbench, Commodore 64, Vector CRT, and 70s/80s/90s looks.
- Save and reopen .bbwp projects. Skin and Break Scope preferences are remembered in the browser.

## Audio and device notes

BreakLab is an editor/exporter; it does not directly write samples to the FM-1. Export the sample pack, then load the WAVs and MIDI using the device's firmware/editor workflow. Browser Web MIDI availability depends on the browser and device permissions. Bluetooth audio can add audible latency; wired audio is best for timing-critical use.

## Contributing

Bug reports, feature ideas, and pull requests are welcome. Keep changes self-contained where possible so the single-file browser version remains easy to run.

## License

BreakLab is distributed under the GNU General Public License v3.0 or later. See LICENSE.
