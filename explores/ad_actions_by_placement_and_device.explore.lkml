include: "/views/*.view.lkml"

explore: ad_actions_by_placement_and_device {


  join: ads {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.ad_id} = ${ads.id} ;;
    relationship: many_to_one
  }

  join: adsets {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.adset_id} = ${adsets.id} ;;
    relationship: many_to_one
  }

  join: campaigns {
    type: left_outer
    sql_on: ${ad_actions_by_placement_and_device.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
