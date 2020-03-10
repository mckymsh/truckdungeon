{
    "id": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_truck",
    "eventList": [
        {
            "id": "201d85b8-df3a-4c53-9ce7-9238938c3f53",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "d50b734d-b460-488d-a14f-d4ad04e975c8",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "9dc46a32-cd65-441c-a7f4-358196f6877d",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "9f5d258d-3b2a-401e-8bf5-e3ca9d65863c",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "f7527823-f5e2-466f-ad32-5a572d923dd6",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "5f8d7aef-44cf-4ffb-a3cd-46886353d6b2",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "3e2527b9-0444-4988-981b-6aee4ac9f620",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "ec4ccc67-e6ed-4348-9370-cc27a8d3e0cd",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "54d8aeb5-b846-43eb-b8c8-f25ed82b46f0",
            "enumb": 0,
            "eventtype": 4,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        },
        {
            "id": "91e8b180-b626-4801-9bcc-e2ba35db0580",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 11,
            "eventtype": 2,
            "m_owner": "025e8c71-57b8-4da6-a51c-7e6e3b0c3255"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "00000000-0000-0000-0000-000000000000",
    "persistent": true,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "0a89b3f8-3a2b-4564-8395-8ae5e94d0e23",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.1",
            "varName": "turning_ratio",
            "varType": 0
        },
        {
            "id": "8860d5d3-737c-4fef-ba44-9e6bc6a5ee8c",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "turning_increment",
            "varType": 0
        },
        {
            "id": "c6d48ef6-49ee-4080-abfc-70bba99ebc60",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.01",
            "varName": "acceleration_ratio",
            "varType": 0
        },
        {
            "id": "893095b5-b420-45bb-9f9a-960110a74c18",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "acceleration_ratio\/2",
            "varName": "reverse_acceleration_ratio",
            "varType": 4
        },
        {
            "id": "6202097c-993e-4c14-a1c2-a931cdbe49ff",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.95",
            "varName": "deceleration_ratio",
            "varType": 0
        },
        {
            "id": "8f0b2745-1e63-4cf9-8738-a1912e76c5e2",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.75",
            "varName": "braking_ratio",
            "varType": 0
        },
        {
            "id": "09189785-fcbd-4766-91bf-044562c4f7d6",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.2",
            "varName": "max_forward_speed_ratio",
            "varType": 0
        },
        {
            "id": "ffbc4a74-85cc-4238-b16e-73aea5445bb3",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "max_forward_speed_ratio\/-2",
            "varName": "max_reverse_speed_ratio",
            "varType": 4
        },
        {
            "id": "217001fc-760b-4143-83b1-1cd1efb087eb",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": ".75",
            "varName": "bounce_ratio",
            "varType": 0
        },
        {
            "id": "9bc72cfc-43e0-49e0-9486-dc6aeab9c4ef",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "hp",
            "varType": 0
        },
        {
            "id": "a9bd30e2-2e3a-47a2-95b1-3694d8b14f9d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "False",
            "varName": "have_minigun",
            "varType": 3
        },
        {
            "id": "9226483c-d0d1-4717-9723-c1764949ec96",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "have_rocketlauncher",
            "varType": 3
        },
        {
            "id": "dffd1ef1-e57d-4292-bf0e-17ef46161e62",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "stuck",
            "varType": 3
        },
        {
            "id": "f7300e4c-55b2-4f6a-95d0-aed60fc477fe",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0",
            "varName": "dead",
            "varType": 3
        }
    ],
    "solid": false,
    "spriteId": "cf44b016-59e4-4c0d-aed5-6d2c282f7bd4",
    "visible": true
}