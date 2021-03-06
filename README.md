# atom-osx-uninstaller

What is it?

- Script for archiving atom.io configs. (pending)
- Script for completely uninstalling atom.io from OS X. 
- Script for restoring atom.io configs after fresh installation. (pending)

## How to fully uninstall Atom from OS X

1) Backup and configs you want to save (pending)
```
$ cd ~/.atom
$ mkdir ../atom_configs_backup
$ cp *.json ../atom_configs_backup
$ cp *.cson ../atom_configs_backup
$ cp *.coffee ../atom_configs_backup
$ cp *.less ../atom_configs_backup
$ apm list --installed --bare > packages.list
$ cp packages.list ../atom_configs_backup
```

The list of actual files is something akin to this, depending on what you have installed:

- config.cson
- github.cson
- init.coffee
- keymap.cson
- kite-config.json
- package-deps-state.json
- projects.cson
- snippets.cson
- styles.less
- packages.list

2) Delete the following files and folders from your system:
```
 /Applications/Atom.app
 ~/.atom
 /usr/local/bin/atom
 /usr/local/bin/apm
 ~Library/Application Support/Atom/
 ~/Library/Preferences/com.github.atom.plist
 ~/Library/Application Support/com.github.atom.ShipIt
 ~/Library/Application Support/com.github.GitHub.ShipIt
 ~/Library/Saved Application State/com.github.atom.savedState
 ~/Library/Caches/com.github.atom
 ~/Library/Caches/Atom
```

NOTE: You will only have the ShipIt locations if you used the Atom > Install Shell Commands menu item.

_If you are only removing Atom, you are now done._

3) Reinstall Atom

- download atom app from web: https://atom.io/
- unzip/untar the archive
- drag the Atom.app file into /Applications/
- launch atom.

_If you simply want a clean reinstall, you are done._

4) Restore configs from previous install. (pending)

```
$ cd ~/.atom
$ cp ../atom_configs_backup/packages.list .
$ apm install --package-file packages.list
```

Once completed, run Atom and you should be restored to your previous setup.

NOTE: One of the major issues with atom is packages that bring the system down. 
Be careful on reinstalling packages.



 
