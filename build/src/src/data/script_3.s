.module script_3

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_3 = 255
.globl ___bank_script_3

_script_3::
GBVM$script_3$bce91eaa_ad87_4d92_935c_756269716128$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script = .
.globl GBVM$script_3$bce91eaa_ad87_4d92_935c_756269716128$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$scene$cfe18222_1f66_4dd3_aa3c_6a512f8a04f8$script
        .macro PLAY_WAIT bank, snd, mask
                VM_SFX_PLAY bank, snd, mask, .SFX_PRIORITY_NORMAL
                VM_SET_CONST 0, 174
                VM_INVOKE b_wait_frames, _wait_frames, 0, 0
        .endm
        
        VM_MUSIC_STOP
        VM_MUSIC_MUTE           0x0F
        
        PLAY_WAIT ___bank_sound_never_gonna_give_you_, _sound_never_gonna_give_you_, ___mute_mask_sound_never_gonna_give_you_
        PLAY_WAIT ___bank_sound_never_gonna_give_you__0, _sound_never_gonna_give_you__0, ___mute_mask_sound_never_gonna_give_you__0
        PLAY_WAIT ___bank_sound_never_gonna_give_you__1, _sound_never_gonna_give_you__1, ___mute_mask_sound_never_gonna_give_you__1
        PLAY_WAIT ___bank_sound_never_gonna_give_you__2, _sound_never_gonna_give_you__2, ___mute_mask_sound_never_gonna_give_you__2
        PLAY_WAIT ___bank_sound_never_gonna_give_you__3, _sound_never_gonna_give_you__3, ___mute_mask_sound_never_gonna_give_you__3
        PLAY_WAIT ___bank_sound_never_gonna_give_you__4, _sound_never_gonna_give_you__4, ___mute_mask_sound_never_gonna_give_you__4
        PLAY_WAIT ___bank_sound_never_gonna_give_you__5, _sound_never_gonna_give_you__5, ___mute_mask_sound_never_gonna_give_you__5
        PLAY_WAIT ___bank_sound_never_gonna_give_you__6, _sound_never_gonna_give_you__6, ___mute_mask_sound_never_gonna_give_you__6
        PLAY_WAIT ___bank_sound_never_gonna_give_you__7, _sound_never_gonna_give_you__7, ___mute_mask_sound_never_gonna_give_you__7
        PLAY_WAIT ___bank_sound_never_gonna_give_you__8, _sound_never_gonna_give_you__8, ___mute_mask_sound_never_gonna_give_you__8
        PLAY_WAIT ___bank_sound_never_gonna_give_you__9, _sound_never_gonna_give_you__9, ___mute_mask_sound_never_gonna_give_you__9
        PLAY_WAIT ___bank_sound_never_gonna_give_you__10, _sound_never_gonna_give_you__10, ___mute_mask_sound_never_gonna_give_you__10
        PLAY_WAIT ___bank_sound_never_gonna_give_you__11, _sound_never_gonna_give_you__11, ___mute_mask_sound_never_gonna_give_you__11
        PLAY_WAIT ___bank_sound_never_gonna_give_you__12, _sound_never_gonna_give_you__12, ___mute_mask_sound_never_gonna_give_you__12
        PLAY_WAIT ___bank_sound_never_gonna_give_you__13, _sound_never_gonna_give_you__13, ___mute_mask_sound_never_gonna_give_you__13
        PLAY_WAIT ___bank_sound_never_gonna_give_you__14, _sound_never_gonna_give_you__14, ___mute_mask_sound_never_gonna_give_you__14
        PLAY_WAIT ___bank_sound_never_gonna_give_you__15, _sound_never_gonna_give_you__15, ___mute_mask_sound_never_gonna_give_you__15
        PLAY_WAIT ___bank_sound_never_gonna_give_you__16, _sound_never_gonna_give_you__16, ___mute_mask_sound_never_gonna_give_you__16
        PLAY_WAIT ___bank_sound_never_gonna_give_you__17, _sound_never_gonna_give_you__17, ___mute_mask_sound_never_gonna_give_you__17
        PLAY_WAIT ___bank_sound_never_gonna_give_you__18, _sound_never_gonna_give_you__18, ___mute_mask_sound_never_gonna_give_you__18
        PLAY_WAIT ___bank_sound_never_gonna_give_you__19, _sound_never_gonna_give_you__19, ___mute_mask_sound_never_gonna_give_you__19
        PLAY_WAIT ___bank_sound_never_gonna_give_you__20, _sound_never_gonna_give_you__20, ___mute_mask_sound_never_gonna_give_you__20
        PLAY_WAIT ___bank_sound_never_gonna_give_you__21, _sound_never_gonna_give_you__21, ___mute_mask_sound_never_gonna_give_you__21
        PLAY_WAIT ___bank_sound_never_gonna_give_you__22, _sound_never_gonna_give_you__22, ___mute_mask_sound_never_gonna_give_you__22
        PLAY_WAIT ___bank_sound_never_gonna_give_you__23, _sound_never_gonna_give_you__23, ___mute_mask_sound_never_gonna_give_you__23
        PLAY_WAIT ___bank_sound_never_gonna_give_you__24, _sound_never_gonna_give_you__24, ___mute_mask_sound_never_gonna_give_you__24
        PLAY_WAIT ___bank_sound_never_gonna_give_you__25, _sound_never_gonna_give_you__25, ___mute_mask_sound_never_gonna_give_you__25
        PLAY_WAIT ___bank_sound_never_gonna_give_you__26, _sound_never_gonna_give_you__26, ___mute_mask_sound_never_gonna_give_you__26
        PLAY_WAIT ___bank_sound_never_gonna_give_you__27, _sound_never_gonna_give_you__27, ___mute_mask_sound_never_gonna_give_you__27
        PLAY_WAIT ___bank_sound_never_gonna_give_you__28, _sound_never_gonna_give_you__28, ___mute_mask_sound_never_gonna_give_you__28
        PLAY_WAIT ___bank_sound_never_gonna_give_you__29, _sound_never_gonna_give_you__29, ___mute_mask_sound_never_gonna_give_you__29
        PLAY_WAIT ___bank_sound_never_gonna_give_you__30, _sound_never_gonna_give_you__30, ___mute_mask_sound_never_gonna_give_you__30
        PLAY_WAIT ___bank_sound_never_gonna_give_you__31, _sound_never_gonna_give_you__31, ___mute_mask_sound_never_gonna_give_you__31
        PLAY_WAIT ___bank_sound_never_gonna_give_you__32, _sound_never_gonna_give_you__32, ___mute_mask_sound_never_gonna_give_you__32
        PLAY_WAIT ___bank_sound_never_gonna_give_you__33, _sound_never_gonna_give_you__33, ___mute_mask_sound_never_gonna_give_you__33
        PLAY_WAIT ___bank_sound_never_gonna_give_you__34, _sound_never_gonna_give_you__34, ___mute_mask_sound_never_gonna_give_you__34
        PLAY_WAIT ___bank_sound_never_gonna_give_you__35, _sound_never_gonna_give_you__35, ___mute_mask_sound_never_gonna_give_you__35
        PLAY_WAIT ___bank_sound_never_gonna_give_you__36, _sound_never_gonna_give_you__36, ___mute_mask_sound_never_gonna_give_you__36
        PLAY_WAIT ___bank_sound_never_gonna_give_you__37, _sound_never_gonna_give_you__37, ___mute_mask_sound_never_gonna_give_you__37
        PLAY_WAIT ___bank_sound_never_gonna_give_you__38, _sound_never_gonna_give_you__38, ___mute_mask_sound_never_gonna_give_you__38
        PLAY_WAIT ___bank_sound_never_gonna_give_you__39, _sound_never_gonna_give_you__39, ___mute_mask_sound_never_gonna_give_you__39
        PLAY_WAIT ___bank_sound_never_gonna_give_you__40, _sound_never_gonna_give_you__40, ___mute_mask_sound_never_gonna_give_you__40
        PLAY_WAIT ___bank_sound_never_gonna_give_you__41, _sound_never_gonna_give_you__41, ___mute_mask_sound_never_gonna_give_you__41
        PLAY_WAIT ___bank_sound_never_gonna_give_you__42, _sound_never_gonna_give_you__42, ___mute_mask_sound_never_gonna_give_you__42
        PLAY_WAIT ___bank_sound_never_gonna_give_you__43, _sound_never_gonna_give_you__43, ___mute_mask_sound_never_gonna_give_you__43
        PLAY_WAIT ___bank_sound_never_gonna_give_you__44, _sound_never_gonna_give_you__44, ___mute_mask_sound_never_gonna_give_you__44
        PLAY_WAIT ___bank_sound_never_gonna_give_you__45, _sound_never_gonna_give_you__45, ___mute_mask_sound_never_gonna_give_you__45
        PLAY_WAIT ___bank_sound_never_gonna_give_you__46, _sound_never_gonna_give_you__46, ___mute_mask_sound_never_gonna_give_you__46
        PLAY_WAIT ___bank_sound_never_gonna_give_you__47, _sound_never_gonna_give_you__47, ___mute_mask_sound_never_gonna_give_you__47
        PLAY_WAIT ___bank_sound_never_gonna_give_you__48, _sound_never_gonna_give_you__48, ___mute_mask_sound_never_gonna_give_you__48
        PLAY_WAIT ___bank_sound_never_gonna_give_you__49, _sound_never_gonna_give_you__49, ___mute_mask_sound_never_gonna_give_you__49
        PLAY_WAIT ___bank_sound_never_gonna_give_you__50, _sound_never_gonna_give_you__50, ___mute_mask_sound_never_gonna_give_you__50
        PLAY_WAIT ___bank_sound_never_gonna_give_you__51, _sound_never_gonna_give_you__51, ___mute_mask_sound_never_gonna_give_you__51
        PLAY_WAIT ___bank_sound_never_gonna_give_you__52, _sound_never_gonna_give_you__52, ___mute_mask_sound_never_gonna_give_you__52
        PLAY_WAIT ___bank_sound_never_gonna_give_you__53, _sound_never_gonna_give_you__53, ___mute_mask_sound_never_gonna_give_you__53
        PLAY_WAIT ___bank_sound_never_gonna_give_you__54, _sound_never_gonna_give_you__54, ___mute_mask_sound_never_gonna_give_you__54
        PLAY_WAIT ___bank_sound_never_gonna_give_you__55, _sound_never_gonna_give_you__55, ___mute_mask_sound_never_gonna_give_you__55
        PLAY_WAIT ___bank_sound_never_gonna_give_you__56, _sound_never_gonna_give_you__56, ___mute_mask_sound_never_gonna_give_you__56
        PLAY_WAIT ___bank_sound_never_gonna_give_you__57, _sound_never_gonna_give_you__57, ___mute_mask_sound_never_gonna_give_you__57
        PLAY_WAIT ___bank_sound_never_gonna_give_you__58, _sound_never_gonna_give_you__58, ___mute_mask_sound_never_gonna_give_you__58
        PLAY_WAIT ___bank_sound_never_gonna_give_you__59, _sound_never_gonna_give_you__59, ___mute_mask_sound_never_gonna_give_you__59
        PLAY_WAIT ___bank_sound_never_gonna_give_you__60, _sound_never_gonna_give_you__60, ___mute_mask_sound_never_gonna_give_you__60
        PLAY_WAIT ___bank_sound_never_gonna_give_you__61, _sound_never_gonna_give_you__61, ___mute_mask_sound_never_gonna_give_you__61
        PLAY_WAIT ___bank_sound_never_gonna_give_you__62, _sound_never_gonna_give_you__62, ___mute_mask_sound_never_gonna_give_you__62
        PLAY_WAIT ___bank_sound_never_gonna_give_you__63, _sound_never_gonna_give_you__63, ___mute_mask_sound_never_gonna_give_you__63
        PLAY_WAIT ___bank_sound_never_gonna_give_you__64, _sound_never_gonna_give_you__64, ___mute_mask_sound_never_gonna_give_you__64
        PLAY_WAIT ___bank_sound_never_gonna_give_you__65, _sound_never_gonna_give_you__65, ___mute_mask_sound_never_gonna_give_you__65
        PLAY_WAIT ___bank_sound_never_gonna_give_you__66, _sound_never_gonna_give_you__66, ___mute_mask_sound_never_gonna_give_you__66
        PLAY_WAIT ___bank_sound_never_gonna_give_you__67, _sound_never_gonna_give_you__67, ___mute_mask_sound_never_gonna_give_you__67
        PLAY_WAIT ___bank_sound_never_gonna_give_you__68, _sound_never_gonna_give_you__68, ___mute_mask_sound_never_gonna_give_you__68

        VM_RET_FAR
