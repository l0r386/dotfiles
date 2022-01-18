local theme_status_ok, theme = pcall(require, "nightfox")
if not theme_status_ok then
  return
end

theme.load('nordfox')
