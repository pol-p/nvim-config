# Mi Configuración de Neovim

Una configuración moderna y minimalista de Neovim usando lazy.nvim como gestor de plugins.

## Características

- 📦 **Gestión de plugins**: [lazy.nvim](https://github.com/folke/lazy.nvim)
- 🎨 **Tema**: [Catppuccin Mocha](https://github.com/catppuccin/nvim)
- 🔍 **Búsqueda**: [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- 📁 **Explorador de archivos**: [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
- 🌳 **Sintaxis mejorada**: [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- 📊 **Barra de estado**: [Lualine](https://github.com/nvim-lualine/lualine.nvim)
- 🔧 **LSP**: [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) con Mason
- ✂️ **Snippets**: [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- 🔄 **Autopairs**: Cierre automático de paréntesis y comillas
- 🚀 **Productividad**: nvim-surround para manipulación de texto
- ⚡ **Atajos personalizados**: Keymaps optimizados para flujo de trabajo

## Requisitos

- **Neovim** >= 0.9.0
- **Git** para la instalación de plugins
- **Node.js** (para algunos LSP servers)
- **Go** (para gopls)
- Una terminal con soporte para true color

## 🛠️ Instalación

### 1. Hacer backup de tu configuración actual (opcional)

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

### 2. Clonar esta configuración

```bash
git clone https://github.com/tu-usuario/nvim-config ~/.config/nvim
```

### 3. Abrir Neovim

```bash
nvim
```

Los plugins se instalarán automáticamente en el primer arranque.

## ⌨️ Keymaps Principales

### General
- `<Space>` - Leader key

### Telescope (Búsqueda)
- `<leader>ff` - Buscar archivos
- `<leader>fg` - Buscar texto (live grep)
- `<leader>fb` - Buscar buffers
- `<leader>fh` - Buscar ayuda

### Neo-tree (Explorador)
- `<leader>e` - Toggle Neo-tree
- `<leader>o` - Focus en Neo-tree

### Navegación entre ventanas
- `<C-h>` - Ventana izquierda
- `<C-l>` - Ventana derecha
- `<C-j>` - Ventana inferior
- `<C-k>` - Ventana superior
- `<leader>x` - Cerrar ventana actual

### LSP
- `gd` - Ir a definición
- `K` - Mostrar documentación
- `<leader>ca` - Acciones de código
- `<leader>d` - Mostrar diagnósticos
- `[d` / `]d` - Navegar entre diagnósticos

### Autocompletado
- `<Tab>` - Siguiente sugerencia / expandir snippet
- `<S-Tab>` - Sugerencia anterior / saltar atrás en snippet
- `<Enter>` - Confirmar selección
- `<C-Space>` - Forzar autocompletado
- `<C-e>` - Cancelar autocompletado

### Productividad
- `<leader>d` - Duplicar línea actual
- `<leader>h` - Limpiar resaltado de búsqueda
- `<leader>w` - Guardar archivo rápido
- `<C-a>` - Seleccionar todo
- `<C-j>` - Mover línea/selección hacia abajo
- `<C-k>` - Mover línea/selección hacia arriba

### Manipulación de texto (nvim-surround)
- `ys{movimiento}{carácter}` - Añadir delimitador alrededor
- `ds{carácter}` - Eliminar delimitador
- `cs{origen}{destino}` - Cambiar delimitador
- Ejemplo: `cs"'` cambia "hola" por 'hola'

### Comandos nativos de Vim (ya disponibles)
- `ci"` - **C**ambiar dentro de "comillas" (borra y entra en insert)
- `di"` - **D**eliminar dentro de "comillas" (solo borra)
- `yi"` - **C**opiar dentro de "comillas"
- `vi"` - **S**eleccionar dentro de "comillas"
- Funciona con: `"` `'` `` ` `` `(` `)` `[` `]` `{` `}` `<` `>`

### Modo visual mejorado
- `<C-j>` / `<C-k>` - Mover selección arriba/abajo manteniendo selección
- `<` / `>` - Indentar izquierda/derecha manteniendo selección

## 🏛️ Estructura

```
~/.config/nvim/
├── init.lua                 # Configuración principal
├── lua/
│   ├── config/
│   │   └── lazy.lua        # Configuración de lazy.nvim
│   └── plugins/
│       ├── colorscheme.lua # Tema Catppuccin
│       ├── lsp.lua         # LSP y autocompletado
│       ├── lualine.lua     # Barra de estado
│       ├── neotree.lua     # Explorador de archivos
│       ├── productivity.lua # Atajos de productividad
│       ├── telescope.lua   # Búsqueda fuzzy
│       └── treesitter.lua  # Sintaxis mejorada
├── lazy-lock.json          # Versiones de plugins (generado)
└── README.md               # Este archivo
```

## 🎨 Personalización

### Cambiar tema

Edita `lua/plugins/colorscheme.lua` y cambia `flavour`:

```lua
flavour = "latte"  -- latte, frappe, macchiato, mocha
```

### Añadir nuevos plugins

Crea un nuevo archivo en `lua/plugins/` o añade al existente:

```lua
return {
  "autor/plugin",
  config = function()
    -- configuración
  end
}
```

### Configurar nuevos LSP

Edita `ensure_installed` en `lua/plugins/lsp.lua`:

```lua
ensure_installed = {'gopls', 'lua_ls', 'ts_ls', 'pyright'},
```

## ⚙️ Solución de problemas

### Los plugins no se instalan
1. Verifica tu conexión a internet
2. Ejecuta `:Lazy sync` en Neovim

### LSP no funciona
1. Verifica que el servidor esté instalado: `:Mason`
2. Revisa los logs: `:LspLog`

### Iconos no se muestran
1. Instala una Nerd Font
2. Configura tu terminal para usar la fuente

## 📚 Recursos útiles

- [Documentación de Neovim](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [Awesome Neovim](https://github.com/rockerBOO/awesome-neovim)

## 📄 Licencia

MIT License
