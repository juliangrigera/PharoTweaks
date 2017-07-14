# PharoTweaks
Adjustments to the base Pharo image

Package `MacOSTweaks` with:

- Key bindings fix: adjusts the behavior of Option ⌥ and Cmd ⌘ + arrows in macOS to comply with the OS standards, namely:
	- ⌥ + →: navigate to next word
	- ⌥ + ←: navigate to beginning of word
	- ⌘ + ← / →: home / end of line
	- ⌘ +  ↑ / ↓: home / end of text (equivalent to Ctrl+home/end on Windows)
- ⌘ + \` (backtick) /  ⌘ ⇧ + \` to switch windows back and forth
- macOs themes (Dark Sierra Theme by Ignacio Sniechowski)

```smalltalk
Metacello new
	baseline: 'MacOSTweaks';
	repository: 'github://juliangrigera/PharoTweaks';
	load.
```
If you prefer the Sierra _light_ theme:
```smalltalk
MacOSTweaksScriptsRunner setSierraLightTheme
```
