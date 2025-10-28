# Fix to make Postgres work for Rails on macOS
set -gx OBJC_DISABLE_INITIALIZE_FORK_SAFETY yes
set -gx PGGSSENCMODE disable
