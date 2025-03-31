CLASS zcl_denitsaa_calculator DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_denitsaa_calculator IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
* Declarations
**********************************************************************

    " comment/uncomment these line for different result types
    TYPES t_result TYPE p LENGTH 8 DECIMALS 2.
*    TYPES t_result TYPE p LENGTH 8 DECIMALS 0.
*    TYPES t_result TYPE i.

    DATA result TYPE t_result.

* Calculations
**********************************************************************
    " comment/uncomment these lines for different calculations

    result = 25 + 5 .
*    result = 25 - 5.
*    result = 25 * 5.
*    result = 25 / 5.
*
*    result = sqrt( 25 ).
*    result = ipow( base = 25 exp = 35 ).
*
*    result = ( 25 * 5 - 5 ) / ( 5 + 5 ).
*   result = 25 * 5 - 5 / 5 + 5.

* Output
**********************************************************************

    out->write( result ).

  ENDMETHOD.
ENDCLASS.
