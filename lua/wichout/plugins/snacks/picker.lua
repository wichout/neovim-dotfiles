return {
  layout = {
    layout = {
      box = 'horizontal',
      backdrop = false,
      width = 0.8,
      height = 0.6,
      border = 'none',
      {
        box = 'vertical',
        { win = 'input', height = 1, border = 'none', title = '{title} {live} {flags}', title_pos = 'center' },
        { win = 'list', title = ' Results ', title_pos = 'center', border = 'none' },
      },
      {
        win = 'preview',
        title = '{preview:Preview}',
        width = 0.5,
        border = 'none',
        title_pos = 'center',
      },
    },
  },
}
