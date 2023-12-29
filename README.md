# PharoTweaks
Adjustments to the base Pharo image for macOS. Works in Pharo 6 - 11.

Features:

- Key bindings fix: corrects the behavior of Option ⌥ and Cmd ⌘ + arrows in macOS to comply with the OS standards:

| Shortcut	| Action	|
| ---		| ---		|
| ⌥ + → | navigate to next word |
| ⌥ + ← | navigate to beginning of word |
| ⌥ + ⌫ | delete previous word	 |
| ⌘ + ← / → | home / end of line |
| ⌘ + ⌫ | delete previous line |
| ⌘ +  ↑ / ↓ | home / end of text (equivalent to Ctrl+home/end on Windows) |
| ⌘ + \` /  ⌘ ⇧ + \` | switch windows back and forth (key is backtick / grave accent) |

- macOS themes (Dark Sierra Theme by Ignacio Sniechowski)

```smalltalk
Metacello new
	baseline: 'MacOSTweaks';
	repository: 'github://juliangrigera/PharoTweaks';
	load.
```
The theme is set according Pharo's default (P7 light, P8 dark, etc), but can be set manually with:
```smalltalk
MacOSTweaksScriptsRunner new setSierraLightTheme
MacOSTweaksScriptsRunner new setSierraDarkTheme
```
