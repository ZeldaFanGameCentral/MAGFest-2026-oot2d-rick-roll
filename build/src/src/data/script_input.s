.module script_input

.include "vm.i"
.include "data/game_globals.i"

.area _CODE_255


___bank_script_input = 255
.globl ___bank_script_input

_script_input::
GBVM$script_input$0c7fa9fa_77a2_4c52_8afa_c52df54929fe$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_input$0c7fa9fa_77a2_4c52_8afa_c52df54929fe$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Input Script Remove
        VM_INPUT_DETACH         68

GBVM$script_input$b6468c5f_82d0_4827_a145_422ec8a77ed9$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_input$b6468c5f_82d0_4827_a145_422ec8a77ed9$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Thread Start
        VM_UNLOCK
        VM_BEGINTHREAD          ___bank_script_thread, _script_thread, VAR_TEMP_0, 0

GBVM_END$script_input$b6468c5f_82d0_4827_a145_422ec8a77ed9 = .
.globl GBVM_END$script_input$b6468c5f_82d0_4827_a145_422ec8a77ed9
GBVM$script_input$7480dc84_056f_4228_9dc4_c3652fdd14db$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script = .
.globl GBVM$script_input$7480dc84_056f_4228_9dc4_c3652fdd14db$4912bee2_387a_472f_ae4f_6679b6149517$scene$4912bee2_387a_472f_ae4f_6679b6149517$script
        ; Timer Start
        VM_TIMER_PREPARE        1, ___bank_script_timer, _script_timer
        VM_TIMER_SET            1, 225

GBVM_END$script_input$7480dc84_056f_4228_9dc4_c3652fdd14db = .
.globl GBVM_END$script_input$7480dc84_056f_4228_9dc4_c3652fdd14db
        ; Stop Script
        VM_STOP
