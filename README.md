# PharoTweaks
Adjustments to the base Pharo image

Package `MacOSTweaks` with:

- Key bingings fix: adjusts the behavior of Option/Cmd + arrows in macOS to comply with the OS standard.
- Command [Shift] + \` (backtick) to switch windows
- macOs themes (Dark Sierra Theme from Ignacio Sniechowski's for Pharo 6)

```
Gofer it
      url: 'http://github.com/juliangrigera/PharoTweaks/';
      package: 'MacOSTweaks';
      load.
MacOSTwearksScriptsRunner applySettings.
"Or, to set the dark theme"
MacOSTwearksScriptsRunner applySettingsDark.
```
To install only the Option/Cmd + arrows fix:

```
Gofer it
      url: 'http://github.com/juliangrigera/PharoTweaks/';
      package: 'MacOSTweaks';
      load.
```
