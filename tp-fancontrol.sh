#!/bin/sh

case "$1" in
	low)
	echo level 2 > /proc/acpi/ibm/fan
	;;
	med)
	echo level 4 > /proc/acpi/ibm/fan
	;;
	max)
	echo level 7 > /proc/acpi/ibm/fan
	;;
	auto)
	echo level auto > /proc/acpi/ibm/fan
	;;

*)
	echo $"Usage: $0 {low|med|max|auto}"
	exit 1
esac
