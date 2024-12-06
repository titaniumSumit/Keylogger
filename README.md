# Keylogger 
### Support:
Please Support me so that I can post more contents
<p><a href="https://www.buymeacoffee.com/titaniumSumit" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="23" width="100" style="border-radius:1px" 

 </a></p>

## Educational Keylogger Project

This repository demonstrates a **proof-of-concept keylogger** for educational purposes. It is designed to teach ethical hacking techniques, how keyloggers operate, and how to defend against them. **Unauthorized use outside a controlled lab environment is illegal and unethical.**

## Disclaimer

This project is intended for **educational purposes only**. Use this tool exclusively in controlled environments where you have explicit permission to test. The authors are not responsible for any misuse or illegal activities conducted using this software.

## Features

- Logs keystrokes from a victim's machine.
- Sends keystroke data to a remote server.
- Allows remote control of the logger (start, stop, exit).
- Demonstrates offensive security concepts for educational purposes.

## File Structure

```plaintext
keystroke-logger/
├── logger.py         # Keylogger script for the victim's machine.
├── controller.py     # Control server for starting/stopping the logger.
├── setup.sh          # Setup script for the attacker's machine
```
# Usage
1. Run setup.sh on the Attacker's Machine:
```bash
chmod +x setup.sh
./setup.sh
```
2. Deploy logger.py to the Victim's Machine: Use SCP, Netcat, or another transfer method to send logger.py to the victim:

```bash
scp logger.py user@victim_ip:/path/to/destination
```
3. Ensure the victim has Python 3 installed to run the script:
```bash
python3 logger.py
```

