bindRight = ord("D");
bindLeft = ord("Q");
bindUp = ord("Z");
bindDown = ord("S");
bindJump = vk_space;
bindDash = vk_shift;
bindFire1 = mb_left;
bindFire2 = mb_right;
bindUse = ord("E");

if (instance_exists(obj_chatTyping) && obj_chatTyping.isTyping == false && !bump)
{
    rightKey = keyboard_check (bindRight);
    leftKey = keyboard_check (bindLeft);
    upKey = keyboard_check (bindUp);
    downKey = keyboard_check (bindDown);
    jumpKey = keyboard_check (bindJump);
    dashKey = keyboard_check (bindDash) || keyboard_check(bindJump);
    fire1 = mouse_check_button(bindFire1);
    fire2 = mouse_check_button (bindFire2);
    useKey = keyboard_check (bindUse);
}