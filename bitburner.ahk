clickNTimesAlt := 1
clickNTimesCtrl := 1


!^R::
InputBox , clickNTimesAlt, ALT repeat how many time?, input number, , 300,300
InputBox , clickNTimesCtrl, CTRL repeat how many time?, input number, , 300,300
return

!^T::
    MsgBox , alt repeating: "%clickNTimesAlt%" ctrl repeating: "%clickNTimesCtrl%"
    return


!LButton::
    MouseClick, left, ,, clickNTimesAlt, 50
    return
^LButton::
    MouseClick, left, ,, clickNTimesCtrl, 50
    return



f8::
    Reload
    return

