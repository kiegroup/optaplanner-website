#!/bin/bash

convertToAdoc () {
    while read line; do
        eval echo "$line"
    done < header
    echo
    awk '
!/^[ ]+/ {if (match(last_line, "^[ ]+")) {print "----"}}
/(NOTE)|(Note)|(IMPORTANT)|(Important)|(WARNING)|(Warning)/ {print ""}
/.*/ {last_line=$0}
# End of non-nexting commands
/^From [*0-9.FinalCRBetaAlpha]+ to [*0-9.FinalCRBetaAlpha]+/ {print "====\n"; print "== From " $2 " to " $4; print "===="; next} # Titles
/[-]{5,}/ {next} # Titles
/^[a-zA-Z ]+ in .*\.drl.*/ {print "\n" $0; print "[source, drl]"; print "----"; next}
/^[a-zA-Z ]+ in .*\.java.*/ {print "\n" $0; print "[source, java]"; print "----"; next}
/^[a-zA-Z ]+ in .*\.xml.*/ {print "\n" $0; print "[source, xml]"; print "----"; next}
/.*/ {print $0} # Unmatched lines (add next everywhere)
END { print "====" }
' | sed -E '#s/^([a-zA-Z].*) ([a-zA-Z]*\.*[a-zA-Z]+\(\))/\1 `\2`/g;  # Methods
#s/^([a-zA-Z].*) ([0-9]+\.[0-9]+\.[*0-9]\.(Final|CR|Beta|Alpha)[0-9A-Za-z]*)/\1 `\2`/g;  # Versions
#s/(<[^>]+>)/`\1`/g; # XML elements
s/\[MAJOR\]\s+/====\n\n=== icon:exclamation-circle[] Major\n\n====\n/g; # MAJOR
s/\[MINOR\]\s+/====\n\n=== icon:info-circle[] Minor\n\n[.hidden-section]\n====\n/g; # MINOR
s/\[IMPL_DETAIL\]\s+/====\n\n=== icon:user-secret[] Implementation detail\n\n[.hidden-section]\n====\n/g; # IMPL_DETAIL
s/\[RECOMMENDED\]\s+/====\n\n=== icon:thumbs-up[] Recommended\n\n====\n/g; # RECOMMENDED
s/\[README\]\s+/====\n\n=== icon:book[] Readme\n\n====\n/g; # README
s/^[ ]{4}//g; # Code examples default indentation
s/(^[a-zA-Z ]+ in )(.*\.[a-zA-Z]+)(.*)/\1`\2`\3/g; # Filenames highlighting in source examples
s/Note: /NOTE: /g; # Standardize
s/Warning: /WARNING: /g; # Standardize
s/Important: /IMPORTANT: /g; # Standardize
s/note: /NOTE: /g; # Standardize
s/warning: /WARNING: /g; # Standardize
s/important: /IMPORTANT: /g; # Standardize
s/NOTE: /Note: /g; # Dont create a block
s/WARNING: /Warning: /g; # Dont create a block
s/IMPORTANT: /Important: /g; # Dont create a block
' | sed -E '0,/====/{s/====//}' | awk '
/^====/ {if (last_line == "====") {next;}}
/^$/ {if (last_line == "====") {print last_line "\n" $0;} else {print $0}; last_line = $0; next}
/.*/ {print $0;}
' | awk 'BEGIN {RS = "====\n\n====\n"}  # Remove this weird pattern that we substituted in
{print $0}
'
}

previous=""
version='5.*'

for file in `ls upgradeRecipe*.txt`; do
    newfile=`echo "$file" | sed 's/\.txt/.adoc/g'`
    previous="$version"
    version=`echo "$file" | sed 's/upgradeRecipe//' | sed 's/\.txt//'`
    cat "$file" | convertToAdoc > "$newfile"
    # rm "$file"
done