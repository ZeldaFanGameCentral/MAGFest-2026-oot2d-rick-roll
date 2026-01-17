.module scene_9_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255


___bank_scene_9_init = 255
.globl ___bank_scene_9_init

_scene_9_init::
        VM_LOCK

GBVM$scene_9_init$0e6be4fa_59fe_49ca_a3be_f57eb2a8c01f$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script = .
.globl GBVM$scene_9_init$0e6be4fa_59fe_49ca_a3be_f57eb2a8c01f$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_9_init$1b720f66_ca5f_4dc4_ab2a_808f4a8e7a11$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script = .
.globl GBVM$scene_9_init$1b720f66_ca5f_4dc4_ab2a_808f4a8e7a11$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script
        ; Thread Start
        VM_UNLOCK
        VM_BEGINTHREAD          ___bank_script_thread_0, _script_thread_0, VAR_TEMP_0, 0

GBVM_END$scene_9_init$1b720f66_ca5f_4dc4_ab2a_808f4a8e7a11 = .
.globl GBVM_END$scene_9_init$1b720f66_ca5f_4dc4_ab2a_808f4a8e7a11
        ; Stop Script
        VM_STOP
