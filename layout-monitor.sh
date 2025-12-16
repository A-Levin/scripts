#!/bin/bash
previous_class=""

while true; do
    current_class=$(xdotool getactivewindow getwindowclassname 2>/dev/null)
    
    if [ "$current_class" != "$previous_class" ]; then
        case $current_class in
            "firefox"|"Firefox"|"telegram-desktop"|"TelegramDesktop"|"libreoffice-writer"|"libreoffice-calc"|"libreoffice-impress"|"libreoffice-draw"|"Soffice"|"LibreOffice"|"revolt"|"Revolt"|"discord"|"Discord"|"obsidian"|"Obsidian")
                # 3 раскладки для Firefox, Telegram, Revolt, Discord, LibreOffice и Obsidian
                setxkbmap -layout us,ru,ara -variant ,, -option grp:ctrl_space_toggle 2>/dev/null
                ;;
            *)
                # 2 раскладки для всех остальных приложений
                setxkbmap -layout us,ru -variant , -option grp:ctrl_space_toggle 2>/dev/null
                ;;
        esac
        previous_class="$current_class"
    fi
    
    sleep 0.5
done
