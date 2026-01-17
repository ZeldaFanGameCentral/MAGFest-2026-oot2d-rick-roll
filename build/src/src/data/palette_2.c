#pragma bank 255

// Palette: 2

#include "gbs_types.h"

BANKREF(palette_2)

const struct palette_t palette_2 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(0, 26, 31), RGB(0, 3, 24), RGB(5, 4, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(26, 31, 31), RGB(0, 26, 31), RGB(0, 3, 24), RGB(5, 4, 1)),
        CGB_PALETTE(RGB(26, 31, 31), RGB(0, 26, 31), RGB(5, 4, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(0, 26, 31), RGB(22, 25, 1), RGB(18, 19, 1), RGB(13, 14, 1)),
        CGB_PALETTE(RGB(22, 25, 1), RGB(18, 19, 1), RGB(13, 14, 1), RGB(5, 4, 1)),
        CGB_PALETTE(RGB(0, 26, 31), RGB(18, 19, 1), RGB(13, 14, 1), RGB(5, 4, 1)),
        CGB_PALETTE(RGB(26, 31, 31), RGB(22, 25, 1), RGB(18, 19, 1), RGB(5, 4, 1)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(5, 4, 10), RGB(5, 4, 10), RGB(4, 5, 10))
    }
};
