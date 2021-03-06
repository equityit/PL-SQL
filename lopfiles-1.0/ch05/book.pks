REM $Id: book.pks,v 1.1 2001/11/30 23:19:50 bill Exp $
REM From "Learning Oracle PL/SQL" Chapter 5

REM Spec of "book" package implied by Chapter 5

CREATE OR REPLACE PACKAGE book
AS

   TYPE refcur_t IS REF CURSOR;

   PROCEDURE add(isbn_in IN VARCHAR2, title_in IN VARCHAR2,
      author_in IN VARCHAR2, page_count_in IN NUMBER, 
      summary_in IN VARCHAR2 DEFAULT NULL,
      date_published_in IN DATE DEFAULT NULL,
      barcode_id_in IN VARCHAR2 DEFAULT NULL);

   PROCEDURE add_copy(isbn_in IN VARCHAR2, barcode_id_in IN VARCHAR2);

   FUNCTION book_copy_qty(isbn_in IN VARCHAR2)
   RETURN NUMBER;

   PROCEDURE change(isbn_in IN VARCHAR2, new_title IN VARCHAR2, 
      new_author IN VARCHAR2, new_page_count IN NUMBER,
      new_summary IN VARCHAR2 DEFAULT NULL, 
      new_date_published IN DATE DEFAULT NULL);

   PROCEDURE remove_copy(isbn_in IN VARCHAR2, barcode_id_in IN VARCHAR2);

   PROCEDURE weed(isbn_in IN VARCHAR2);

   FUNCTION book_cur (isbn_in IN VARCHAR2,
      title_in IN VARCHAR2,
      author_in IN VARCHAR2,
      date_published_in IN VARCHAR2,
      startrec IN VARCHAR2 DEFAULT '1',
      rows_to_fetch IN VARCHAR2 DEFAULT 'ALL',
      orderby IN VARCHAR2 DEFAULT '1')
   RETURN refcur_t;

   FUNCTION book_copies_cur (isbn_in VARCHAR2)
   RETURN refcur_t;

END book;
/

SHOW ERRORS

