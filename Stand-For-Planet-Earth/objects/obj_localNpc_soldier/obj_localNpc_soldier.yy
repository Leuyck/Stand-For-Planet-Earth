{
    "id": "e9c7f28f-10d6-4599-905a-16d52718e439",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_localNpc_soldier",
    "eventList": [
        {
            "id": "2a81acbf-02ca-472b-977b-0da8555f5eab",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "c6624687-3cf3-4dd8-8b24-b90f90db57d4",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "029b6729-cd24-44b5-b66c-616fec2be9cf",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 8,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "31f31bfd-f463-420f-824c-34c36e2ef9e2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 5,
            "eventtype": 2,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "70b86c35-43ad-44cd-ab15-86e8ae0d407f",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 3,
            "eventtype": 2,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "5b889159-88ba-4762-b70f-489fe81f6668",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 4,
            "eventtype": 2,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        },
        {
            "id": "ea225f4e-c66d-4208-8ce1-42bc6ad7f54a",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "e9c7f28f-10d6-4599-905a-16d52718e439"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
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
            "id": "2641d235-768b-499b-a113-71fa2904bd74",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2*normalSpd",
            "varName": "spdChase",
            "varType": 0
        },
        {
            "id": "1997a253-2749-4af7-b85f-1a48a603bfcf",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "200",
            "varName": "attack_range_min",
            "varType": 0
        },
        {
            "id": "c4cfd35a-830b-4499-b2da-973d93373af4",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "400",
            "varName": "attack_range_max",
            "varType": 0
        },
        {
            "id": "c4dccf37-f60e-42e4-a36c-b2e0af2b69a2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "1",
            "varName": "shot1_bullet_count",
            "varType": 0
        },
        {
            "id": "13f3d796-c8b6-4c4e-a6a2-1e26f18fe32f",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "12",
            "varName": "shot1PerSecMax",
            "varType": 0
        },
        {
            "id": "8075e074-8d38-4e46-a3bc-b7bbb331c9a7",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "obj_bulletNPC",
            "varName": "shot1_bullet_type",
            "varType": 5
        },
        {
            "id": "c95482c2-8af6-4001-b1f9-f35184c35e79",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "amoQuantity",
            "varType": 0
        },
        {
            "id": "7b0fdddd-2dcc-44a0-9fd5-49b69a1106fa",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "3",
            "varName": "precision",
            "varType": 0
        },
        {
            "id": "36ef5ef0-16b9-4060-9a66-d27299783a70",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "True",
            "varName": "canReload",
            "varType": 3
        },
        {
            "id": "0c67f7ab-b56f-4280-acf6-01001798b615",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "2",
            "varName": "reloadingTime",
            "varType": 0
        },
        {
            "id": "a9ad3a5b-f21b-46dc-95a5-c0d69fa2e483",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "snd_pistolBot_fire1",
            "varName": "fire1Sound",
            "varType": 5
        }
    ],
    "solid": true,
    "spriteId": "00000000-0000-0000-0000-000000000000",
    "visible": true
}