# ---------------------------------------------------
# jtag2updi Serial Port
AR_PORT=/dev/cu.usbserial-5001

# ATtiny1606 arduino-cli config
AR_FQBN=megaTinyCore:megaavr:atxy6:chip=1606,clock=20internal,millis=enabled,uartvoltage=5v

AR_SKETCH=jtag2updi

AR_PROGRAMMER=jtag2updi

# ---------------------------------------------------

upload: compile
	arduino-cli upload -b $(AR_FQBN) -p $(AR_PORT) --programmer $(AR_PROGRAMMER) --verbose $(AR_SKETCH).ino

compile: 
	arduino-cli compile -b $(AR_FQBN) --verbose $(AR_SKETCH).ino
