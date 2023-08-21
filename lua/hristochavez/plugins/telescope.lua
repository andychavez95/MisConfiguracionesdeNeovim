local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
    return
end

local telescope_actions_status, telescopeactions = pcall(require, "telescope.actions")
if not telescope_actions_status then
    return
end

telescope.setup()

