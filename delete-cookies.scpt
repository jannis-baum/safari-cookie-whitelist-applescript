on run (del_rows)

    tell application "System Events"
        tell application process "Safari"
            tell window "Privacy" to tell sheet 1
                repeat with r in del_rows
                    select row (r as number) of table 1 of scroll area 1
                    click button "Remove"
                end repeat
                click button "Done"
            end tell
        end tell
    end tell

end run

