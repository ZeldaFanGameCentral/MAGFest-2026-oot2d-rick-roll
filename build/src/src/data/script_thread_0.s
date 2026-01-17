.module script_thread_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_thread_0 = 255
.globl ___bank_script_thread_0

_script_thread_0::
GBVM$script_thread_0$1f778b5a_c53b_4de0_b0d9_61b31394a306$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script = .
.globl GBVM$script_thread_0$1f778b5a_c53b_4de0_b0d9_61b31394a306$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script
2$:
GBVM$script_thread_0$92887997_60bc_4990_bd4b_96bacaed41dc$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script = .
.globl GBVM$script_thread_0$92887997_60bc_4990_bd4b_96bacaed41dc$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script
        ; Call Script: play_song_rick_roll
        VM_CALL_FAR             ___bank_script_3, _script_3

        VM_JUMP                 2$
GBVM_END$script_thread_0$1f778b5a_c53b_4de0_b0d9_61b31394a306 = .
.globl GBVM_END$script_thread_0$1f778b5a_c53b_4de0_b0d9_61b31394a306
        ; Stop Script
        VM_STOP
