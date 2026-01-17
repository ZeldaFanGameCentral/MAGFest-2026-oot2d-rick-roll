#pragma bank 255

// Palette: 3

#include "gbs_types.h"

BANKREF(palette_3)

const struct palette_t palette_3 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_LITE_GRAY, DMG_BLACK),
        DMG_PALETTE(DMG_WHITE, DMG_WHITE, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(13, 12, 21), RGB(5, 4, 10), RGB(4, 5, 10))
    }
};
