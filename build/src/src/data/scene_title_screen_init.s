.module scene_title_screen_init

.include "vm.i"
.include "data/game_globals.i"

.globl _fade_frames_per_step

.area _CODE_255

.LOCAL_ACTOR = -4

___bank_scene_title_screen_init = 255
.globl ___bank_scene_title_screen_init

_scene_title_screen_init::
        VM_LOCK

        VM_RESERVE              4

GBVM$scene_title_screen_init$ff79b819_b435_4ef8_af20_07302038959f$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$ff79b819_b435_4ef8_af20_07302038959f$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Actor Deactivate
        VM_SET_CONST            .LOCAL_ACTOR, 0
        VM_ACTOR_DEACTIVATE     .LOCAL_ACTOR

GBVM$scene_title_screen_init$11bfc6ff_9528_492b_8b81_b19dcf49f392$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$11bfc6ff_9528_492b_8b81_b19dcf49f392$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Seed RNG
        VM_RANDOMIZE

GBVM$scene_title_screen_init$e6b8b419_9e21_419d_8932_519507f17a43$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$e6b8b419_9e21_419d_8932_519507f17a43$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Input Script Attach
        VM_CONTEXT_PREPARE      2, ___bank_script_input, _script_input
        VM_INPUT_ATTACH         68, ^/(2 | .OVERRIDE_DEFAULT)/

GBVM_END$scene_title_screen_init$e6b8b419_9e21_419d_8932_519507f17a43 = .
.globl GBVM_END$scene_title_screen_init$e6b8b419_9e21_419d_8932_519507f17a43
GBVM$scene_title_screen_init$f9a62a41_762c_4908_892e_92aaa6a599e3$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$f9a62a41_762c_4908_892e_92aaa6a599e3$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Input Script Attach
        VM_CONTEXT_PREPARE      1, ___bank_script_timer, _script_timer
        VM_INPUT_ATTACH         128, ^/(1 | .OVERRIDE_DEFAULT)/

GBVM_END$scene_title_screen_init$f9a62a41_762c_4908_892e_92aaa6a599e3 = .
.globl GBVM_END$scene_title_screen_init$f9a62a41_762c_4908_892e_92aaa6a599e3
GBVM$scene_title_screen_init$9f03c900_e9ee_43ba_95e8_2d586c940c36$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$9f03c900_e9ee_43ba_95e8_2d586c940c36$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer, _script_timer
        VM_TIMER_SET            1, 13

GBVM_END$scene_title_screen_init$9f03c900_e9ee_43ba_95e8_2d586c940c36 = .
.globl GBVM_END$scene_title_screen_init$9f03c900_e9ee_43ba_95e8_2d586c940c36
GBVM$scene_title_screen_init$autofade$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$scene_title_screen_init$autofade$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Wait 1 Frames
        VM_IDLE

        ; Fade In
        VM_SET_CONST_INT8       _fade_frames_per_step, 1
        VM_FADE_IN              1

        ; Stop Script
        VM_STOP
