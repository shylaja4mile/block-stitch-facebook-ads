project_name: "block-stitch-facebook-ads"

################ Constants ################

constant:  CONFIG_PROJECT_NAME {
  value: "block-stitch-facebook-ads-config"
  export:  override_required
}

constant: CONNECTION_NAME {
  value: "facebook_data"
  export: override_required
}

constant: FACEBOOK_ADS_SCHEMA_NAME {
  value: "facebook_data"
  export: override_required
}

constant: FACEBOOK_ADS_ACCOUNT_ID {
  value: "101441173373823"
  export: override_required
}

################ Dependencies ################

local_dependency: {
  project: "@{CONFIG_PROJECT_NAME}"

  override_constant: FACEBOOK_ADS_SCHEMA_NAME {
    value: "@{FACEBOOK_ADS_SCHEMA_NAME}"
  }

  override_constant: FACEBOOK_ADS_ACCOUNT_ID {
    value: "@{FACEBOOK_ADS_ACCOUNT_ID}"
  }

}
