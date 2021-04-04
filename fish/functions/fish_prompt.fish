function fish_prompt
    if [ $status -ne 0 ]
        echo -n (set_color cyan)"; "
    else
        echo -n "; "
    end
end
