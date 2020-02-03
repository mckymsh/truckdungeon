{
    "id": "d34bc94d-6042-4a77-8ebf-26d3efc5bb6b",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_projectile_maingun",
    "eventList": [
        {
            "id": "4a45f8d6-95ab-4973-a61a-79a1073548b9",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 7,
            "m_owner": "d34bc94d-6042-4a77-8ebf-26d3efc5bb6b"
        },
        {
            "id": "ad1080f8-201e-47e6-ba7f-2a65c59c16cb",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "d34bc94d-6042-4a77-8ebf-26d3efc5bb6b"
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
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "a17041da-3651-4138-adb5-bd2bebe62e93",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "10",
            "varName": "damage",
            "varType": 0
        },
        {
            "id": "4fd1c02c-e11f-4321-874f-6a8484cdabec",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "room_speed\/3",
            "varName": "projectile_speed",
            "varType": 0
        }
    ],
    "solid": false,
    "spriteId": "4c72f755-8920-4980-a858-9f851df048f8",
    "visible": true
}