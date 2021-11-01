include: "/views/*.view.lkml"

explore: ad_actions_by_country {


  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_country.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_country.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_country.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

}
