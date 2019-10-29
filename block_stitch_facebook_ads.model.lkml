connection: "@{CONNECTION_NAME}"

include: "*.view.lkml"
include: "*.explore.lkml"
include: "*.dashboard.lookml"
include: "//@{CONFIG_PROJECT_NAME}/*.view.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.model.lkml"
include: "//@{CONFIG_PROJECT_NAME}/*.dashboard"

explore: country_coordinates_core {}

explore: ads {
  extends: [ads_config]
}

explore: ad_insights_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_insights_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_insights_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_action_insights_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_action_insights_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_action_insights_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_action_insights_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_age_and_gender_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_age_and_gender_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_country_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_country_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_insights_by_country_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_insights_by_country_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }

  join: country_coordinates_core {
    type: left_outer
    sql_on: ${ad_insights_by_country_core.country} = ${country_coordinates_core.country} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_country_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_country_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_actions_by_country_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_actions_by_country_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_insights_by_placement_and_device_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_insights_by_placement_and_device_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: ad_actions_by_placement_and_device_core {
  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device_core.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets_core {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device_core.adset_id} = ${adsets_core.id} ;;
    relationship: many_to_one
  }

  join: campaigns_core {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }
}

explore: adsets_core {
  join: campaigns_core {
    type: left_outer
    sql_on: ${adsets_core.campaign_id} = ${campaigns_core.id} ;;
    relationship: many_to_one
  }


}
