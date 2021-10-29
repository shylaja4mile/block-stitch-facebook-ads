connection: "@{CONNECTION_NAME}"

include: "*.view.lkml"
include: "*.explore.lkml"
include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: country_coordinates {
  extends: [country_coordinates_config]
}

explore: ads {
  extends: [ads_config]
}

explore: ad_insights {
  extends: [ad_insights_config]
}

explore: ad_action_insights {
  extends: [ad_action_insights_config]
}

explore: ad_insights_by_age_and_gender {
  extends: [ad_insights_by_age_and_gender_config]
}

explore: ad_actions_by_age_and_gender {
  extends: [ad_actions_by_age_and_gender_config]
}

explore: ad_insights_by_country {
  extends: [ad_insights_by_country_config]
}

explore: ad_actions_by_country {
  extends: [ad_actions_by_country_config]
}

explore: ad_insights_by_placement_and_device {
  extends: [ad_insights_by_placement_and_device_config]
}

explore: ad_actions_by_placement_and_device {
  extends: [ad_actions_by_placement_and_device_config]
}

explore: adsets {
  extends: [adsets_config]
}
