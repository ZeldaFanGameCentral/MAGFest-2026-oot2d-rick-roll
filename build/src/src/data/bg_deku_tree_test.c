#pragma bank 255

// Background: deku-tree-test

#include "gbs_types.h"
#include "data/bg_deku_tree_test_tileset.h"
#include "data/bg_deku_tree_test_tilemap.h"
#include "data/bg_deku_tree_test_tilemap_attr.h"

BANKREF(bg_deku_tree_test)

const struct background_t bg_deku_tree_test = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_deku_tree_test_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_deku_tree_test_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_deku_tree_test_tilemap_attr)
};
