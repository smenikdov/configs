session_root "~/projects/bank"

if initialize_session "vdelo"; then
  # new_window "nvim"
  # run_cmd "nvim .;"
  #
  # new_window "vdelo"
  # run_cmd "nvm use vdelo;"
  # run_cmd "~/projects/my-scripts/bank-session/run.sh;"
  #
  # new_window "master"
  # run_cmd "nvm use vdelo;"
  # run_cmd "pm2 start --name backend \"npm run start | tee ~/projects/my-scripts/bank-session/backend.log\";"
  # run_cmd "pm2 start --name frontend \"npm run dev | tee ~/projects/my-scripts/bank-session/frontend.log\";"
  #
  # select_window 1

  new_window "nvim"
  run_cmd "nvim .;"

  new_window "git"
  run_cmd "lazygit"

  new_window "master"
  run_cmd "nvm use vdelo"

  new_window "back"
  run_cmd "nvm use 12.22.12"
  run_cmd "npm run start"

  new_window "front"
  run_cmd "nvm use 12.22.12"
  run_cmd "npm run dev"

  select_window 1
fi

finalize_and_go_to_session
