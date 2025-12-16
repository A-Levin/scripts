# scripts
my scripts with description

## layout-monitor.sh
Мониторит активное окно и переключает количество раскладок клавиатуры:
- **3 раскладки** (us, ru, ara) для: Firefox, Telegram, LibreOffice, Revolt, Discord, Obsidian
- **2 раскладки** (us, ru) для всех остальных приложений

Использует xdotool для получения класса окна и setxkbmap для смены раскладок.
Запускается через autostart (`~/.config/autostart/Layout Monitor.desktop`).

Путь установки: `~/.local/bin/layout-monitor.sh`
