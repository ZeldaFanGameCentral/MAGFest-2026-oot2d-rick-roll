#pragma bank 255

// Scene: deku-test-map
// Triggers

#include "gbs_types.h"
#include "data/trigger_0_interact.h"

BANKREF(scene_9_triggers)

const struct trigger_t scene_9_triggers[] = {
    {
        // Trigger 1,
        .x = 19,
        .y = 6,
        .width = 1,
        .height = 3,
        .script = TO_FAR_PTR_T(trigger_0_interact),
        .script_flags = TRIGGER_HAS_ENTER_SCRIPT
    }
};
