/// scr_updateLinkEnergyState()

if(currentEnergy == 0 && linkTarget != noone) {
    buffer_seek (global.bufferNetwork, buffer_seek_start, 0);
    buffer_write(global.bufferNetwork, buffer_u8, S_BROADCAST_HEROS_UNLINKED);
    buffer_write(global.bufferNetwork, buffer_u8, global.playerId);
    buffer_write(global.bufferNetwork, buffer_u8, linkTarget.playerId);
    network_send_packet (obj_client.socket, global.bufferNetwork, buffer_tell(global.bufferNetwork));

    linkTarget = noone;
}
        
scr_updateCurrentEnergyRegenFromLinks();
scr_updateMaxEnergyFromLinks();

if(currentEnergy > currentMaxEnergy)
{
    currentEnergyRegen = overChargedDegen;
}


