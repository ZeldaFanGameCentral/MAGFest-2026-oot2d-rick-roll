.module scene_4_init

.include "vm.i"
.include "data/game_globals.i"
.include "macro.i"

.globl _fade_frames_per_step, b_wait_frames, _wait_frames, _camera_settings, ___bank_scene_logo, _scene_logo

.area _CODE_255

.LOCAL_ACTOR = -4
.LOCAL_TMP1_WAIT_ARGS = -5
.LOCAL_TMP2_WAIT_ARGS = -5
.LOCAL_TMP3_WAIT_ARGS = -5
.LOCAL_TMP4_WAIT_ARGS = -5
.LOCAL_TMP5_WAIT_ARGS = -5
.LOCAL_TMP6_WAIT_ARGS = -5
.LOCAL_TMP7_WAIT_ARGS = -5
.LOCAL_TMP8_WAIT_ARGS = -5
.LOCAL_TMP9_WAIT_ARGS = -5
.LOCAL_TMP10_WAIT_ARGS = -5
.LOCAL_TMP11_WAIT_ARGS = -5
.LOCAL_TMP12_WAIT_ARGS = -5
.LOCAL_TMP13_WAIT_ARGS = -5
.LOCAL_TMP14_WAIT_ARGS = -5
.LOCAL_TMP15_WAIT_ARGS = -5
.LOCAL_TMP16_WAIT_ARGS = -5
.LOCAL_TMP17_WAIT_ARGS = -5
.LOCAL_TMP18_WAIT_ARGS = -5
.LOCAL_TMP19_WAIT_ARGS = -5

___bank_scene_4_init = 255
.globl ___bank_scene_4_init

_scene_4_init::
        VM_LOCK

        VM_RESERVE              5

GBVM$scene_4_init$35091cc8_24f2_47e9_9374_d45766c22973$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$35091cc8_24f2_47e9_9374_d45766c22973$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Sound Play
        VM_SFX_PLAY             ___bank_sound_never_gonna_give_you__69, _sound_never_gonna_give_you__69, ___mute_mask_sound_never_gonna_give_you__69, .SFX_PRIORITY_HIGH

GBVM$scene_4_init$ad0574b1_daa3_4011_b364_7540646e7543$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$ad0574b1_daa3_4011_b364_7540646e7543$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Mute Channel
        VM_MUSIC_MUTE           ^/(0x0F & 0x0E & 0x0D & 0x0B & 0x07)/

GBVM$scene_4_init$3bddff56_8970_49c6_afd2_936331ee3f0d$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$3bddff56_8970_49c6_afd2_936331ee3f0d$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Actor Hide
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_SET_HIDDEN     .LOCAL_ACTOR, 1

GBVM$scene_4_init$autofade$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$autofade$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

GBVM$scene_4_init$7774e120_091c_4b96_9d6e_5dc46238ab56$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$7774e120_091c_4b96_9d6e_5dc46238ab56$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "Hi MAGFest 2026!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, 0
        VM_OVERLAY_SET_SCROLL   1, 1, 19, 3, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP1_WAIT_ARGS, 210
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP1_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "ZFGC has come back\012from Vash's\nbutthole!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP2_WAIT_ARGS, 210
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP2_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "To give you a fun\nlittle prank."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP3_WAIT_ARGS, 210
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP3_WAIT_ARGS
        VM_OVERLAY_MOVE_TO      0, 18, 1
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$scene_4_init$6603007f_bca4_4684_a7e4_dda473406768$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$6603007f_bca4_4684_a7e4_dda473406768$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "    - OOT2d -"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, 0
        VM_OVERLAY_SET_SCROLL   1, 1, 19, 6, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP4_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP4_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Created with <3"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP5_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP5_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Developed by:\012gm112, MG-Zero"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP6_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP6_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Code:\012   gm112"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP7_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP7_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Epicness:\012   MG-Zero"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP8_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP8_WAIT_ARGS
        VM_OVERLAY_MOVE_TO      0, 18, 1
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$scene_4_init$cb84fdef_0559_4973_9997_f14488be1946$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$cb84fdef_0559_4973_9997_f14488be1946$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
        ; Text Dialogue
        VM_LOAD_TEXT            0
        .asciz "    - Assets -"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_OVERLAY_MOVE_TO      0, 18, .OVERLAY_SPEED_INSTANT
        VM_OVERLAY_MOVE_TO      0, 14, 0
        VM_OVERLAY_SET_SCROLL   1, 1, 19, 5, .UI_COLOR_WHITE
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP9_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP9_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Assets taken from\nda interwebz."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP10_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP10_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "   - Maku Tree -\012Guille Skye\012Tailikku "
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP11_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP11_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "    - Link -\012MisterMike"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP12_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP12_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "   - Tilesets -\012Katsu"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP13_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP13_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "And for special\nthanks..."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP14_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP14_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "SkyEmu"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP15_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP15_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Aaron Spurling"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP16_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP16_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "Choco"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP17_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP17_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "...."
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP18_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP18_WAIT_ARGS
        VM_LOAD_TEXT            0
        .asciz "The End!"
        VM_OVERLAY_CLEAR        0, 0, 20, 4, .UI_COLOR_WHITE, 0
        VM_DISPLAY_TEXT
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/
        VM_SET_CONST            .LOCAL_TMP19_WAIT_ARGS, 30
        VM_INVOKE               b_wait_frames, _wait_frames, 0, .LOCAL_TMP19_WAIT_ARGS
        VM_OVERLAY_MOVE_TO      0, 18, 1
        VM_OVERLAY_WAIT         .UI_MODAL, ^/(.UI_WAIT_WINDOW | .UI_WAIT_TEXT)/

GBVM$scene_4_init$d0e93b0c_afc3_430d_a5c3_97684c5d84d7$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script = .
.globl GBVM$scene_4_init$d0e93b0c_afc3_430d_a5c3_97684c5d84d7$afe6c151_0898_476f_8347_358d6e002c2b$scene$afe6c151_0898_476f_8347_358d6e002c2b$script
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
            IMPORT_FAR_PTR_DATA _scene_logo

        ; Stop Script
        VM_STOP
