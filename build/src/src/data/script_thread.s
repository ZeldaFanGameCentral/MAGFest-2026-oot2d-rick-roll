.module script_thread

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_thread = 255
.globl ___bank_script_thread

_script_thread::
GBVM$script_thread$8ce950b0_e782_4e93_a31f_a4c8a6da6c67$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_thread$8ce950b0_e782_4e93_a31f_a4c8a6da6c67$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Call Script: play_song_theme
        VM_CALL_FAR             ___bank_script_0, _script_0

        ; Stop Script
        VM_STOP
