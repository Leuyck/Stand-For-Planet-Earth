{
    "id": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_bullet_base",
    "eventList": [
        {
            "id": "8df83c23-649d-47dd-a6c4-e2d2fcde8e5d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        },
        {
            "id": "b1508711-bf90-422d-b977-97a64a28ce98",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        },
        {
            "id": "40b1e639-2999-4f94-ac95-d600143da8f9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        },
        {
            "id": "67933ee2-9310-4274-ba34-b8e0fbbda7c8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "6a6e7f64-a541-4ea5-abb4-77b99b27b8ed",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        },
        {
            "id": "c47ba8a1-5952-4d29-a663-17632cf78bac",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 1,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        },
        {
            "id": "18a26fa9-0336-4d50-bd31-37770eddd51e",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 1,
            "eventtype": 3,
            "m_owner": "c0b0ba99-3a6b-4c13-a7e6-7a93e1ffce62"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
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
            "id": "57c4eb5a-aca2-446f-9794-4142eea514b7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "40",
            "varName": "speed",
            "varType": 0
        },
        {
            "id": "670d1d3d-d207-47c1-a044-f413f0f872fa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1500",
            "varName": "maxDistance",
            "varType": 0
        },
        {
            "id": "763c8bb8-ba96-4203-9d0d-f2d5bf0aed37",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "damage",
            "varType": 0
        },
        {
            "id": "999a63b3-147d-4f4f-abbd-9ccf37ec9a26",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "false",
            "varName": "explosive",
            "varType": 3
        },
        {
            "id": "51766525-5d18-427d-89a9-9a5b9ceec9df",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "20",
            "varName": "explosionDamage",
            "varType": 0
        },
        {
            "id": "c21f2b3c-c42e-4ccb-b7aa-18591651c23b",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "374",
            "varName": "explosionRange",
            "varType": 0
        },
        {
            "id": "b9a594e5-a7ee-4a6b-bfdf-ac8d728ce81c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_bullet2_explosion",
            "varName": "explosionObject",
            "varType": 5
        }
    ],
    "solid": false,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}