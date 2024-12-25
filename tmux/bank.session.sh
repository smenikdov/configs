# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/Projects/bank"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "vdelo"; then
  new_window "nvim"
  run_cmd "nvim ."

  new_window "front"
  run_cmd "nvm use vdelo"
  run_cmd "npm run dev"

  new_window "back"
  run_cmd "nvm use vdelo"
  run_cmd "npm run start"

  select_window 1
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
