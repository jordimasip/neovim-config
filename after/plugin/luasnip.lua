if not pcall(require, "luasnip") then
  return
end

local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
    hystory = false,

    updateevents = "TextChanged,TextChangedI",

    enable_autosnippets = true,
}

-- <c-k> is my expansion key
-- this will expand the current item or jump to the next item within the snippet.
--vim.keymap.set({ "i", "s" }, "<c-m>", function()
--  if ls.expand_or_jumpable() then
--    ls.expand_or_jump()
--  end
-- end, { silent = true })

-- <c-j> is my jump backwards key.
-- this always moves to the previous item within the snippet
--vim.keymap.set({ "i", "s" }, "<c-n>", function()
--  if ls.jumpable(-1) then
--    ls.jump(-1)
--  end
-- end, { silent = true })


-- <c-l> is selecting within a list of options.
-- This is useful for choice nodes (introduced in the forthcoming episode 2)
--vim.keymap.set("i", "<c-l>", function()
--  if ls.choice_active() then
--    ls.change_choice(1)
--  end
-- end)

-- Snippets
local s = ls.s
local i = ls.i
local t = ls.t

ls.add_snippets('php', {
    s('deb', {
        t('Utils::getFileLogger()->debug("/////////////////////// ".print_r('),
        i(0, 'value'),
        t(',true));')
    })
})
