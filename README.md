# PharoTweaks
Adjustments to the base Pharo image. Works in Pharo 6, 7, 8 and 10 (9 incoming:)).

Package `MacOSTweaks` with:

- Key bindings fix: corrects the behavior of Option ⌥ and Cmd ⌘ + arrows in macOS to comply with the OS standards:
	- ⌥ + →: navigate to next word
	- ⌥ + ←: navigate to beginning of word
	- ⌥ + backspace: delete previous word	
	- ⌘ + ← / →: home / end of line
	- ⌘ +  ↑ / ↓: home / end of text (equivalent to Ctrl+home/end on Windows)
- ⌘ + \` (backtick) /  ⌘ ⇧ + \` to switch windows back and forth
- macOS themes (Dark Sierra Theme by Ignacio Sniechowski)

```smalltalk
Metacello new
	baseline: 'MacOSTweaks';
	repository: 'github://juliangrigera/PharoTweaks';
	load.
```
The theme is set according Pharo's default (P6 dark, P7 light, P8 dark), but can be set with:
```smalltalk
MacOSTweaksScriptsRunner new setSierraLightTheme
MacOSTweaksScriptsRunner new setSierraDarkTheme
```
