view: transaction_detail {
  sql_table_name: `ecomm.transaction_detail` ;;

  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: delivered {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.delivered_at ;;
  }
  dimension: items {
    hidden: yes
    sql: ${TABLE}.items ;;
  }
  dimension: order_id {
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.shipped_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user__age {
    type: number
    sql: ${TABLE}.user.age ;;
    group_label: "User"
    group_item_label: "Age"
  }
  dimension: user__city {
    type: string
    sql: ${TABLE}.user.city ;;
    group_label: "User"
    group_item_label: "City"
  }
  dimension: user__country {
    type: string
    sql: ${TABLE}.user.country ;;
    group_label: "User"
    group_item_label: "Country"
  }
  dimension: user__email {
    type: string
    sql: ${TABLE}.user.email ;;
    group_label: "User"
    group_item_label: "Email"
  }
  dimension: user__gender {
    type: string
    sql: ${TABLE}.user.gender ;;
    group_label: "User"
    group_item_label: "Gender"
  }
  dimension: user__location {
    type: string
    sql: ${TABLE}.user.location ;;
    group_label: "User"
    group_item_label: "Location"
  }
  dimension: user__name {
    type: string
    sql: ${TABLE}.user.name ;;
    group_label: "User"
    group_item_label: "Name"
  }
  dimension: user__state {
    type: string
    sql: ${TABLE}.user.state ;;
    group_label: "User"
    group_item_label: "State"
  }
  dimension: user__traffic_source {
    type: string
    sql: ${TABLE}.user.traffic_source ;;
    group_label: "User"
    group_item_label: "Traffic Source"
  }
  dimension_group: user__user_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.user.user_created_at ;;
  }
  dimension: user__user_id {
    type: number
    sql: ${TABLE}.user.user_id ;;
    group_label: "User"
    group_item_label: "User ID"
  }
  dimension: user__zip {
    type: string
    sql: ${TABLE}.user.zip ;;
    group_label: "User"
    group_item_label: "Zip"
  }
  measure: count {
    type: count
    drill_fields: [user__name]
  }
}

view: transaction_detail__items {
  drill_fields: [inventory_item_id]

  dimension: inventory_item_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.inventory_item_id ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension: sale_price {
    type: number
    sql: ${TABLE}.sale_price ;;
  }
  dimension: transaction_detail__items {
    type: string
    hidden: yes
    sql: transaction_detail__items ;;
  }
}
