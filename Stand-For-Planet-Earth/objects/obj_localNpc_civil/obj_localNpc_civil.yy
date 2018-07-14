{
    "id": "fdf40a2f-16e4-4b48-8d95-3c21d383f523",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_localNpc_civil",
    "eventList": [
        {
            "id": "e39b9927-1f58-45b2-9169-595f52ece583",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        },
        {
            "id": "0df4ac9c-6da6-4480-b930-b250b2db2eb7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        },
        {
            "id": "79a3a916-ad14-414a-becf-40bc3dde404d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 5,
            "eventtype": 2,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        },
        {
            "id": "e30eed81-9fa2-4625-9301-1a5a2dd2c1af",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 6,
            "eventtype": 2,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        },
        {
            "id": "1d92438a-1537-4b36-af10-578266991934",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 1,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        },
        {
            "id": "93fc94a6-258b-4fff-8886-270d3430aa07",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "fdf40a2f-16e4-4b48-8d95-3c21d383f523"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": [
        {
            "id": "27a337ba-2f0d-4025-a1dd-433b7c391e5f",
            "modelName": "GMOverriddenProperty",
            "mvc": "1.0",
            "objectId": "34b0a55f-449d-4989-a1ef-a5c87990ff00",
            "propertyId": "8c801dd1-c628-4ee2-b14b-f793acbfb58a",
            "value": "1"
        }
    ],
    "parentObjectId": "34b0a55f-449d-4989-a1ef-a5c87990ff00",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 0,
    "physicsShapePoints": [
        
    ],
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "4410bdea-b2a3-45bd-a2ac-7681c8437dc9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "30*room_speed",
            "varName": "fearDuration",
            "varType": 0
        },
        {
            "id": "7b55d1a5-0930-4942-a700-a8443553caa7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "5*room_speed +irandom(3*room_speed)",
            "varName": "runDuration",
            "varType": 0
        },
        {
            "id": "39fba83b-216e-431b-85bd-5fd70eb8ac87",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "500",
            "varName": "hearRange",
            "varType": 0
        },
        {
            "id": "548a5610-4a57-4a99-ba6b-9c1f6c329321",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "500",
            "varName": "viewRange",
            "varType": 0
        }
    ],
    "solid": true,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}