view: testtemp1 {
  sql_table_name: `ecomm.testtemp1` ;;

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }
  measure: count {
    type: count
  }
}
