# fasd wrapper for fish

Plugin for [fish] to integrate [fasd] into efficiency-seeking workflows.
Minimal without aliases, you can add aliases and completions for it easily.

Example:

`functions/z.fish`
```fish
function z -d "Change directory to first match"
  fasd_cd -d $argv
  end
```

`completions/z.fish`
```fish
complete -c z -a "(__fasd_print_completion -d)" -f
```

## Prerequisite

You will need [fasd].

## Install

With [fisherman]:

```fish
$ fisher jomik/fish-fasd
```

For more info, check out the complete [fasd documentation][fasd].

[fish]: https://fishshell.com
[fasd]: https://github.com/clvv/fasd
[fisherman]: https://github.com/fisherman/fisherman

