#pragma bank 255

// Background: logo-test2

#include "gbs_types.h"
#include "data/bg_logo_test2_tileset.h"
#include "data/bg_logo_test2_tilemap.h"
#include "data/bg_logo_test2_tilemap_attr.h"

BANKREF(bg_logo_test2)

const struct background_t bg_logo_test2 = {
    .width = 20,
    .height = 18,
    .tileset = TO_FAR_PTR_T(bg_logo_test2_tileset),
    .cgb_tileset = { NULL, NULL },
    .tilemap = TO_FAR_PTR_T(bg_logo_test2_tilemap),
    .cgb_tilemap_attr = TO_FAR_PTR_T(bg_logo_test2_tilemap_attr)
};
