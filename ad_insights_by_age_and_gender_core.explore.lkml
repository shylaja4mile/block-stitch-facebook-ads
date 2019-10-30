explore: ad_insights_by_age_and_gender_core {
  hidden:yes
  extension: required

  join: ads {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights_by_age_and_gender.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
