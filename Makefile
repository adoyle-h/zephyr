.PHONY: build
build:
	west build -b esp32_devkitc_wroom ./samples/Zephyr_ESP32_OLED_SSD1306_I2C/ \
	-- -DSHIELD=esp32_devkitc_wroom_ssd1306

.PHONY: build-lvgl
build-lvgl:
	west build -b esp32_devkitc_wroom ./samples/subsys/display/lvgl \
	-- -DSHIELD=esp32_devkitc_wroom_ssd1306

.PHONY: flash
flash:
	west flash --esp-baud-rate 115200

.PHONY: monit
monit:
	west espressif monitor
