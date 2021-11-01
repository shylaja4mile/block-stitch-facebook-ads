include: "/views/*.view.lkml"
explore: adsets {


  join: campaigns {
    type: left_outer
    sql_on: ${adsets.campaign_id} = ${campaigns.id} ;;
    relationship: many_to_one
  }
}
