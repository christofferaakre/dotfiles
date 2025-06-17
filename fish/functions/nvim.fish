
function nvim
	set args
	for a in $argv
		if string match -rq '^-' -- $a
            	     # Option/switch, pass as-is
	             set args $args $a
	        else
	             # Positional argument: convert path
                     set args $args (cygpath -m $a)
                end
        end

	command nvim $args
end

