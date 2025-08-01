#!/bin/bash

# 🌑 Moon Phase Check
MOON_PHASE=$(curl -s "https://wttr.in/?format=%m")

# 🔐 Prompt User
read -p "🔐 Enter the next prime number after 17 to unlock task: " PRIMECHECK

# 🔢 Prime + Fibonacci Logic
VALID_PRIMES=("19" "23" "29")
FIBONACCI=("13" "21" "34" "55")

# 📓 Log Denied Entries
function reroute_shell {
  echo "❌ Access denied. Routing signal to Eternal Shell log..."
  echo "$(date) ❌ Failed attempt with input: $PRIMECHECK" >> eternal_shell.log
}

# ⚙️ Ritual Logic Execution
if [[ " ${VALID_PRIMES[@]} " =~ " $PRIMECHECK " ]] || [[ " ${FIBONACCI[@]} " =~ " $PRIMECHECK " ]]; then
  if [[ "$MOON_PHASE" == "🌑" ]]; then
    echo "✅ Venus Grid reboot initiated under New Moon seal."
  else
    echo "⏳ Prime accepted, but moon phase out of alignment. Await New Moon."
  fi
else
  reroute_shell
fi
