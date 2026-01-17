#pragma bank 255

// Scene: deku-test-map

#include "gbs_types.h"
#include "data/bg_deku_tree_test.h"
#include "data/scene_9_collisions.h"
#include "data/palette_2.h"
#include "data/palette_5.h"
#include "data/sprite_player.h"
#include "data/scene_9_triggers.h"
#include "data/scene_9_init.h"

BANKREF(scene_9)

const struct scene_t scene_9 = {
    .width = 20,
    .height = 18,
    .type = SCENE_TYPE_TOPDOWN,
    .background = TO_FAR_PTR_T(bg_deku_tree_test),
    .collisions = TO_FAR_PTR_T(scene_9_collisions),
    .parallax_rows = {
        PARALLAX_STEP(0,0,0)
    },
    .palette = TO_FAR_PTR_T(palette_2),
    .sprite_palette = TO_FAR_PTR_T(palette_5),
    .reserve_tiles = 0,
    .player_sprite = TO_FAR_PTR_T(sprite_player),
    .n_actors = 0,
    .n_triggers = 1,
    .n_sprites = 0,
    .n_projectiles = 0,
    .triggers = TO_FAR_PTR_T(scene_9_triggers),
    .script_init = TO_FAR_PTR_T(scene_9_init)
};
