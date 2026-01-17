#pragma bank 255

// Palette: 1

#include "gbs_types.h"

BANKREF(palette_1)

const struct palette_t palette_1 = {
    .mask = 0xFF,
    .palette = {
        DMG_PALETTE(DMG_WHITE, DMG_LITE_GRAY, DMG_DARK_GRAY, DMG_BLACK)
    },
    .cgb_palette = {
        CGB_PALETTE(RGB(31, 31, 31), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 12, 1), RGB(29, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 12, 1), RGB(29, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(0, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(29, 0, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 12, 1), RGB(0, 0, 1), RGB(0, 0, 1)),
        CGB_PALETTE(RGB(31, 31, 31), RGB(31, 12, 1), RGB(0, 0, 1), RGB(0, 0, 1))
    }
};
