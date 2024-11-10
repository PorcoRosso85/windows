#Requires AutoHotkey v2.0

LControl::LAlt
LAlt::LControl

; ESCキーを「左Alt＋Shift＋0」とESCキーとして機能させる
$Esc:: {
    static lastPressTime := 0
    currentTime := A_TickCount

    if (currentTime - lastPressTime < 500) {
        ; 連打（500ミリ秒以内に再度押された）場合はESCキーを送信
        Send "{Esc}"
    } else {
        ; 1回押しの場合は「左Alt＋Shift＋0」を送信
        Send "!+0"
    }

    ; 最後に押された時間を更新
    lastPressTime := currentTime
}

; Ctrl＋Spaceを「左Alt＋Shift＋９」と「Ctrl+Space」として機能させる
^Space:: {
    static lastPressTime := 0
    currentTime := A_TickCount

    if (currentTime - lastPressTime < 400) {
        ; 連打（400ミリ秒以内に再度押された）場合はCtrl＋Spaceを送信
        ; Send "^{Space}"
    } else {
        ; 1回押しの場合は「左Alt＋Shift＋９」と変換キーを送信
        Send "!+9"
        Send "{vk1C}"
    }

    ; 最後に押された時間を更新
    lastPressTime := currentTime
}

;Ctrl+Shift+qを「Alt+F4」として機能させる
^+q:: Send "!{F4}"