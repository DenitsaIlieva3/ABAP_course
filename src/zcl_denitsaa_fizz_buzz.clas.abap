CLASS zcl_denitsaa_fizz_buzz DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA result TYPE string.
    INTERFACES if_oo_adt_classrun .
    INTERFACES zif_abap_course_basics .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_denitsaa_fizz_buzz IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA(lo_fizzbuzz) = NEW zcl_denitsaa_fizz_buzz( ).
  lo_fizzbuzz->zif_abap_course_basics~fizz_buzz( ).
  out->write( lo_fizzbuzz->result ).
  ENDMETHOD.


  METHOD zif_abap_course_basics~calculator.
  ENDMETHOD.


  METHOD zif_abap_course_basics~date_parsing.
  ENDMETHOD.


  METHOD zif_abap_course_basics~fizz_buzz.
  DATA lv_result TYPE string.
  DATA lv_temp TYPE string.


    DO 100 TIMES.
    IF sy-index MOD 3 = 0 AND sy-index MOD 5 = 0.
       lv_temp = 'FizzBuzz'.

        ELSEIF sy-index MOD 3 = 0.
        lv_temp = 'Fizz'.

        ELSEIF sy-index MOD 5 = 0.
        lv_temp = 'Buzz'.

        ELSE.
        lv_temp = |{ sy-index }|.

        ENDIF.
        result = result && lv_temp && cl_abap_char_utilities=>newline.

          ENDDO.
  ENDMETHOD.


  METHOD zif_abap_course_basics~get_current_date_time.
  ENDMETHOD.


  METHOD zif_abap_course_basics~hello_world.
  ENDMETHOD.


  METHOD zif_abap_course_basics~internal_tables.
  ENDMETHOD.


  METHOD zif_abap_course_basics~open_sql.
  ENDMETHOD.


  METHOD zif_abap_course_basics~scrabble_score.
  ENDMETHOD.
ENDCLASS.
