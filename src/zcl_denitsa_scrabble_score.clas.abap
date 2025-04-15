CLASS zcl_denitsa_scrabble_score DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS scrabble_score
    IMPORTING iv_word          TYPE string
    RETURNING VALUE(rv_result) TYPE i.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_denitsa_scrabble_score IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA: lv_word TYPE string,
        lv_result TYPE i.

  lv_word = 'Hi, my name is Denitsa' .
  lv_result = scrabble_score( iv_word = lv_word ).

  out->write( lv_result ).
  ENDMETHOD.

  METHOD scrabble_score.
  DATA: string_sum    TYPE i VALUE 0,
        current_char  TYPE c LENGTH 1,
        upper_text    TYPE string,
        abc_index     TYPE i,
        offset        TYPE i,
        abc_offset    TYPE i,
        abc_char      TYPE c LENGTH 1.

  upper_text = to_upper( iv_word ).

  DO strlen( upper_text ) TIMES.
    offset = sy-index - 1.

    current_char = upper_text+offset(1).


    DO 26 TIMES.
      abc_offset = sy-index - 1.
      abc_char = sy-abcde+abc_offset(1).
        IF current_char = abc_char.
        abc_index = sy-index.
        string_sum = string_sum + abc_index.
        EXIT.
      ENDIF.
    ENDDO.

  ENDDO.
  rv_result = string_sum.
ENDMETHOD.
ENDCLASS.
