#pragma bank 255

// Palette: 0

#include "gbs_types.h"

BANKREF(palette_0)

const struct palette_t palette_0 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(13, 12, 21), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(13, 12, 21), RGB(5, 4, 10), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 30), RGB(13, 12, 21), RGB(5, 4, 10), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 30), RGB(5, 4, 10), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(5, 4, 10), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(7, 0, 1)),
        CGB_PALETTE(RGB(23, 26, 26), RGB(27, 16, 27), RGB(16, 0, 20), RGB(7, 0, 1))
    }
};
