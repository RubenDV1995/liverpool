enum FailuresEnum {
  unknown,
  parseError,
  notFoundElements,
  unauthorized,
  network,
  brightness,

  ///Sounds
  notSoundFound,
  notSoundsFound,

  ///Voices
  notVoiceFound,
  notVoicesFound,

  ///Suggestions
  notSuggestionFound,
  notSuggestionsFound,

  ///Modes
  notModeFound,
  notModesFound,

  ///Firebase
  cancelDownload,

  ///AppConfigs
  notConfigFound,
  notConfigsFound,

  ///AppConfigs
  urlParseError,
  urlLaunchError,

  ///AppConfigs
  notSingFound,
  notSingsFound
}

Map<String, Object> mapFailures = {
  "failures": [
    {
      "id": "unknown",
      "title": "Error",
    },
    {
      "id": "parseError",
      "title": "Error",
    },
    {
      "id": "notFoundElements",
      "title": "Error",
    },
    {
      "id": "unauthorized",
      "title": "Error",
    },
    {
      "id": "network",
      "title": "Error",
    },
    {
      "id": "notSoundFound",
      "title": "Error",
    },
    {
      "id": "notSoundsFound",
      "title": "Error",
    },
    {
      "id": "notVoiceFound",
      "title": "Error",
    },
    {
      "id": "notVoicesFound",
      "title": "Error",
    },
    {
      "id": "notSuggestionFound",
      "title": "Error",
    },
    {
      "id": "notSuggestionsFound",
      "title": "Error",
    },
    {
      "id": "notModeFound",
      "title": "Error",
    },
    {
      "id": "notModesFound",
      "title": "Error",
    },
    {
      "id": "cancelDownload",
      "title": "Error",
    },
    {
      "id": "brightness",
      "title": "Error",
    },
    {
      "id": "notConfigFound",
      "title": "Error",
    },
    {
      "id": "notConfigsFound",
      "title": "Error",
    },
    {
      "id": "urlParseError",
      "title": "Error",
    },
    {
      "id": "urlLaunchError",
      "title": "Error",
    },
    {
      "id": "notSingFound",
      "title": "Error",
    },
    {
      "id": "notSingsFound",
      "title": "Error",
    }
  ]
};
