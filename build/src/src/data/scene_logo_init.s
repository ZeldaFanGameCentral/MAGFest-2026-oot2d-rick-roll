.module scene_logo_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, b_wait_frames, _wait_frames, _overlay_cut_scanline, _camera_settings, ___bank_scene_title_screen, _scene_title_screen

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5

___bank_scene_logo_init = 255
.globl ___bank_scene_logo_init

_scene_logo_init::
        VM_LOCK

        VM_RESERVE              5

GBVM$scene_logo_init$8343c54c_07a1_4d30_892c_91db234b8d9b$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$8343c54c_07a1_4d30_892c_91db234b8d9b$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

GBVM$scene_logo_init$98fdcac9_0b86_4872_ba9b_5c6374bcff56$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$98fdcac9_0b86_4872_ba9b_5c6374bcff56$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_IN              1

GBVM$scene_logo_init$dfb4c321_31ae_4e7f_a400_aae4088043d5$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$dfb4c321_31ae_4e7f_a400_aae4088043d5$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Overlay Show
        VM_OVERLAY_SHOW         0, 0, 0, 0

GBVM$scene_logo_init$e88fcc15_89a0_4db6_b069_aeffe9cb222b$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$e88fcc15_89a0_4db6_b069_aeffe9cb222b$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Overlay Move To
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_WAIT         .UI_MODAL, .UI_WAIT_WINDOW

GBVM$scene_logo_init$1bc216d0_bd7d_4c0e_9db8_fa9602c1fb73$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$1bc216d0_bd7d_4c0e_9db8_fa9602c1fb73$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "\003\001\001      ZFGC.COM "
        VM_OVERLAY_CLEAR        0, 0, 20, 1, .UI_COLOR_WHITE, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 17, -3
        VM_OVERLAY_SET_SCROLL   0, 0, 20, 1, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT

GBVM$scene_logo_init$0677a82b_f7cf_429e_9259_dba979146cc5$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$0677a82b_f7cf_429e_9259_dba979146cc5$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Wait 120 Frames
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 120
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS

GBVM$scene_logo_init$46f7a6aa_932b_4c40_b8d6_6fc084ad836a$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$46f7a6aa_932b_4c40_b8d6_6fc084ad836a$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Close Non-Modal Dialogue
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_IDLE
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST_UINT8      _overlay_cut_scanline, 150

GBVM$scene_logo_init$9daba1e6_c056_494a_babc_caa87913aa32$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script = .
.globl GBVM$scene_logo_init$9daba1e6_c056_494a_babc_caa87913aa32$382961a1_e615_4b92_92a7_f1a791b50b7a$scene$382961a1_e615_4b92_92a7_f1a791b50b7a$script
        ; Load Scene
        VM_SET_CONST_INT8       _fade_frames_per_step, 3
        VM_FADE_OUT             1
        ; -- Calculate coordinate values
        VM_RPN
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 1)/
            .R_INT16    0
            .R_REF_SET  ^/(.LOCAL_ACTOR + 2)/
            .R_STOP
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_POS        .LOCAL_ACTOR
        VM_ACTOR_SET_DIR        .LOCAL_ACTOR, .DIR_DOWN
        VM_SET_CONST_INT8       _camera_settings, .CAMERA_LOCK
        VM_RAISE                EXCEPTION_CHANGE_SCENE, 3
            IMPORT_FAR_PTR_DATA _scene_title_screen

        ; Stop Script
        VM_STOP
