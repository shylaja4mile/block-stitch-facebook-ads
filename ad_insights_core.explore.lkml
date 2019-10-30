explore: ad_insights_core {
  hidden:yes
  extension: required

  join: ads {
    type: left_outer
    sql_on: ${ad_insights.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_insights.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_insights.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
