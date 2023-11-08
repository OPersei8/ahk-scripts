#Requires AutoHotkey v2.0

filterEmptyLine := true


^!v::
{
    clipboardText := A_Clipboard 
    lines := StrSplit(clipboardText, "`n")

    sbToSQL := RegExMatch(clipboardText, "\.append\(`"")
    if(!sbToSQL){
        prefix := InputBox("prefix").value
    }
    output := ""
    for index, line in lines {
        if (filterEmptyLine && StrLen(line) = 0)
                continue

        if (sbToSQL) {
            output .= RegExReplace(line, ".*\(`"", "")
            output := RegExReplace(output, "`s*`"`s*\);`s*$", "")
            output .= "`n"
        } else {           
            output .= prefix . ".append(`" " . RegExReplace(line, "\R", "") . " `");`n"
        }
    }

    A_Clipboard := output
    Send "^v"
}