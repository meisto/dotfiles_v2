-- author: meisto
-- date: 2024-03-10 23:54:20

return {
   -- Utility
   'folke/which-key.nvim',
   'navarasu/onedark.nvim',
   'ggandor/leap.nvim',
   {
      'nvim-telescope/telescope.nvim',
      tag = '0.1.5',
      dependencies={"nvim-lua/plenary.nvim"},
   },
}

-- Other interesting addons:
-- https://github.com/goolord/alpha-nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim
-- https://github.com/anuvyklack/hydra.nvim
-- https://github.com/akinsho/bufferline.nvim
-- 'ThePrimeagen/harpoon',
-- 'junegunn/goyo.vim',
