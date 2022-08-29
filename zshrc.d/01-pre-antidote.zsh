#
# 01-pre-antidote.zsh - Set up anything needed by your scripts or plugins.
#

# Set Zsh options needed for your scripts, or ones not set by your plugins.
setopt INTERACTIVE_COMMENTS  # Allow comments in interactive sessions.
#setopt COMBINING_CHARS       # Combine zero-length punctuation characters (accents) into one.
setopt RC_QUOTES             # Allow 'Ender''s Game' instead of 'Ender'\''s Game'.
unsetopt MAIL_WARNING        # Don't print warning if a mail file has been accessed.

# Job options
setopt LONG_LIST_JOBS        # More verbose listing of jobs.
setopt AUTO_RESUME           # Try to resume existing job before creating a new one.
setopt NOTIFY                # Report status of background jobs immediately.
unsetopt BG_NICE             # Don't run background jobs at a lower priority.
unsetopt HUP                 # Don't kill jobs on shell exit.
unsetopt CHECK_JOBS          # Don't report on jobs when shell exit.

# Set any environment variables or keybindings related to your plugins or session.
SHELL_SESSIONS_DISABLE=1
KEYTIMEOUT=1

# Set any supplemental completions directories before compinit is run.
fpath=(${ZDOTDIR}/completions(-/FN) $fpath)
