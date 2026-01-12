# Macro for creating raw patches.
.macro PATCH addr, name, instr:vararg
	.section .hook.\name 
	\instr
.endm 

# --- Entrypoints ---
# Asdfasdfasdfasdf
PATCH 0x97cba4, cellPadSetActDirect, bl hook

# --- Patches ---
# Skip intro, I use it to boot the game faster on RPCS3 mainly.
PATCH 0x1113c, introskip, b 0x4b8
PATCH 0x9027a0, modeLobbyInit_skip, blr