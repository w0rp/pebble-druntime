/**
 * D header file for C99.
 *
 * $(C_HEADER_DESCRIPTION pubs.opengroup.org/onlinepubs/009695399/basedefs/_locale.h.html, _locale.h)
 *
 * Copyright: Copyright Sean Kelly 2005 - 2009.
 * License: Distributed under the
 *      $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost Software License 1.0).
 *    (See accompanying file LICENSE)
 * Authors:   Sean Kelly
 * Source:    $(DRUNTIMESRC core/stdc/_locale.d)
 * Standards: ISO/IEC 9899:1999 (E)
 */

module core.stdc.locale;

extern (C):
@trusted: // Only setlocale operates on C strings.
nothrow:
@nogc:

///
struct lconv
{
    char* decimal_point;
    char* thousands_sep;
    char* grouping;
    char* int_curr_symbol;
    char* currency_symbol;
    char* mon_decimal_point;
    char* mon_thousands_sep;
    char* mon_grouping;
    char* positive_sign;
    char* negative_sign;
    byte  int_frac_digits;
    byte  frac_digits;
    byte  p_cs_precedes;
    byte  p_sep_by_space;
    byte  n_cs_precedes;
    byte  n_sep_by_space;
    byte  p_sign_posn;
    byte  n_sign_posn;
    byte  int_p_cs_precedes;
    byte  int_p_sep_by_space;
    byte  int_n_cs_precedes;
    byte  int_n_sep_by_space;
    byte  int_p_sign_posn;
    byte  int_n_sign_posn;
}

//
enum LC_ALL            = 0;
///
enum LC_COLLATE        = 1;
///
enum LC_CTYPE          = 2;
///
enum LC_MONETARY       = 3;
///
enum LC_NUMERIC        = 4;
///
enum LC_TIME           = 5;
///
enum LC_MESSAGES       = 6;

///
@system char*  setlocale(int category, in char* locale);
///
lconv* localeconv();
