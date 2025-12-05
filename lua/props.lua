M = {}

function M:readProperties()
  if self.properties then
    return self.properties
  end
  self.properties = {}
  local fd = vim.uv.fs_open(".props.txt", "r", 438)
  if fd then
    local stat = vim.uv.fs_fstat(fd)
    local content = vim.uv.fs_read(fd, stat.size)
    for k, v in string.gmatch(content, "%s*(%w-)%s*=%s*(.-)%s*\n") do
      self.properties[k] = v
    end
    vim.uv.fs_close(fd)
  end
  return self.properties
end

function M:readModule()
  if self.module then
    return self.module
  end
  local props_file = ".props.lua"
  if vim.fn.filereadable(props_file) == 1 then
    self.module = dofile(props_file) or {}
  end
  return self.module
end

return M
