function fish_prompt
    if [ $status -ne 0 ]
        echo -n (set_color brcyan)"; "
    else
        if test -n "$SSH_TTY"
            echo -n (set_color brmagenta)"; "
        else
            echo -n (set_color bryellow)"; "
        end
    end
end
