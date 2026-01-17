.module trigger_0_interact

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, _camera_settings, ___bank_scene_4, _scene_4, _overlay_cut_scanline, b_wait_frames, _wait_frames

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -4

___bank_trigger_0_interact = 255
.globl ___bank_trigger_0_interact

_trigger_0_interact::
        VM_LOCK

        VM_RESERVE              4

GBVM$trigger_0_interact$cd0af9e7_9c99_4bfe_8ae0_e92a18f0d33e$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script = .
.globl GBVM$trigger_0_interact$cd0af9e7_9c99_4bfe_8ae0_e92a18f0d33e$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script
        ; Mute Channel
        VM_MUSIC_MUTE           ^/(0x0F & 0x0E & 0x0D & 0x0B & 0x07)/

GBVM$trigger_0_interact$8ee5e5ed_d0a6_4ffa_bcad_0cf29f5ba09f$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script = .
.globl GBVM$trigger_0_interact$8ee5e5ed_d0a6_4ffa_bcad_0cf29f5ba09f$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script
        ; Thread Stop
        VM_TERMINATE            VAR_TEMP_0

GBVM$trigger_0_interact$7ff4c645_8b32_459d_b886_f7ccf62a8d2d$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script = .
.globl GBVM$trigger_0_interact$7ff4c645_8b32_459d_b886_f7ccf62a8d2d$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script
        ; Sound Play
        VM_SFX_PLAY             ___bank_sound_never_gonna_give_you__69, _sound_never_gonna_give_you__69, ___mute_mask_sound_never_gonna_give_you__69, .SFX_PRIORITY_HIGH

GBVM$trigger_0_interact$54cd0a0e_0d5b_44f8_a3cc_b60dd3b713d8$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script = .
.globl GBVM$trigger_0_interact$54cd0a0e_0d5b_44f8_a3cc_b60dd3b713d8$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script
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
            IMPORT_FAR_PTR_DATA _scene_4

GBVM$trigger_0_interact$2d2b7167_8a2e_4310_a53b_65b5d075283d$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script = .
.globl GBVM$trigger_0_interact$2d2b7167_8a2e_4310_a53b_65b5d075283d$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$trigger$5e5d22e7_ad66_463c_ae60_5a1b2015d852$script
        ; Text Dialogue
        VM_PUSH_CONST           0
        VM_GET_UINT8            .ARG0, _overlay_cut_scanline
        VM_SET_CONST_UINT8      _overlay_cut_scanline, 31
        VM_LOAD_TEXT            0
        .asciz ":O"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_OVERLAY_MOVE_TO      0, 4, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 0, .OVERLAY_IN_SPEED
        VM_OVERLAY_SET_SCROLL   1, 1, 19, 5, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            ^/(.LOCAL_TMP1_WAIT_ARGS - 1)/, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, ^/(.LOCAL_TMP1_WAIT_ARGS - 1)/
        VM_OVERLAY_MOVE_TO      0, 4, .OVERLAY_OUT_SPEED
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_IDLE
        VM_SET_UINT8            _overlay_cut_scanline, .ARG0
        VM_POP                  1

        ; Stop Script
        VM_STOP
