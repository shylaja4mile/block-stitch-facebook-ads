explore: ads_core {
  hidden:yes
  extension: required

  join: campaigns {
    type: left_outer
    sql_on: ${ads.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ads.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: adcreative {
    type: left_outer
    sql_on: ${ads.creative_id} = ${adcreative.id} ;;
    relationship: many_to_one
  }

  join: campaign_utm {
    type: left_outer
    sql_on: ${ads.creative_id} = ${campaign_utm.creative_id} ;;
    relationship: many_to_one
  }
}
