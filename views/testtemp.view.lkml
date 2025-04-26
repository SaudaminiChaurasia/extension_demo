view: testtemp {
  sql_table_name: `ecomm.testtemp` ;;

  dimension: person_id {
    type: number
    sql: ${TABLE}.PersonID ;;
  }
  measure: count {
    type: count
  }
}
