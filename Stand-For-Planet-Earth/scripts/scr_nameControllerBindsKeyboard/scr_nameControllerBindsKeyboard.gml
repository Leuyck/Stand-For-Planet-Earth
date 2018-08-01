///scr_nameControllerBindsKeyboard();
//bind name for keyboard controller;

k_bindRight = ord("D");
k_bindLeft = ord("Q");
k_bindUp = ord("Z");
k_bindDown = ord("S");
k_bindJump = vk_space;
k_bindDash = vk_shift;
k_bindFire1 = mb_left;
k_bindFire2 = mb_right;
k_bindUse1 = ord("E");
k_bindUse2 = vk_enter;
k_bindCancel = vk_escape;
k_bindLink = ord("A");
k_bindTaunt= ord("T");
k_bindPause =vk_escape;
k_bindBonus1 = ord("1");
k_bindBonus2 = ord("2");

///IN MENU
validKey = keyboard_check_pressed(k_bindUse1) ||keyboard_check_pressed(k_bindUse2);
cancelKey = keyboard_check_pressed(k_bindCancel);
startKey = keyboard_check_pressed(k_bindUse2);

upBind = keyboard_check_pressed(vk_up)|| keyboard_check_pressed(ord("Z"))
downBind = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
leftBind = keyboard_check_pressed(vk_left) || keyboard_check_pressed(ord("Q"))
rightBind = keyboard_check_pressed(vk_right) || keyboard_check_pressed(ord("D"))

//IN GAME
dashKey = keyboard_check_pressed(k_bindJump)|| keyboard_check_pressed(k_bindDash);
cancelKey =keyboard_check_pressed(k_bindCancel);
useKey = keyboard_check_pressed(k_bindUse1)||keyboard_check_pressed(k_bindUse2);
useKeyPressed = keyboard_check(k_bindUse1)||keyboard_check(k_bindUse2);
tauntKey = keyboard_check_pressed(k_bindTaunt);
pauseKey = keyboard_check_pressed(k_bindPause);
fire1Key = mouse_check_button(k_bindFire1);
fire2Key = mouse_check_button(k_bindFire2);
linkKey = keyboard_check(k_bindLink);
bonus1Key = keyboard_check(k_bindBonus1);
bonus2Key = keyboard_check(k_bindBonus2);

///Keyboard directions.
upKBind = keyboard_check(vk_up)|| keyboard_check(ord("Z"))
downKBind = keyboard_check(vk_down) || keyboard_check(ord("S"))
leftKBind = keyboard_check(vk_left) || keyboard_check(ord("Q"))
rightKBind = keyboard_check(vk_right) || keyboard_check(ord("D"))

horizontalValue = rightKBind -leftKBind ;
verticalValue = downKBind -upKBind ;