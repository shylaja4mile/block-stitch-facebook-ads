include: "/views/*.view.lkml"

explore: ad_actions_by_age_and_gender {


  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_age_and_gender.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
