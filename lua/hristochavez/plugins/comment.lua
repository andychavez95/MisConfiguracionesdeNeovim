local status, comment = pcall(require, "Comment")
if not status then
  return
end

-- Configuración de Comment.
comment.setup()

