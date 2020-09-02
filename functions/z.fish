function z -d "show fasd tree"
    set -l tgt_dir (fasd -dlR | fzf --height 50% --reverse)
    if [ (echo $tgt_dir) ]
        cd $tgt_dir
    end
end
