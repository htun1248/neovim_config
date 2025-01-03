Add the following content to `settings.json`:
```json
{
    // UI
    "workbench.startupEditor": "none",
    "window.density.editorTabHeight": "compact",
    "workbench.activityBar.location": "top",
    "editor.cursorBlinking": "solid",
    "editor.minimap.enabled": false,
	"editor.glyphMargin": false,
	"editor.showFoldingControls": "never",
    "breadcrumbs.enabled": false,
    "window.menuBarVisibility": "toggle",

    // Font
    "editor.fontFamily": "Fira Code, Consolas, HarmonyOS Sans SC",
    "editor.lineHeight": 1.0,
    "editor.fontSize": 16,
    // "editor.fontWeight": "500",

    // Vim
    "vim.easymotion": true,
    "vim.incsearch": true,
    "vim.useSystemClipboard": true,
    "vim.hlsearch": true,
    "vim.leader": ",",
    "vim.normalModeKeyBindings": [
        { "before": [ "<leader>", "w" ], "commands": [ ":w" ] },
        { "before": [ "<A-h>" ], "commands": [ ":tabp" ] },
        { "before": [ "<A-l>" ], "commands": [ ":tabn" ] },
        { "before": [ "<leader>", "b", "d" ], "commands": [ ":bdelete" ] },
        { "before": [ "<leader>", "q" ], "commands": [ ":bdelete" ] },
        { "before": [ "<C-l>" ], "after": [ "<C-w>", "l" ]},
        { "before": [ "<C-h>" ], "after": [ "<C-w>", "h" ]},
        { "before": [ "<C-j>" ], "after": [ "<C-w>", "j" ]},
        { "before": [ "<C-k>" ], "after": [ "<C-w>", "k" ]},
    ],
    "extensions.experimental.affinity": {
        "vscodevim.vim": 1,
    },

    // Other
    "editor.stickyScroll.enabled": false,
}
```

Add the following content to `keybindings.json`:
```json
[
    {
        "key": "alt+h",
        "command": "vim.remap",
        "when": "inputFocus && vim.mode == 'Normal'",
        "args": {
            "after": [ "<A-h>" ]
        }
    },
    {
        "key": "alt+l",
        "command": "vim.remap",
        "when": "inputFocus && vim.mode == 'Normal'",
        "args": {
            "after": [ "<A-l>" ]
        }
    },
]
```