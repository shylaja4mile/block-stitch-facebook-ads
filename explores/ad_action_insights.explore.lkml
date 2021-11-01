include: "/views/*.view.lkml"

explore: ad_action_insights {

  join: ads {
    type: left_outer
    sql_on: ${ad_action_insights.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_action_insights.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_action_insights.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
