local status_safe, comment = pcall(require, "Comment")
if not status_safe then
  return
end

comment.setup()
