#!/usr/bin/bash

# @echo off
# REM Universal Bootloader Unlock Script for OPPO & OnePlus (This file is for macOS users and Linux ones)

echo === Bootloader Unlock Script

echo "[*] Rebooting device into fastboot."
adb reboot bootloader 
echo "[*] Checking fastboot device..."
fastboot devices

echo "[*] Attempting to unlock..." # oh boy
fastboot flashing unlock || fastboot oem unlock

echo "[✓] Congrats! your bootloader should probably be unlocked."

echo "[ TROUBLESHOOTING ]"

echo "1- [*] If your device asks for confirmation, use volume keys + power button."
echo "2- [*] If your device reboots into original android then try (adb reboot bootloader)."
echo "For more information please check the docs."
