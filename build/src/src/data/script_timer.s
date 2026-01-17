.module script_timer

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_9, _scene_9

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_script_timer = 255
.globl ___bank_script_timer

_script_timer::
        VM_RESERVE              4

GBVM$script_timer$79ad7d1d_b68a_4611_970c_689f3541aa74$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_timer$79ad7d1d_b68a_4611_970c_689f3541aa74$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Thread Stop
        VM_TERMINATE            VAR_TEMP_0

GBVM$script_timer$79b66b19_6076_42b1_b627_39cffbc90741$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_timer$79b66b19_6076_42b1_b627_39cffbc90741$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    1024
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    2048
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_9

        ; Stop Script
        VM_STOP
