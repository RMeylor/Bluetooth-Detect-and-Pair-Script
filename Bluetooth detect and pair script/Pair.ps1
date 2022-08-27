$DeviceName = "Jabra Evolve 65"

"Unpairing device: $DeviceName"
btpair -u -n $DeviceName

"Pairing device: $DeviceName"
"Note: you may need to click on a Windows prompt and accept the PIN"
btpair -p -n $DeviceName