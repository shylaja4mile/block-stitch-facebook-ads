explore: adsets_core {
  hidden:yes
  extension: required

  join: campaigns {
    type: left_outer
    sql_on: ${adsets.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
