local M = {}

function M.cowboy()
  ---@type table?
  local id
  local ok = true
  local uv = vim.uv or vim.loop
  if not uv then
    vim.notify("Cannot initialize timer: uv API not available", vim.log.levels.ERROR)
    return
  end

  for _, key in ipairs({ "h", "j", "k", "l", "+", "-", "<Up>", "<Down>" }) do
    local count = 0
    local map = key
    local timer = assert(uv.new_timer())

    vim.keymap.set("n", key, function()
      if vim.v.count > 0 then
        count = 0
      end
      if count >= 10 then
        ok, id = pcall(vim.notify, "Hold it Cowboy!", vim.log.levels.WARN, {
          icon = "🤠",
          replace = id,
          timeout = 2000,
        })
        -- Set a separate timer to explicitly dismiss the notification
        local dismiss_timer = assert(uv.new_timer())
        dismiss_timer:start(2000, 0, function()
          vim.schedule(function()
            if id then
              pcall(vim.notify_dismiss, id)
              id = nil
            end
            dismiss_timer:close()
          end)
        end)
        if not ok then
          id = nil
          return map
        end
      else
        count = count + 1
        timer:stop()
        timer:start(2000, 0, function()
          count = 0
        end)
        return map
      end
    end, { expr = true, silent = true })
  end
end

return M
