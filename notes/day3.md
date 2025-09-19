# Day 3 Practice: Process Management

- Listed processes with -> `ps aux | head -5`
- Started a background job: -> `sleep 300 &` (PID 526909)
- Verified job with -> `jobs`
- Tried -> `ps aux | grep sleep` — saw process but it ended quickly
- Attempted to kill process, but it was already done
- Learned that short-lived processes may finish before you can kill them
