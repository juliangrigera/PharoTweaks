# PharoTweaks
Adjustments to the base Pharo image. Works in Pharo 6 and Pharo 7.

Package `MacOSTweaks` with:

- Key bindings fix: corrects the behavior of Option ⌥ and Cmd ⌘ + arrows in macOS to comply with the OS standards, namely:
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
The theme is set according Pharo's default (P6 dark, P7 light), but can be set with:
```smalltalk
MacOSTweaksScriptsRunner setSierraLightTheme
MacOSTweaksScriptsRunner setSierraDarkTheme
```
