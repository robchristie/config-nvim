-- Map FreeCAD extensions to proper filetypes
vim.filetype.add({
  extension = {
    FCMacro = "python", --FreeCAD macro (Python code)
    FCScript = "python", --FreeCAD script (Python code)
    FCMat = "yaml", --FreeCAD material card
    FCParam = "xml", --FreeCAD parameter file
    fctb = "json", --CAM tool bit file (JSON format)
    fctl = "json", -- CAM tool library file (JSON format)
  },
})

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            organizeImports = true,
            format = { preview = true },
          },
        },
      },
      basedpyright = {
        settings = {
          basedpyright = {
            analysis = {
              inlayHints = false,
              typeCheckingMode = "standard",
              extraPaths = {
                -- "~/git/FreeCAD/freecad-stubs/freecad_stubs/",
                -- "~/.local/pipx/venvs/freecad-stubs/lib/python3.11/site-packages",
                "/local/users/christir/tools/freecad/squashfs-root/usr/lib", -- to find FreeCAD and FreeCADGui
                -- "/usr/lib/freecad/Ext/", -- PySide alias for PySide6
                -- "/opt/FreeCAD_1_0_Qt6/lib/", -- to find FreeCAD and FreeCADGui
                -- "/opt/FreeCAD_1_0_Qt6/Ext/", -- PySide alias for PySide6
              },
              useLibraryCodeForTypes = true, -- infer type from code
            },
          },
        },
      },
    },
  },
}
