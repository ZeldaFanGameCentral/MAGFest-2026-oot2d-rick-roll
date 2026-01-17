.module script_0

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_0 = 255
.globl ___bank_script_0

_script_0::
GBVM$script_0$7c44f684_2ca1_4637_b0ba_6dfd9018ae40$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_0$7c44f684_2ca1_4637_b0ba_6dfd9018ae40$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        .macro PLAY_WAIT bank, snd, mask
                VM_SFX_PLAY bank, snd, mask, .SFX_PRIORITY_NORMAL
                VM_SET_CONST 0, 174
                VM_INVOKE b_wait_frames, _wait_frames, 0, 0
        .endm
        
        VM_MUSIC_STOP
        VM_MUSIC_MUTE           0x0F
        
        PLAY_WAIT ___bank_sound_theme_001_wav, _sound_theme_001_wav, ___mute_mask_sound_theme_001_wav
        PLAY_WAIT ___bank_sound_theme_002_wav, _sound_theme_002_wav, ___mute_mask_sound_theme_002_wav
        PLAY_WAIT ___bank_sound_theme_003_wav, _sound_theme_003_wav, ___mute_mask_sound_theme_003_wav
        PLAY_WAIT ___bank_sound_theme_004_wav, _sound_theme_004_wav, ___mute_mask_sound_theme_004_wav
        PLAY_WAIT ___bank_sound_theme_005_wav, _sound_theme_005_wav, ___mute_mask_sound_theme_005_wav
        PLAY_WAIT ___bank_sound_theme_006_wav, _sound_theme_006_wav, ___mute_mask_sound_theme_006_wav
        PLAY_WAIT ___bank_sound_theme_007_wav, _sound_theme_007_wav, ___mute_mask_sound_theme_007_wav
        PLAY_WAIT ___bank_sound_theme_008_wav, _sound_theme_008_wav, ___mute_mask_sound_theme_008_wav
        PLAY_WAIT ___bank_sound_theme_009_wav, _sound_theme_009_wav, ___mute_mask_sound_theme_009_wav
        PLAY_WAIT ___bank_sound_theme_010_wav, _sound_theme_010_wav, ___mute_mask_sound_theme_010_wav
        PLAY_WAIT ___bank_sound_theme_011_wav, _sound_theme_011_wav, ___mute_mask_sound_theme_011_wav
        PLAY_WAIT ___bank_sound_theme_012_wav, _sound_theme_012_wav, ___mute_mask_sound_theme_012_wav
        PLAY_WAIT ___bank_sound_theme_013_wav, _sound_theme_013_wav, ___mute_mask_sound_theme_013_wav
        PLAY_WAIT ___bank_sound_theme_014_wav, _sound_theme_014_wav, ___mute_mask_sound_theme_014_wav
        PLAY_WAIT ___bank_sound_theme_015_wav, _sound_theme_015_wav, ___mute_mask_sound_theme_015_wav
        PLAY_WAIT ___bank_sound_theme_016_wav, _sound_theme_016_wav, ___mute_mask_sound_theme_016_wav
        PLAY_WAIT ___bank_sound_theme_017_wav, _sound_theme_017_wav, ___mute_mask_sound_theme_017_wav
        PLAY_WAIT ___bank_sound_theme_018_wav, _sound_theme_018_wav, ___mute_mask_sound_theme_018_wav
        PLAY_WAIT ___bank_sound_theme_019_wav, _sound_theme_019_wav, ___mute_mask_sound_theme_019_wav
        PLAY_WAIT ___bank_sound_theme_020_wav, _sound_theme_020_wav, ___mute_mask_sound_theme_020_wav
        PLAY_WAIT ___bank_sound_theme_021_wav, _sound_theme_021_wav, ___mute_mask_sound_theme_021_wav
        PLAY_WAIT ___bank_sound_theme_022_wav, _sound_theme_022_wav, ___mute_mask_sound_theme_022_wav
        PLAY_WAIT ___bank_sound_theme_023_wav, _sound_theme_023_wav, ___mute_mask_sound_theme_023_wav
        PLAY_WAIT ___bank_sound_theme_024_wav, _sound_theme_024_wav, ___mute_mask_sound_theme_024_wav
        PLAY_WAIT ___bank_sound_theme_025_wav, _sound_theme_025_wav, ___mute_mask_sound_theme_025_wav
        PLAY_WAIT ___bank_sound_theme_026_wav, _sound_theme_026_wav, ___mute_mask_sound_theme_026_wav

        VM_RET_FAR
