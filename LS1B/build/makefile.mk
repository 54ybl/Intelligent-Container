#
# Auto-generated file. Do not edit!
#

GCC_SPECS := D:/Softwares/LoongIDE/mips-2011.03/mips-sde-elf/ls1b200
OS := bare

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include objects.mk
-include subdir.mk
-include core/subdir.mk
-include libc/subdir.mk
-include libc/ctype/subdir.mk
-include libc/errno/subdir.mk
-include libc/stdio/subdir.mk
-include libc/stdlib/subdir.mk
-include libc/string/subdir.mk
-include libc/time/subdir.mk
-include ls1x-drv/subdir.mk
-include ls1x-drv/ac97/subdir.mk
-include ls1x-drv/can/subdir.mk
-include ls1x-drv/console/subdir.mk
-include ls1x-drv/fb/subdir.mk
-include ls1x-drv/fb/font/subdir.mk
-include ls1x-drv/gmac/subdir.mk
-include ls1x-drv/gpio/subdir.mk
-include ls1x-drv/i2c/subdir.mk
-include ls1x-drv/i2c/ads1015/subdir.mk
-include ls1x-drv/i2c/gp7101/subdir.mk
-include ls1x-drv/i2c/gt1151/subdir.mk
-include ls1x-drv/i2c/mcp4725/subdir.mk
-include ls1x-drv/i2c/pca9557/subdir.mk
-include ls1x-drv/i2c/rx8010/subdir.mk
-include ls1x-drv/nand/subdir.mk
-include ls1x-drv/pwm/subdir.mk
-include ls1x-drv/rtc/subdir.mk
-include ls1x-drv/spi/subdir.mk
-include ls1x-drv/spi/w25x40/subdir.mk
-include ls1x-drv/spi/xpt2046/subdir.mk
-include ls1x-drv/uart/subdir.mk
-include ls1x-drv/useful/subdir.mk
-include ls1x-drv/watchdog/subdir.mk
-include src/subdir.mk
-include src/i2c/subdir.mk
-include src/link/subdir.mk
-include src/lux/subdir.mk
-include src/press/subdir.mk
-include src/uart/subdir.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(CPP_DEPS)),)
-include $(CPP_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
endif

-include ../makefile.defs

OUT_ELF=data2json.exe
OUT_MAP=data2json.map
OUT_BIN=data2json.bin

LINKCMDS=../ld.script

# Add inputs and outputs from these tool invocations to the build variables

# All Target
all: $(OUT_ELF)

# Tool invocations
$(OUT_ELF): $(STARTO) $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: SDE Lite C Linker'
	D:/Softwares/LoongIDE/mips-2011.03/bin/mips-sde-elf-gcc.exe  -mips32 -G0 -EL -msoft-float -nostartfiles -static -T $(LINKCMDS) -o $(OUT_ELF) -e start $(STARTO) $(OBJS) $(USER_OBJS) $(LIBS) 
	@echo 'Invoking: SDE Lite C Objcopy'
	D:/Softwares/LoongIDE/mips-2011.03/bin/mips-sde-elf-objcopy.exe -O binary $(OUT_ELF) $(OUT_BIN)
	@echo 'Invoking: SDE Lite C Size'
	D:/Softwares/LoongIDE/mips-2011.03/bin/mips-sde-elf-size.exe $(OUT_ELF)
	@echo 'Finished building target: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(STARTO) $(OBJS) $(C_DEPS) $(CPP_DEPS) $(ASM_DEPS) $(EXECUTABLES) $(OUT_ELF) $(OUT_MAP) $(OUT_BIN)
	-@echo ' '

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets


