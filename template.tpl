___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Tomi AI Lead Submit",
  "categories": ["ATTRIBUTION", "CONVERSIONS"],
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "lid",
    "displayName": "Lead ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "em",
    "displayName": "Email",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "ph",
    "displayName": "Phone",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "uid",
    "displayName": "User ID",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const copyFromWindow = require('copyFromWindow');

const tomi = copyFromWindow('tomi');
if (tomi){
  tomi.track({
    lid: data.lid,
    em: data.em,
    ph: data.ph,
    uid: data.uid,
  });
  data.gtmOnSuccess();
} else {
  data.gtmOnFailure("Tomi Pixel is not installed");
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "tomi"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 5/25/2023, 6:56:46 PM


