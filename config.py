#  _    __           __                      ______            _____
# | |  / /___  _____/ /_____  _________ _   / ____/___  ____  / __(_)___ _
# | | / / __ \/ ___/ __/ __ \/ ___/ __ `/  / /   / __ \/ __ \/ /_/ / __ `/
# | |/ / /_/ (__  ) /_/ /_/ / /  / /_/ /  / /___/ /_/ / / / / __/ / /_/ /
# |___/\____/____/\__/\____/_/   \__, /   \____/\____/_/ /_/_/ /_/\__, /
#                               /____/                           /____/

import os
import subprocess
from dbus_next.aio import *
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal
from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen

mod = "mod4"
alt = "mod1"
terminal = guess_terminal()

# Hooks
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('guake')
    subprocess.Popen([home])

@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('~/scripts/first.sh')
    subprocess.Popen([home])

# Hooks
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('alacritty+tmux')
    subprocess.Popen([home])

# Hooks
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('udiskie+args')
    subprocess.Popen([home])

# Hooks
@hook.subscribe.startup_once
def autostart():
    home = os.path.expanduser('blueberry-tray')
    subprocess.Popen([home])

keys = [
    # Switch between windows
    Key([mod], "h", lazy.layout.left(), desc="Move focus to left"),
    Key([mod], "l", lazy.layout.right(), desc="Move focus to right"),
    Key([mod], "j", lazy.layout.down(), desc="Move focus down"),
    Key([mod], "k", lazy.layout.up(), desc="Move focus up"),

    # Moving between monitors
    Key([mod], "Tab", lazy.next_screen(), desc="Toggle between monitors"),
    # Key([mod], "space", lazy.layout.next(), desc="Move window focus to other window"),

    # Move windows between left/right columns or move up/down in current stack.
    Key([mod, "shift"], "h", lazy.layout.shuffle_left(), desc="Move window to the left"),
    Key([mod, "shift"], "l", lazy.layout.shuffle_right(), desc="Move window to the right"),
    Key([mod, "shift"], "j", lazy.layout.shuffle_down(), desc="Move window down"),
    Key([mod, "shift"], "k", lazy.layout.shuffle_up(), desc="Move window up"),

    # Grow windows
    Key([mod, "control"], "h", lazy.layout.grow_left(), desc="Grow window to the left"),
    Key([mod, "control"], "l", lazy.layout.grow_right(), desc="Grow window to the right"),
    Key([mod, "control"], "j", lazy.layout.grow_down(), desc="Grow window down"),
    Key([mod, "control"], "k", lazy.layout.grow_up(), desc="Grow window up"),

    # Toggle between different layouts as defined below
    Key([mod], "f", lazy.next_layout(), desc="Toggle between layouts"),
    Key([mod], "q", lazy.window.kill(), desc="Kill focused window"),
    Key([mod, "control"], "r", lazy.reload_config(), desc="Reload the config"),
    Key([mod, "control"], "q", lazy.shutdown(), desc="Shutdown Qtile"),
    Key([mod], "r", lazy.spawncmd(), desc="Spawn a command using a prompt widget"),

    # Lang change section
    Key([alt], "Shift_L",  lazy.widget["keyboardlayout"].next_keyboard()),

    # Soft spawn section
    Key([mod], "Return", lazy.spawn(terminal), desc="Launch terminal"),
    # Key([mod], "e", lazy.spawn("emacsclient -c -a emacs")),
    Key([mod, "shift"], "e", lazy.spawn("emacs ~/.config/qtile/config.py ")),
    Key([mod], "m", lazy.spawn("librewolf")),
    Key([mod], "n", lazy.spawn("firefox")),

    # multiple stack panes
    Key(
        [mod, "shift"],
        "Return",
        lazy.layout.toggle_split(),
        desc="Toggle between split and unsplit sides of stack",
    ),
]

groups = [Group(i) for i in "uiop"]
for i in groups:
    keys.extend(
        [
            # mod1 + letter of group = switch to group
            Key(
                [mod],
                i.name,
                lazy.group[i.name].toscreen(),
                desc="Switch to group {}".format(i.name),
            ),
            # mod1 + shift + letter of group = switch to & move focused window to group
            Key(
                [mod, "shift"],
                i.name,
                lazy.window.togroup(i.name, switch_group=True),
                desc="Switch to & move focused window to group {}".format(i.name),
            ),
        ]
    )

layouts = [

    layout.Columns
    (
    border_focus_stack=["#43b3ae", "#c6e6e3"],
    border_width=1,
    margin = 5,
    border_focus='#ffffff',
    border_normal='#000000'
    ),

    layout.Max(),
]

widget_defaults = dict(
    font="Mononoki NF",
    fontsize=13,
    padding=3,
)
extension_defaults = widget_defaults.copy()

screens = [Screen(top=bar.Bar(
            [
                widget.CurrentLayout(),
                widget.GroupBox(),
                widget.Prompt(),
                widget.WindowName(),
                widget.Chord(
                    chords_colors={
                        "launch": ("#ff0000", "#ffffff"),
                    },
                    name_transform=lambda name: name.upper(),
                ),
                widget.Systray(),
                widget.Net(interface="wlp0s20f0u5"),

                # Keyboard layout
                widget.KeyboardLayout(configured_keyboards=['us',
                                                            'ru',
                                                            # 'it'
                                                            ]),

                widget.Clock(format="%Y-%m-%d %a %I:%M:%S %p"),

                widget.QuickExit(),
            ],
            24,
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(), start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(), start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front()),
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: list
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),  # gitk
        Match(wm_class="makebranch"),  # gitk
        Match(wm_class="maketag"),  # gitk
        Match(wm_class="ssh-askpass"),  # ssh-askpass
        Match(title="branchdialog"),  # gitk
        Match(title="pinentry"),  # GPG key password entry
    ]
)
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True

# If things like steam games want to auto-minimize themselves when losing
# focus, should we respect this or not?
auto_minimize = True

# When using the Wayland backend, this can be used to configure input devices.
wl_input_rules = None

wmname = "LG3D"
