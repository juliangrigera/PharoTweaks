# PharoTweaks
Adjustments to the base Pharo image

Package `MacOSTweaks` with:

- Key bingings fix: adjusts the behavior of Option/Cmd + arrows in macOS to comply with the OS standard.
- Command [Shift] + \` (backtick) to switch windows
- macOs themes (Dark Sierra Theme from Ignacio Sniechowski's for Pharo 6)

```
(IceRepositoryCreator new
	url: 'git@github.com:juliangrigera/PharoTweaks.git';
	createRepository) updatePackage: #MacOSTweaks.
(Smalltalk at: #MacOSTwearksScriptsRunner) perform: #applySettings.
"Or, to set the dark theme"
(Smalltalk at: #MacOSTwearksScriptsRunner) perform: #applySettingsDark.
```
To install only the Option/Cmd + arrows fix:

```
(IceRepositoryCreator new
	url: 'git@github.com:juliangrigera/PharoTweaks.git';
	createRepository) updatePackage: #MacOSTweaks.
```
