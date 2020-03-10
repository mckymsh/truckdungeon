{
    "id": "8d3d5f1f-c96e-4769-9c32-1cac8ba26e85",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_maingun_muzzle_flash",
    "eventList": [
        {
            "id": "883793a7-a731-466b-998f-1b18f684df12",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "8d3d5f1f-c96e-4769-9c32-1cac8ba26e85"
        },
        {
            "id": "f711d6e8-cece-4196-ae1b-8cc460d4acde",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 2,
            "eventtype": 3,
            "m_owner": "8d3d5f1f-c96e-4769-9c32-1cac8ba26e85"
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
            "id": "802dfdc7-41a2-4884-91c6-5d8f54568610",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "instance_nearest(x, y, obj_truck)",
            "varName": "target_object",
            "varType": 4
        }
    ],
    "solid": false,
    "spriteId": "da238749-d5d7-4e1d-b93c-475f03713b9c",
    "visible": true
}