   1              		.file	"main.cpp"
   2              		.text
   3              	.Ltext0:
   4              		.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
   5              		.align 2
   6              		.p2align 4,,15
   7              		.weak	_ZNKSt5ctypeIcE8do_widenEc
   9              	_ZNKSt5ctypeIcE8do_widenEc:
  10              	.LFB1321:
  11              		.file 1 "/usr/include/c++/7/bits/locale_facets.h"
   1:/usr/include/c++/7/bits/locale_facets.h **** // Locale support -*- C++ -*-
   2:/usr/include/c++/7/bits/locale_facets.h **** 
   3:/usr/include/c++/7/bits/locale_facets.h **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/locale_facets.h **** //
   5:/usr/include/c++/7/bits/locale_facets.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/locale_facets.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/locale_facets.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/locale_facets.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/locale_facets.h **** // any later version.
  10:/usr/include/c++/7/bits/locale_facets.h **** 
  11:/usr/include/c++/7/bits/locale_facets.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/locale_facets.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/locale_facets.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/locale_facets.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/locale_facets.h **** 
  16:/usr/include/c++/7/bits/locale_facets.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/locale_facets.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/locale_facets.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/locale_facets.h **** 
  20:/usr/include/c++/7/bits/locale_facets.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/locale_facets.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/locale_facets.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/locale_facets.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/locale_facets.h **** 
  25:/usr/include/c++/7/bits/locale_facets.h **** /** @file bits/locale_facets.h
  26:/usr/include/c++/7/bits/locale_facets.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/locale_facets.h ****  *  Do not attempt to use it directly. @headername{locale}
  28:/usr/include/c++/7/bits/locale_facets.h ****  */
  29:/usr/include/c++/7/bits/locale_facets.h **** 
  30:/usr/include/c++/7/bits/locale_facets.h **** //
  31:/usr/include/c++/7/bits/locale_facets.h **** // ISO C++ 14882: 22.1  Locales
  32:/usr/include/c++/7/bits/locale_facets.h **** //
  33:/usr/include/c++/7/bits/locale_facets.h **** 
  34:/usr/include/c++/7/bits/locale_facets.h **** #ifndef _LOCALE_FACETS_H
  35:/usr/include/c++/7/bits/locale_facets.h **** #define _LOCALE_FACETS_H 1
  36:/usr/include/c++/7/bits/locale_facets.h **** 
  37:/usr/include/c++/7/bits/locale_facets.h **** #pragma GCC system_header
  38:/usr/include/c++/7/bits/locale_facets.h **** 
  39:/usr/include/c++/7/bits/locale_facets.h **** #include <cwctype>	// For wctype_t
  40:/usr/include/c++/7/bits/locale_facets.h **** #include <cctype>
  41:/usr/include/c++/7/bits/locale_facets.h **** #include <bits/ctype_base.h>
  42:/usr/include/c++/7/bits/locale_facets.h **** #include <iosfwd>
  43:/usr/include/c++/7/bits/locale_facets.h **** #include <bits/ios_base.h>  // For ios_base, ios_base::iostate
  44:/usr/include/c++/7/bits/locale_facets.h **** #include <streambuf>
  45:/usr/include/c++/7/bits/locale_facets.h **** #include <bits/cpp_type_traits.h>
  46:/usr/include/c++/7/bits/locale_facets.h **** #include <ext/type_traits.h>
  47:/usr/include/c++/7/bits/locale_facets.h **** #include <ext/numeric_traits.h>
  48:/usr/include/c++/7/bits/locale_facets.h **** #include <bits/streambuf_iterator.h>
  49:/usr/include/c++/7/bits/locale_facets.h **** 
  50:/usr/include/c++/7/bits/locale_facets.h **** namespace std _GLIBCXX_VISIBILITY(default)
  51:/usr/include/c++/7/bits/locale_facets.h **** {
  52:/usr/include/c++/7/bits/locale_facets.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  53:/usr/include/c++/7/bits/locale_facets.h **** 
  54:/usr/include/c++/7/bits/locale_facets.h ****   // NB: Don't instantiate required wchar_t facets if no wchar_t support.
  55:/usr/include/c++/7/bits/locale_facets.h **** #ifdef _GLIBCXX_USE_WCHAR_T
  56:/usr/include/c++/7/bits/locale_facets.h **** # define  _GLIBCXX_NUM_FACETS 28
  57:/usr/include/c++/7/bits/locale_facets.h **** # define  _GLIBCXX_NUM_CXX11_FACETS 16
  58:/usr/include/c++/7/bits/locale_facets.h **** #else
  59:/usr/include/c++/7/bits/locale_facets.h **** # define  _GLIBCXX_NUM_FACETS 14
  60:/usr/include/c++/7/bits/locale_facets.h **** # define  _GLIBCXX_NUM_CXX11_FACETS 8
  61:/usr/include/c++/7/bits/locale_facets.h **** #endif
  62:/usr/include/c++/7/bits/locale_facets.h **** #ifdef _GLIBCXX_USE_C99_STDINT_TR1
  63:/usr/include/c++/7/bits/locale_facets.h **** # define _GLIBCXX_NUM_UNICODE_FACETS 2
  64:/usr/include/c++/7/bits/locale_facets.h **** #else
  65:/usr/include/c++/7/bits/locale_facets.h **** # define _GLIBCXX_NUM_UNICODE_FACETS 0
  66:/usr/include/c++/7/bits/locale_facets.h **** #endif
  67:/usr/include/c++/7/bits/locale_facets.h **** 
  68:/usr/include/c++/7/bits/locale_facets.h ****   // Convert string to numeric value of type _Tp and store results.
  69:/usr/include/c++/7/bits/locale_facets.h ****   // NB: This is specialized for all required types, there is no
  70:/usr/include/c++/7/bits/locale_facets.h ****   // generic definition.
  71:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _Tp>
  72:/usr/include/c++/7/bits/locale_facets.h ****     void
  73:/usr/include/c++/7/bits/locale_facets.h ****     __convert_to_v(const char*, _Tp&, ios_base::iostate&,
  74:/usr/include/c++/7/bits/locale_facets.h **** 		   const __c_locale&) throw();
  75:/usr/include/c++/7/bits/locale_facets.h **** 
  76:/usr/include/c++/7/bits/locale_facets.h ****   // Explicit specializations for required types.
  77:/usr/include/c++/7/bits/locale_facets.h ****   template<>
  78:/usr/include/c++/7/bits/locale_facets.h ****     void
  79:/usr/include/c++/7/bits/locale_facets.h ****     __convert_to_v(const char*, float&, ios_base::iostate&,
  80:/usr/include/c++/7/bits/locale_facets.h **** 		   const __c_locale&) throw();
  81:/usr/include/c++/7/bits/locale_facets.h **** 
  82:/usr/include/c++/7/bits/locale_facets.h ****   template<>
  83:/usr/include/c++/7/bits/locale_facets.h ****     void
  84:/usr/include/c++/7/bits/locale_facets.h ****     __convert_to_v(const char*, double&, ios_base::iostate&,
  85:/usr/include/c++/7/bits/locale_facets.h **** 		   const __c_locale&) throw();
  86:/usr/include/c++/7/bits/locale_facets.h **** 
  87:/usr/include/c++/7/bits/locale_facets.h ****   template<>
  88:/usr/include/c++/7/bits/locale_facets.h ****     void
  89:/usr/include/c++/7/bits/locale_facets.h ****     __convert_to_v(const char*, long double&, ios_base::iostate&,
  90:/usr/include/c++/7/bits/locale_facets.h **** 		   const __c_locale&) throw();
  91:/usr/include/c++/7/bits/locale_facets.h **** 
  92:/usr/include/c++/7/bits/locale_facets.h ****   // NB: __pad is a struct, rather than a function, so it can be
  93:/usr/include/c++/7/bits/locale_facets.h ****   // partially-specialized.
  94:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT, typename _Traits>
  95:/usr/include/c++/7/bits/locale_facets.h ****     struct __pad
  96:/usr/include/c++/7/bits/locale_facets.h ****     {
  97:/usr/include/c++/7/bits/locale_facets.h ****       static void
  98:/usr/include/c++/7/bits/locale_facets.h ****       _S_pad(ios_base& __io, _CharT __fill, _CharT* __news,
  99:/usr/include/c++/7/bits/locale_facets.h **** 	     const _CharT* __olds, streamsize __newlen, streamsize __oldlen);
 100:/usr/include/c++/7/bits/locale_facets.h ****     };
 101:/usr/include/c++/7/bits/locale_facets.h **** 
 102:/usr/include/c++/7/bits/locale_facets.h ****   // Used by both numeric and monetary facets.
 103:/usr/include/c++/7/bits/locale_facets.h ****   // Inserts "group separator" characters into an array of characters.
 104:/usr/include/c++/7/bits/locale_facets.h ****   // It's recursive, one iteration per group.  It moves the characters
 105:/usr/include/c++/7/bits/locale_facets.h ****   // in the buffer this way: "xxxx12345" -> "12,345xxx".  Call this
 106:/usr/include/c++/7/bits/locale_facets.h ****   // only with __gsize != 0.
 107:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT>
 108:/usr/include/c++/7/bits/locale_facets.h ****     _CharT*
 109:/usr/include/c++/7/bits/locale_facets.h ****     __add_grouping(_CharT* __s, _CharT __sep,
 110:/usr/include/c++/7/bits/locale_facets.h **** 		   const char* __gbeg, size_t __gsize,
 111:/usr/include/c++/7/bits/locale_facets.h **** 		   const _CharT* __first, const _CharT* __last);
 112:/usr/include/c++/7/bits/locale_facets.h **** 
 113:/usr/include/c++/7/bits/locale_facets.h ****   // This template permits specializing facet output code for
 114:/usr/include/c++/7/bits/locale_facets.h ****   // ostreambuf_iterator.  For ostreambuf_iterator, sputn is
 115:/usr/include/c++/7/bits/locale_facets.h ****   // significantly more efficient than incrementing iterators.
 116:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT>
 117:/usr/include/c++/7/bits/locale_facets.h ****     inline
 118:/usr/include/c++/7/bits/locale_facets.h ****     ostreambuf_iterator<_CharT>
 119:/usr/include/c++/7/bits/locale_facets.h ****     __write(ostreambuf_iterator<_CharT> __s, const _CharT* __ws, int __len)
 120:/usr/include/c++/7/bits/locale_facets.h ****     {
 121:/usr/include/c++/7/bits/locale_facets.h ****       __s._M_put(__ws, __len);
 122:/usr/include/c++/7/bits/locale_facets.h ****       return __s;
 123:/usr/include/c++/7/bits/locale_facets.h ****     }
 124:/usr/include/c++/7/bits/locale_facets.h **** 
 125:/usr/include/c++/7/bits/locale_facets.h ****   // This is the unspecialized form of the template.
 126:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT, typename _OutIter>
 127:/usr/include/c++/7/bits/locale_facets.h ****     inline
 128:/usr/include/c++/7/bits/locale_facets.h ****     _OutIter
 129:/usr/include/c++/7/bits/locale_facets.h ****     __write(_OutIter __s, const _CharT* __ws, int __len)
 130:/usr/include/c++/7/bits/locale_facets.h ****     {
 131:/usr/include/c++/7/bits/locale_facets.h ****       for (int __j = 0; __j < __len; __j++, ++__s)
 132:/usr/include/c++/7/bits/locale_facets.h **** 	*__s = __ws[__j];
 133:/usr/include/c++/7/bits/locale_facets.h ****       return __s;
 134:/usr/include/c++/7/bits/locale_facets.h ****     }
 135:/usr/include/c++/7/bits/locale_facets.h **** 
 136:/usr/include/c++/7/bits/locale_facets.h **** 
 137:/usr/include/c++/7/bits/locale_facets.h ****   // 22.2.1.1  Template class ctype
 138:/usr/include/c++/7/bits/locale_facets.h ****   // Include host and configuration specific ctype enums for ctype_base.
 139:/usr/include/c++/7/bits/locale_facets.h **** 
 140:/usr/include/c++/7/bits/locale_facets.h ****   /**
 141:/usr/include/c++/7/bits/locale_facets.h ****    *  @brief  Common base for ctype facet
 142:/usr/include/c++/7/bits/locale_facets.h ****    *
 143:/usr/include/c++/7/bits/locale_facets.h ****    *  This template class provides implementations of the public functions
 144:/usr/include/c++/7/bits/locale_facets.h ****    *  that forward to the protected virtual functions.
 145:/usr/include/c++/7/bits/locale_facets.h ****    *
 146:/usr/include/c++/7/bits/locale_facets.h ****    *  This template also provides abstract stubs for the protected virtual
 147:/usr/include/c++/7/bits/locale_facets.h ****    *  functions.
 148:/usr/include/c++/7/bits/locale_facets.h ****   */
 149:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT>
 150:/usr/include/c++/7/bits/locale_facets.h ****     class __ctype_abstract_base : public locale::facet, public ctype_base
 151:/usr/include/c++/7/bits/locale_facets.h ****     {
 152:/usr/include/c++/7/bits/locale_facets.h ****     public:
 153:/usr/include/c++/7/bits/locale_facets.h ****       // Types:
 154:/usr/include/c++/7/bits/locale_facets.h ****       /// Typedef for the template parameter
 155:/usr/include/c++/7/bits/locale_facets.h ****       typedef _CharT char_type;
 156:/usr/include/c++/7/bits/locale_facets.h **** 
 157:/usr/include/c++/7/bits/locale_facets.h ****       /**
 158:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Test char_type classification.
 159:/usr/include/c++/7/bits/locale_facets.h ****        *
 160:/usr/include/c++/7/bits/locale_facets.h ****        *  This function finds a mask M for @a __c and compares it to
 161:/usr/include/c++/7/bits/locale_facets.h ****        *  mask @a __m.  It does so by returning the value of
 162:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_is().
 163:/usr/include/c++/7/bits/locale_facets.h ****        *
 164:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to compare the mask of.
 165:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 166:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  (M & __m) != 0.
 167:/usr/include/c++/7/bits/locale_facets.h ****       */
 168:/usr/include/c++/7/bits/locale_facets.h ****       bool
 169:/usr/include/c++/7/bits/locale_facets.h ****       is(mask __m, char_type __c) const
 170:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_is(__m, __c); }
 171:/usr/include/c++/7/bits/locale_facets.h **** 
 172:/usr/include/c++/7/bits/locale_facets.h ****       /**
 173:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Return a mask array.
 174:/usr/include/c++/7/bits/locale_facets.h ****        *
 175:/usr/include/c++/7/bits/locale_facets.h ****        *  This function finds the mask for each char_type in the range [lo,hi)
 176:/usr/include/c++/7/bits/locale_facets.h ****        *  and successively writes it to vec.  vec must have as many elements
 177:/usr/include/c++/7/bits/locale_facets.h ****        *  as the char array.  It does so by returning the value of
 178:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_is().
 179:/usr/include/c++/7/bits/locale_facets.h ****        *
 180:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 181:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 182:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 183:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 184:/usr/include/c++/7/bits/locale_facets.h ****       */
 185:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 186:/usr/include/c++/7/bits/locale_facets.h ****       is(const char_type *__lo, const char_type *__hi, mask *__vec) const
 187:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_is(__lo, __hi, __vec); }
 188:/usr/include/c++/7/bits/locale_facets.h **** 
 189:/usr/include/c++/7/bits/locale_facets.h ****       /**
 190:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char_type matching a mask
 191:/usr/include/c++/7/bits/locale_facets.h ****        *
 192:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 193:/usr/include/c++/7/bits/locale_facets.h ****        *  [lo,hi) for which is(m,c) is true.  It does so by returning
 194:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_scan_is().
 195:/usr/include/c++/7/bits/locale_facets.h ****        *
 196:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 197:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 198:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 199:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to matching char_type if found, else @a __hi.
 200:/usr/include/c++/7/bits/locale_facets.h ****       */
 201:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 202:/usr/include/c++/7/bits/locale_facets.h ****       scan_is(mask __m, const char_type* __lo, const char_type* __hi) const
 203:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_scan_is(__m, __lo, __hi); }
 204:/usr/include/c++/7/bits/locale_facets.h **** 
 205:/usr/include/c++/7/bits/locale_facets.h ****       /**
 206:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char_type not matching a mask
 207:/usr/include/c++/7/bits/locale_facets.h ****        *
 208:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 209:/usr/include/c++/7/bits/locale_facets.h ****        *  [lo,hi) for which is(m,c) is false.  It does so by returning
 210:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_scan_not().
 211:/usr/include/c++/7/bits/locale_facets.h ****        *
 212:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 213:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 214:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 215:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to non-matching char if found, else @a __hi.
 216:/usr/include/c++/7/bits/locale_facets.h ****       */
 217:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 218:/usr/include/c++/7/bits/locale_facets.h ****       scan_not(mask __m, const char_type* __lo, const char_type* __hi) const
 219:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_scan_not(__m, __lo, __hi); }
 220:/usr/include/c++/7/bits/locale_facets.h **** 
 221:/usr/include/c++/7/bits/locale_facets.h ****       /**
 222:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 223:/usr/include/c++/7/bits/locale_facets.h ****        *
 224:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the argument to uppercase if possible.
 225:/usr/include/c++/7/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.  It does
 226:/usr/include/c++/7/bits/locale_facets.h ****        *  so by returning ctype<char_type>::do_toupper().
 227:/usr/include/c++/7/bits/locale_facets.h ****        *
 228:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 229:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The uppercase char_type if convertible, else @a __c.
 230:/usr/include/c++/7/bits/locale_facets.h ****       */
 231:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 232:/usr/include/c++/7/bits/locale_facets.h ****       toupper(char_type __c) const
 233:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_toupper(__c); }
 234:/usr/include/c++/7/bits/locale_facets.h **** 
 235:/usr/include/c++/7/bits/locale_facets.h ****       /**
 236:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 237:/usr/include/c++/7/bits/locale_facets.h ****        *
 238:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char_type in the range [lo,hi) to
 239:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercase if possible.  Other elements remain untouched.  It does so
 240:/usr/include/c++/7/bits/locale_facets.h ****        *  by returning ctype<char_type>:: do_toupper(lo, hi).
 241:/usr/include/c++/7/bits/locale_facets.h ****        *
 242:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 243:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 244:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 245:/usr/include/c++/7/bits/locale_facets.h ****       */
 246:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 247:/usr/include/c++/7/bits/locale_facets.h ****       toupper(char_type *__lo, const char_type* __hi) const
 248:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_toupper(__lo, __hi); }
 249:/usr/include/c++/7/bits/locale_facets.h **** 
 250:/usr/include/c++/7/bits/locale_facets.h ****       /**
 251:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 252:/usr/include/c++/7/bits/locale_facets.h ****        *
 253:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the argument to lowercase if possible.  If
 254:/usr/include/c++/7/bits/locale_facets.h ****        *  not possible (for example, '2'), returns the argument.  It does so
 255:/usr/include/c++/7/bits/locale_facets.h ****        *  by returning ctype<char_type>::do_tolower(c).
 256:/usr/include/c++/7/bits/locale_facets.h ****        *
 257:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 258:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The lowercase char_type if convertible, else @a __c.
 259:/usr/include/c++/7/bits/locale_facets.h ****       */
 260:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 261:/usr/include/c++/7/bits/locale_facets.h ****       tolower(char_type __c) const
 262:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_tolower(__c); }
 263:/usr/include/c++/7/bits/locale_facets.h **** 
 264:/usr/include/c++/7/bits/locale_facets.h ****       /**
 265:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 266:/usr/include/c++/7/bits/locale_facets.h ****        *
 267:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char_type in the range [__lo,__hi) to
 268:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercase if possible.  Other elements remain untouched.  It does so
 269:/usr/include/c++/7/bits/locale_facets.h ****        *  by returning ctype<char_type>:: do_tolower(__lo, __hi).
 270:/usr/include/c++/7/bits/locale_facets.h ****        *
 271:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 272:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 273:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 274:/usr/include/c++/7/bits/locale_facets.h ****       */
 275:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 276:/usr/include/c++/7/bits/locale_facets.h ****       tolower(char_type* __lo, const char_type* __hi) const
 277:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_tolower(__lo, __hi); }
 278:/usr/include/c++/7/bits/locale_facets.h **** 
 279:/usr/include/c++/7/bits/locale_facets.h ****       /**
 280:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char to char_type
 281:/usr/include/c++/7/bits/locale_facets.h ****        *
 282:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char argument to char_type using the
 283:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.  It does so by returning
 284:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_widen(c).
 285:/usr/include/c++/7/bits/locale_facets.h ****        *
 286:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 287:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 288:/usr/include/c++/7/bits/locale_facets.h ****        *
 289:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 290:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted char_type.
 291:/usr/include/c++/7/bits/locale_facets.h ****       */
 292:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 293:/usr/include/c++/7/bits/locale_facets.h ****       widen(char __c) const
 294:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_widen(__c); }
 295:/usr/include/c++/7/bits/locale_facets.h **** 
 296:/usr/include/c++/7/bits/locale_facets.h ****       /**
 297:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen array to char_type
 298:/usr/include/c++/7/bits/locale_facets.h ****        *
 299:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the input to char_type using the
 300:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.  It does so by returning
 301:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_widen(c).
 302:/usr/include/c++/7/bits/locale_facets.h ****        *
 303:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 304:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 305:/usr/include/c++/7/bits/locale_facets.h ****        *
 306:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 307:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 308:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 309:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 310:/usr/include/c++/7/bits/locale_facets.h ****       */
 311:/usr/include/c++/7/bits/locale_facets.h ****       const char*
 312:/usr/include/c++/7/bits/locale_facets.h ****       widen(const char* __lo, const char* __hi, char_type* __to) const
 313:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_widen(__lo, __hi, __to); }
 314:/usr/include/c++/7/bits/locale_facets.h **** 
 315:/usr/include/c++/7/bits/locale_facets.h ****       /**
 316:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow char_type to char
 317:/usr/include/c++/7/bits/locale_facets.h ****        *
 318:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char_type to char using the simplest
 319:/usr/include/c++/7/bits/locale_facets.h ****        *  reasonable transformation.  If the conversion fails, dfault is
 320:/usr/include/c++/7/bits/locale_facets.h ****        *  returned instead.  It does so by returning
 321:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_narrow(__c).
 322:/usr/include/c++/7/bits/locale_facets.h ****        *
 323:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 324:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 325:/usr/include/c++/7/bits/locale_facets.h ****        *
 326:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 327:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to return if conversion fails.
 328:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted char.
 329:/usr/include/c++/7/bits/locale_facets.h ****       */
 330:/usr/include/c++/7/bits/locale_facets.h ****       char
 331:/usr/include/c++/7/bits/locale_facets.h ****       narrow(char_type __c, char __dfault) const
 332:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_narrow(__c, __dfault); }
 333:/usr/include/c++/7/bits/locale_facets.h **** 
 334:/usr/include/c++/7/bits/locale_facets.h ****       /**
 335:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow array to char array
 336:/usr/include/c++/7/bits/locale_facets.h ****        *
 337:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char_type in the input to char using the
 338:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation and writes the results to the
 339:/usr/include/c++/7/bits/locale_facets.h ****        *  destination array.  For any char_type in the input that cannot be
 340:/usr/include/c++/7/bits/locale_facets.h ****        *  converted, @a dfault is used instead.  It does so by returning
 341:/usr/include/c++/7/bits/locale_facets.h ****        *  ctype<char_type>::do_narrow(__lo, __hi, __dfault, __to).
 342:/usr/include/c++/7/bits/locale_facets.h ****        *
 343:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 344:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 345:/usr/include/c++/7/bits/locale_facets.h ****        *
 346:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 347:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 348:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to use if conversion fails.
 349:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 350:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 351:/usr/include/c++/7/bits/locale_facets.h ****       */
 352:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 353:/usr/include/c++/7/bits/locale_facets.h ****       narrow(const char_type* __lo, const char_type* __hi,
 354:/usr/include/c++/7/bits/locale_facets.h **** 	      char __dfault, char* __to) const
 355:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_narrow(__lo, __hi, __dfault, __to); }
 356:/usr/include/c++/7/bits/locale_facets.h **** 
 357:/usr/include/c++/7/bits/locale_facets.h ****     protected:
 358:/usr/include/c++/7/bits/locale_facets.h ****       explicit
 359:/usr/include/c++/7/bits/locale_facets.h ****       __ctype_abstract_base(size_t __refs = 0): facet(__refs) { }
 360:/usr/include/c++/7/bits/locale_facets.h **** 
 361:/usr/include/c++/7/bits/locale_facets.h ****       virtual
 362:/usr/include/c++/7/bits/locale_facets.h ****       ~__ctype_abstract_base() { }
 363:/usr/include/c++/7/bits/locale_facets.h **** 
 364:/usr/include/c++/7/bits/locale_facets.h ****       /**
 365:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Test char_type classification.
 366:/usr/include/c++/7/bits/locale_facets.h ****        *
 367:/usr/include/c++/7/bits/locale_facets.h ****        *  This function finds a mask M for @a c and compares it to mask @a m.
 368:/usr/include/c++/7/bits/locale_facets.h ****        *
 369:/usr/include/c++/7/bits/locale_facets.h ****        *  do_is() is a hook for a derived facet to change the behavior of
 370:/usr/include/c++/7/bits/locale_facets.h ****        *  classifying.  do_is() must always return the same result for the
 371:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 372:/usr/include/c++/7/bits/locale_facets.h ****        *
 373:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to find the mask of.
 374:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 375:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  (M & __m) != 0.
 376:/usr/include/c++/7/bits/locale_facets.h ****       */
 377:/usr/include/c++/7/bits/locale_facets.h ****       virtual bool
 378:/usr/include/c++/7/bits/locale_facets.h ****       do_is(mask __m, char_type __c) const = 0;
 379:/usr/include/c++/7/bits/locale_facets.h **** 
 380:/usr/include/c++/7/bits/locale_facets.h ****       /**
 381:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Return a mask array.
 382:/usr/include/c++/7/bits/locale_facets.h ****        *
 383:/usr/include/c++/7/bits/locale_facets.h ****        *  This function finds the mask for each char_type in the range [lo,hi)
 384:/usr/include/c++/7/bits/locale_facets.h ****        *  and successively writes it to vec.  vec must have as many elements
 385:/usr/include/c++/7/bits/locale_facets.h ****        *  as the input.
 386:/usr/include/c++/7/bits/locale_facets.h ****        *
 387:/usr/include/c++/7/bits/locale_facets.h ****        *  do_is() is a hook for a derived facet to change the behavior of
 388:/usr/include/c++/7/bits/locale_facets.h ****        *  classifying.  do_is() must always return the same result for the
 389:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 390:/usr/include/c++/7/bits/locale_facets.h ****        *
 391:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 392:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 393:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 394:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 395:/usr/include/c++/7/bits/locale_facets.h ****       */
 396:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 397:/usr/include/c++/7/bits/locale_facets.h ****       do_is(const char_type* __lo, const char_type* __hi,
 398:/usr/include/c++/7/bits/locale_facets.h **** 	    mask* __vec) const = 0;
 399:/usr/include/c++/7/bits/locale_facets.h **** 
 400:/usr/include/c++/7/bits/locale_facets.h ****       /**
 401:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char_type matching mask
 402:/usr/include/c++/7/bits/locale_facets.h ****        *
 403:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns the first char_type c in
 404:/usr/include/c++/7/bits/locale_facets.h ****        *  [__lo,__hi) for which is(__m,c) is true.
 405:/usr/include/c++/7/bits/locale_facets.h ****        *
 406:/usr/include/c++/7/bits/locale_facets.h ****        *  do_scan_is() is a hook for a derived facet to change the behavior of
 407:/usr/include/c++/7/bits/locale_facets.h ****        *  match searching.  do_is() must always return the same result for the
 408:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 409:/usr/include/c++/7/bits/locale_facets.h ****        *
 410:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 411:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 412:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 413:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to a matching char_type if found, else @a __hi.
 414:/usr/include/c++/7/bits/locale_facets.h ****       */
 415:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 416:/usr/include/c++/7/bits/locale_facets.h ****       do_scan_is(mask __m, const char_type* __lo,
 417:/usr/include/c++/7/bits/locale_facets.h **** 		 const char_type* __hi) const = 0;
 418:/usr/include/c++/7/bits/locale_facets.h **** 
 419:/usr/include/c++/7/bits/locale_facets.h ****       /**
 420:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char_type not matching mask
 421:/usr/include/c++/7/bits/locale_facets.h ****        *
 422:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns a pointer to the first
 423:/usr/include/c++/7/bits/locale_facets.h ****        *  char_type c of [lo,hi) for which is(m,c) is false.
 424:/usr/include/c++/7/bits/locale_facets.h ****        *
 425:/usr/include/c++/7/bits/locale_facets.h ****        *  do_scan_is() is a hook for a derived facet to change the behavior of
 426:/usr/include/c++/7/bits/locale_facets.h ****        *  match searching.  do_is() must always return the same result for the
 427:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 428:/usr/include/c++/7/bits/locale_facets.h ****        *
 429:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 430:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 431:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 432:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to a non-matching char_type if found, else @a __hi.
 433:/usr/include/c++/7/bits/locale_facets.h ****       */
 434:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 435:/usr/include/c++/7/bits/locale_facets.h ****       do_scan_not(mask __m, const char_type* __lo,
 436:/usr/include/c++/7/bits/locale_facets.h **** 		  const char_type* __hi) const = 0;
 437:/usr/include/c++/7/bits/locale_facets.h **** 
 438:/usr/include/c++/7/bits/locale_facets.h ****       /**
 439:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 440:/usr/include/c++/7/bits/locale_facets.h ****        *
 441:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the char_type argument to uppercase
 442:/usr/include/c++/7/bits/locale_facets.h ****        *  if possible.  If not possible (for example, '2'), returns the
 443:/usr/include/c++/7/bits/locale_facets.h ****        *  argument.
 444:/usr/include/c++/7/bits/locale_facets.h ****        *
 445:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
 446:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
 447:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
 448:/usr/include/c++/7/bits/locale_facets.h ****        *
 449:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 450:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The uppercase char_type if convertible, else @a __c.
 451:/usr/include/c++/7/bits/locale_facets.h ****       */
 452:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 453:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type __c) const = 0;
 454:/usr/include/c++/7/bits/locale_facets.h **** 
 455:/usr/include/c++/7/bits/locale_facets.h ****       /**
 456:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 457:/usr/include/c++/7/bits/locale_facets.h ****        *
 458:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range [__lo,__hi)
 459:/usr/include/c++/7/bits/locale_facets.h ****        *  to uppercase if possible.  Other elements remain untouched.
 460:/usr/include/c++/7/bits/locale_facets.h ****        *
 461:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
 462:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
 463:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
 464:/usr/include/c++/7/bits/locale_facets.h ****        *
 465:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 466:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 467:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 468:/usr/include/c++/7/bits/locale_facets.h ****       */
 469:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 470:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type* __lo, const char_type* __hi) const = 0;
 471:/usr/include/c++/7/bits/locale_facets.h **** 
 472:/usr/include/c++/7/bits/locale_facets.h ****       /**
 473:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 474:/usr/include/c++/7/bits/locale_facets.h ****        *
 475:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the argument to lowercase if
 476:/usr/include/c++/7/bits/locale_facets.h ****        *  possible.  If not possible (for example, '2'), returns the argument.
 477:/usr/include/c++/7/bits/locale_facets.h ****        *
 478:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
 479:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
 480:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
 481:/usr/include/c++/7/bits/locale_facets.h ****        *
 482:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 483:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The lowercase char_type if convertible, else @a __c.
 484:/usr/include/c++/7/bits/locale_facets.h ****       */
 485:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 486:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type __c) const = 0;
 487:/usr/include/c++/7/bits/locale_facets.h **** 
 488:/usr/include/c++/7/bits/locale_facets.h ****       /**
 489:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 490:/usr/include/c++/7/bits/locale_facets.h ****        *
 491:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range [__lo,__hi)
 492:/usr/include/c++/7/bits/locale_facets.h ****        *  to lowercase if possible.  Other elements remain untouched.
 493:/usr/include/c++/7/bits/locale_facets.h ****        *
 494:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
 495:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
 496:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
 497:/usr/include/c++/7/bits/locale_facets.h ****        *
 498:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 499:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 500:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 501:/usr/include/c++/7/bits/locale_facets.h ****       */
 502:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 503:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type* __lo, const char_type* __hi) const = 0;
 504:/usr/include/c++/7/bits/locale_facets.h **** 
 505:/usr/include/c++/7/bits/locale_facets.h ****       /**
 506:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char
 507:/usr/include/c++/7/bits/locale_facets.h ****        *
 508:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the char to char_type using the
 509:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.
 510:/usr/include/c++/7/bits/locale_facets.h ****        *
 511:/usr/include/c++/7/bits/locale_facets.h ****        *  do_widen() is a hook for a derived facet to change the behavior of
 512:/usr/include/c++/7/bits/locale_facets.h ****        *  widening.  do_widen() must always return the same result for the
 513:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 514:/usr/include/c++/7/bits/locale_facets.h ****        *
 515:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 516:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 517:/usr/include/c++/7/bits/locale_facets.h ****        *
 518:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 519:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted char_type
 520:/usr/include/c++/7/bits/locale_facets.h ****       */
 521:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 522:/usr/include/c++/7/bits/locale_facets.h ****       do_widen(char __c) const = 0;
 523:/usr/include/c++/7/bits/locale_facets.h **** 
 524:/usr/include/c++/7/bits/locale_facets.h ****       /**
 525:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char array
 526:/usr/include/c++/7/bits/locale_facets.h ****        *
 527:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the input to char_type using the
 528:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.
 529:/usr/include/c++/7/bits/locale_facets.h ****        *
 530:/usr/include/c++/7/bits/locale_facets.h ****        *  do_widen() is a hook for a derived facet to change the behavior of
 531:/usr/include/c++/7/bits/locale_facets.h ****        *  widening.  do_widen() must always return the same result for the
 532:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 533:/usr/include/c++/7/bits/locale_facets.h ****        *
 534:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 535:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 536:/usr/include/c++/7/bits/locale_facets.h ****        *
 537:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start range.
 538:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 539:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 540:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 541:/usr/include/c++/7/bits/locale_facets.h ****       */
 542:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char*
 543:/usr/include/c++/7/bits/locale_facets.h ****       do_widen(const char* __lo, const char* __hi, char_type* __to) const = 0;
 544:/usr/include/c++/7/bits/locale_facets.h **** 
 545:/usr/include/c++/7/bits/locale_facets.h ****       /**
 546:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow char_type to char
 547:/usr/include/c++/7/bits/locale_facets.h ****        *
 548:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the argument to char using the
 549:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.  If the conversion fails, dfault
 550:/usr/include/c++/7/bits/locale_facets.h ****        *  is returned instead.
 551:/usr/include/c++/7/bits/locale_facets.h ****        *
 552:/usr/include/c++/7/bits/locale_facets.h ****        *  do_narrow() is a hook for a derived facet to change the behavior of
 553:/usr/include/c++/7/bits/locale_facets.h ****        *  narrowing.  do_narrow() must always return the same result for the
 554:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 555:/usr/include/c++/7/bits/locale_facets.h ****        *
 556:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 557:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 558:/usr/include/c++/7/bits/locale_facets.h ****        *
 559:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char_type to convert.
 560:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to return if conversion fails.
 561:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted char.
 562:/usr/include/c++/7/bits/locale_facets.h ****       */
 563:/usr/include/c++/7/bits/locale_facets.h ****       virtual char
 564:/usr/include/c++/7/bits/locale_facets.h ****       do_narrow(char_type __c, char __dfault) const = 0;
 565:/usr/include/c++/7/bits/locale_facets.h **** 
 566:/usr/include/c++/7/bits/locale_facets.h ****       /**
 567:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow char_type array to char
 568:/usr/include/c++/7/bits/locale_facets.h ****        *
 569:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts each char_type in the range
 570:/usr/include/c++/7/bits/locale_facets.h ****        *  [__lo,__hi) to char using the simplest reasonable
 571:/usr/include/c++/7/bits/locale_facets.h ****        *  transformation and writes the results to the destination
 572:/usr/include/c++/7/bits/locale_facets.h ****        *  array.  For any element in the input that cannot be
 573:/usr/include/c++/7/bits/locale_facets.h ****        *  converted, @a __dfault is used instead.
 574:/usr/include/c++/7/bits/locale_facets.h ****        *
 575:/usr/include/c++/7/bits/locale_facets.h ****        *  do_narrow() is a hook for a derived facet to change the behavior of
 576:/usr/include/c++/7/bits/locale_facets.h ****        *  narrowing.  do_narrow() must always return the same result for the
 577:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 578:/usr/include/c++/7/bits/locale_facets.h ****        *
 579:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 580:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 581:/usr/include/c++/7/bits/locale_facets.h ****        *
 582:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 583:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 584:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to use if conversion fails.
 585:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 586:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 587:/usr/include/c++/7/bits/locale_facets.h ****       */
 588:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 589:/usr/include/c++/7/bits/locale_facets.h ****       do_narrow(const char_type* __lo, const char_type* __hi,
 590:/usr/include/c++/7/bits/locale_facets.h **** 		char __dfault, char* __to) const = 0;
 591:/usr/include/c++/7/bits/locale_facets.h ****     };
 592:/usr/include/c++/7/bits/locale_facets.h **** 
 593:/usr/include/c++/7/bits/locale_facets.h ****   /**
 594:/usr/include/c++/7/bits/locale_facets.h ****    *  @brief  Primary class template ctype facet.
 595:/usr/include/c++/7/bits/locale_facets.h ****    *  @ingroup locales
 596:/usr/include/c++/7/bits/locale_facets.h ****    *
 597:/usr/include/c++/7/bits/locale_facets.h ****    *  This template class defines classification and conversion functions for
 598:/usr/include/c++/7/bits/locale_facets.h ****    *  character sets.  It wraps cctype functionality.  Ctype gets used by
 599:/usr/include/c++/7/bits/locale_facets.h ****    *  streams for many I/O operations.
 600:/usr/include/c++/7/bits/locale_facets.h ****    *
 601:/usr/include/c++/7/bits/locale_facets.h ****    *  This template provides the protected virtual functions the developer
 602:/usr/include/c++/7/bits/locale_facets.h ****    *  will have to replace in a derived class or specialization to make a
 603:/usr/include/c++/7/bits/locale_facets.h ****    *  working facet.  The public functions that access them are defined in
 604:/usr/include/c++/7/bits/locale_facets.h ****    *  __ctype_abstract_base, to allow for implementation flexibility.  See
 605:/usr/include/c++/7/bits/locale_facets.h ****    *  ctype<wchar_t> for an example.  The functions are documented in
 606:/usr/include/c++/7/bits/locale_facets.h ****    *  __ctype_abstract_base.
 607:/usr/include/c++/7/bits/locale_facets.h ****    *
 608:/usr/include/c++/7/bits/locale_facets.h ****    *  Note: implementations are provided for all the protected virtual
 609:/usr/include/c++/7/bits/locale_facets.h ****    *  functions, but will likely not be useful.
 610:/usr/include/c++/7/bits/locale_facets.h ****   */
 611:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT>
 612:/usr/include/c++/7/bits/locale_facets.h ****     class ctype : public __ctype_abstract_base<_CharT>
 613:/usr/include/c++/7/bits/locale_facets.h ****     {
 614:/usr/include/c++/7/bits/locale_facets.h ****     public:
 615:/usr/include/c++/7/bits/locale_facets.h ****       // Types:
 616:/usr/include/c++/7/bits/locale_facets.h ****       typedef _CharT			char_type;
 617:/usr/include/c++/7/bits/locale_facets.h ****       typedef typename __ctype_abstract_base<_CharT>::mask mask;
 618:/usr/include/c++/7/bits/locale_facets.h **** 
 619:/usr/include/c++/7/bits/locale_facets.h ****       /// The facet id for ctype<char_type>
 620:/usr/include/c++/7/bits/locale_facets.h ****       static locale::id			id;
 621:/usr/include/c++/7/bits/locale_facets.h **** 
 622:/usr/include/c++/7/bits/locale_facets.h ****       explicit
 623:/usr/include/c++/7/bits/locale_facets.h ****       ctype(size_t __refs = 0) : __ctype_abstract_base<_CharT>(__refs) { }
 624:/usr/include/c++/7/bits/locale_facets.h **** 
 625:/usr/include/c++/7/bits/locale_facets.h ****    protected:
 626:/usr/include/c++/7/bits/locale_facets.h ****       virtual
 627:/usr/include/c++/7/bits/locale_facets.h ****       ~ctype();
 628:/usr/include/c++/7/bits/locale_facets.h **** 
 629:/usr/include/c++/7/bits/locale_facets.h ****       virtual bool
 630:/usr/include/c++/7/bits/locale_facets.h ****       do_is(mask __m, char_type __c) const;
 631:/usr/include/c++/7/bits/locale_facets.h **** 
 632:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 633:/usr/include/c++/7/bits/locale_facets.h ****       do_is(const char_type* __lo, const char_type* __hi, mask* __vec) const;
 634:/usr/include/c++/7/bits/locale_facets.h **** 
 635:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 636:/usr/include/c++/7/bits/locale_facets.h ****       do_scan_is(mask __m, const char_type* __lo, const char_type* __hi) const;
 637:/usr/include/c++/7/bits/locale_facets.h **** 
 638:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 639:/usr/include/c++/7/bits/locale_facets.h ****       do_scan_not(mask __m, const char_type* __lo,
 640:/usr/include/c++/7/bits/locale_facets.h **** 		  const char_type* __hi) const;
 641:/usr/include/c++/7/bits/locale_facets.h **** 
 642:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 643:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type __c) const;
 644:/usr/include/c++/7/bits/locale_facets.h **** 
 645:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 646:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type* __lo, const char_type* __hi) const;
 647:/usr/include/c++/7/bits/locale_facets.h **** 
 648:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 649:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type __c) const;
 650:/usr/include/c++/7/bits/locale_facets.h **** 
 651:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 652:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type* __lo, const char_type* __hi) const;
 653:/usr/include/c++/7/bits/locale_facets.h **** 
 654:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
 655:/usr/include/c++/7/bits/locale_facets.h ****       do_widen(char __c) const;
 656:/usr/include/c++/7/bits/locale_facets.h **** 
 657:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char*
 658:/usr/include/c++/7/bits/locale_facets.h ****       do_widen(const char* __lo, const char* __hi, char_type* __dest) const;
 659:/usr/include/c++/7/bits/locale_facets.h **** 
 660:/usr/include/c++/7/bits/locale_facets.h ****       virtual char
 661:/usr/include/c++/7/bits/locale_facets.h ****       do_narrow(char_type, char __dfault) const;
 662:/usr/include/c++/7/bits/locale_facets.h **** 
 663:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
 664:/usr/include/c++/7/bits/locale_facets.h ****       do_narrow(const char_type* __lo, const char_type* __hi,
 665:/usr/include/c++/7/bits/locale_facets.h **** 		char __dfault, char* __to) const;
 666:/usr/include/c++/7/bits/locale_facets.h ****     };
 667:/usr/include/c++/7/bits/locale_facets.h **** 
 668:/usr/include/c++/7/bits/locale_facets.h ****   template<typename _CharT>
 669:/usr/include/c++/7/bits/locale_facets.h ****     locale::id ctype<_CharT>::id;
 670:/usr/include/c++/7/bits/locale_facets.h **** 
 671:/usr/include/c++/7/bits/locale_facets.h ****   /**
 672:/usr/include/c++/7/bits/locale_facets.h ****    *  @brief  The ctype<char> specialization.
 673:/usr/include/c++/7/bits/locale_facets.h ****    *  @ingroup locales
 674:/usr/include/c++/7/bits/locale_facets.h ****    *
 675:/usr/include/c++/7/bits/locale_facets.h ****    *  This class defines classification and conversion functions for
 676:/usr/include/c++/7/bits/locale_facets.h ****    *  the char type.  It gets used by char streams for many I/O
 677:/usr/include/c++/7/bits/locale_facets.h ****    *  operations.  The char specialization provides a number of
 678:/usr/include/c++/7/bits/locale_facets.h ****    *  optimizations as well.
 679:/usr/include/c++/7/bits/locale_facets.h ****   */
 680:/usr/include/c++/7/bits/locale_facets.h ****   template<>
 681:/usr/include/c++/7/bits/locale_facets.h ****     class ctype<char> : public locale::facet, public ctype_base
 682:/usr/include/c++/7/bits/locale_facets.h ****     {
 683:/usr/include/c++/7/bits/locale_facets.h ****     public:
 684:/usr/include/c++/7/bits/locale_facets.h ****       // Types:
 685:/usr/include/c++/7/bits/locale_facets.h ****       /// Typedef for the template parameter char.
 686:/usr/include/c++/7/bits/locale_facets.h ****       typedef char		char_type;
 687:/usr/include/c++/7/bits/locale_facets.h **** 
 688:/usr/include/c++/7/bits/locale_facets.h ****     protected:
 689:/usr/include/c++/7/bits/locale_facets.h ****       // Data Members:
 690:/usr/include/c++/7/bits/locale_facets.h ****       __c_locale		_M_c_locale_ctype;
 691:/usr/include/c++/7/bits/locale_facets.h ****       bool			_M_del;
 692:/usr/include/c++/7/bits/locale_facets.h ****       __to_type			_M_toupper;
 693:/usr/include/c++/7/bits/locale_facets.h ****       __to_type			_M_tolower;
 694:/usr/include/c++/7/bits/locale_facets.h ****       const mask*		_M_table;
 695:/usr/include/c++/7/bits/locale_facets.h ****       mutable char		_M_widen_ok;
 696:/usr/include/c++/7/bits/locale_facets.h ****       mutable char		_M_widen[1 + static_cast<unsigned char>(-1)];
 697:/usr/include/c++/7/bits/locale_facets.h ****       mutable char		_M_narrow[1 + static_cast<unsigned char>(-1)];
 698:/usr/include/c++/7/bits/locale_facets.h ****       mutable char		_M_narrow_ok;	// 0 uninitialized, 1 init,
 699:/usr/include/c++/7/bits/locale_facets.h **** 						// 2 memcpy can't be used
 700:/usr/include/c++/7/bits/locale_facets.h **** 
 701:/usr/include/c++/7/bits/locale_facets.h ****     public:
 702:/usr/include/c++/7/bits/locale_facets.h ****       /// The facet id for ctype<char>
 703:/usr/include/c++/7/bits/locale_facets.h ****       static locale::id        id;
 704:/usr/include/c++/7/bits/locale_facets.h ****       /// The size of the mask table.  It is SCHAR_MAX + 1.
 705:/usr/include/c++/7/bits/locale_facets.h ****       static const size_t      table_size = 1 + static_cast<unsigned char>(-1);
 706:/usr/include/c++/7/bits/locale_facets.h **** 
 707:/usr/include/c++/7/bits/locale_facets.h ****       /**
 708:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Constructor performs initialization.
 709:/usr/include/c++/7/bits/locale_facets.h ****        *
 710:/usr/include/c++/7/bits/locale_facets.h ****        *  This is the constructor provided by the standard.
 711:/usr/include/c++/7/bits/locale_facets.h ****        *
 712:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __table If non-zero, table is used as the per-char mask.
 713:/usr/include/c++/7/bits/locale_facets.h ****        *               Else classic_table() is used.
 714:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __del   If true, passes ownership of table to this facet.
 715:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __refs  Passed to the base facet class.
 716:/usr/include/c++/7/bits/locale_facets.h ****       */
 717:/usr/include/c++/7/bits/locale_facets.h ****       explicit
 718:/usr/include/c++/7/bits/locale_facets.h ****       ctype(const mask* __table = 0, bool __del = false, size_t __refs = 0);
 719:/usr/include/c++/7/bits/locale_facets.h **** 
 720:/usr/include/c++/7/bits/locale_facets.h ****       /**
 721:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Constructor performs static initialization.
 722:/usr/include/c++/7/bits/locale_facets.h ****        *
 723:/usr/include/c++/7/bits/locale_facets.h ****        *  This constructor is used to construct the initial C locale facet.
 724:/usr/include/c++/7/bits/locale_facets.h ****        *
 725:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __cloc  Handle to C locale data.
 726:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __table If non-zero, table is used as the per-char mask.
 727:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __del   If true, passes ownership of table to this facet.
 728:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __refs  Passed to the base facet class.
 729:/usr/include/c++/7/bits/locale_facets.h ****       */
 730:/usr/include/c++/7/bits/locale_facets.h ****       explicit
 731:/usr/include/c++/7/bits/locale_facets.h ****       ctype(__c_locale __cloc, const mask* __table = 0, bool __del = false,
 732:/usr/include/c++/7/bits/locale_facets.h **** 	    size_t __refs = 0);
 733:/usr/include/c++/7/bits/locale_facets.h **** 
 734:/usr/include/c++/7/bits/locale_facets.h ****       /**
 735:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Test char classification.
 736:/usr/include/c++/7/bits/locale_facets.h ****        *
 737:/usr/include/c++/7/bits/locale_facets.h ****        *  This function compares the mask table[c] to @a __m.
 738:/usr/include/c++/7/bits/locale_facets.h ****        *
 739:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to compare the mask of.
 740:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 741:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  True if __m & table[__c] is true, false otherwise.
 742:/usr/include/c++/7/bits/locale_facets.h ****       */
 743:/usr/include/c++/7/bits/locale_facets.h ****       inline bool
 744:/usr/include/c++/7/bits/locale_facets.h ****       is(mask __m, char __c) const;
 745:/usr/include/c++/7/bits/locale_facets.h **** 
 746:/usr/include/c++/7/bits/locale_facets.h ****       /**
 747:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Return a mask array.
 748:/usr/include/c++/7/bits/locale_facets.h ****        *
 749:/usr/include/c++/7/bits/locale_facets.h ****        *  This function finds the mask for each char in the range [lo, hi) and
 750:/usr/include/c++/7/bits/locale_facets.h ****        *  successively writes it to vec.  vec must have as many elements as
 751:/usr/include/c++/7/bits/locale_facets.h ****        *  the char array.
 752:/usr/include/c++/7/bits/locale_facets.h ****        *
 753:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 754:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 755:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __vec  Pointer to an array of mask storage.
 756:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 757:/usr/include/c++/7/bits/locale_facets.h ****       */
 758:/usr/include/c++/7/bits/locale_facets.h ****       inline const char*
 759:/usr/include/c++/7/bits/locale_facets.h ****       is(const char* __lo, const char* __hi, mask* __vec) const;
 760:/usr/include/c++/7/bits/locale_facets.h **** 
 761:/usr/include/c++/7/bits/locale_facets.h ****       /**
 762:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char matching a mask
 763:/usr/include/c++/7/bits/locale_facets.h ****        *
 764:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns the first char in [lo,hi) for
 765:/usr/include/c++/7/bits/locale_facets.h ****        *  which is(m,char) is true.
 766:/usr/include/c++/7/bits/locale_facets.h ****        *
 767:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 768:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 769:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 770:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to a matching char if found, else @a __hi.
 771:/usr/include/c++/7/bits/locale_facets.h ****       */
 772:/usr/include/c++/7/bits/locale_facets.h ****       inline const char*
 773:/usr/include/c++/7/bits/locale_facets.h ****       scan_is(mask __m, const char* __lo, const char* __hi) const;
 774:/usr/include/c++/7/bits/locale_facets.h **** 
 775:/usr/include/c++/7/bits/locale_facets.h ****       /**
 776:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Find char not matching a mask
 777:/usr/include/c++/7/bits/locale_facets.h ****        *
 778:/usr/include/c++/7/bits/locale_facets.h ****        *  This function searches for and returns a pointer to the first char
 779:/usr/include/c++/7/bits/locale_facets.h ****        *  in [__lo,__hi) for which is(m,char) is false.
 780:/usr/include/c++/7/bits/locale_facets.h ****        *
 781:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __m  The mask to compare against.
 782:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 783:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 784:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  Pointer to a non-matching char if found, else @a __hi.
 785:/usr/include/c++/7/bits/locale_facets.h ****       */
 786:/usr/include/c++/7/bits/locale_facets.h ****       inline const char*
 787:/usr/include/c++/7/bits/locale_facets.h ****       scan_not(mask __m, const char* __lo, const char* __hi) const;
 788:/usr/include/c++/7/bits/locale_facets.h **** 
 789:/usr/include/c++/7/bits/locale_facets.h ****       /**
 790:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
 791:/usr/include/c++/7/bits/locale_facets.h ****        *
 792:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char argument to uppercase if possible.
 793:/usr/include/c++/7/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.
 794:/usr/include/c++/7/bits/locale_facets.h ****        *
 795:/usr/include/c++/7/bits/locale_facets.h ****        *  toupper() acts as if it returns ctype<char>::do_toupper(c).
 796:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() must always return the same result for the same input.
 797:/usr/include/c++/7/bits/locale_facets.h ****        *
 798:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 799:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The uppercase char if convertible, else @a __c.
 800:/usr/include/c++/7/bits/locale_facets.h ****       */
 801:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 802:/usr/include/c++/7/bits/locale_facets.h ****       toupper(char_type __c) const
 803:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_toupper(__c); }
 804:/usr/include/c++/7/bits/locale_facets.h **** 
 805:/usr/include/c++/7/bits/locale_facets.h ****       /**
 806:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
 807:/usr/include/c++/7/bits/locale_facets.h ****        *
 808:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the range [__lo,__hi) to uppercase
 809:/usr/include/c++/7/bits/locale_facets.h ****        *  if possible.  Other chars remain untouched.
 810:/usr/include/c++/7/bits/locale_facets.h ****        *
 811:/usr/include/c++/7/bits/locale_facets.h ****        *  toupper() acts as if it returns ctype<char>:: do_toupper(__lo, __hi).
 812:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() must always return the same result for the same input.
 813:/usr/include/c++/7/bits/locale_facets.h ****        *
 814:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 815:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 816:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 817:/usr/include/c++/7/bits/locale_facets.h ****       */
 818:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 819:/usr/include/c++/7/bits/locale_facets.h ****       toupper(char_type *__lo, const char_type* __hi) const
 820:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_toupper(__lo, __hi); }
 821:/usr/include/c++/7/bits/locale_facets.h **** 
 822:/usr/include/c++/7/bits/locale_facets.h ****       /**
 823:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
 824:/usr/include/c++/7/bits/locale_facets.h ****        *
 825:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char argument to lowercase if possible.
 826:/usr/include/c++/7/bits/locale_facets.h ****        *  If not possible (for example, '2'), returns the argument.
 827:/usr/include/c++/7/bits/locale_facets.h ****        *
 828:/usr/include/c++/7/bits/locale_facets.h ****        *  tolower() acts as if it returns ctype<char>::do_tolower(__c).
 829:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() must always return the same result for the same input.
 830:/usr/include/c++/7/bits/locale_facets.h ****        *
 831:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 832:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The lowercase char if convertible, else @a __c.
 833:/usr/include/c++/7/bits/locale_facets.h ****       */
 834:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 835:/usr/include/c++/7/bits/locale_facets.h ****       tolower(char_type __c) const
 836:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_tolower(__c); }
 837:/usr/include/c++/7/bits/locale_facets.h **** 
 838:/usr/include/c++/7/bits/locale_facets.h ****       /**
 839:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
 840:/usr/include/c++/7/bits/locale_facets.h ****        *
 841:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the range [lo,hi) to lowercase
 842:/usr/include/c++/7/bits/locale_facets.h ****        *  if possible.  Other chars remain untouched.
 843:/usr/include/c++/7/bits/locale_facets.h ****        *
 844:/usr/include/c++/7/bits/locale_facets.h ****        *  tolower() acts as if it returns ctype<char>:: do_tolower(__lo, __hi).
 845:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() must always return the same result for the same input.
 846:/usr/include/c++/7/bits/locale_facets.h ****        *
 847:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 848:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 849:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 850:/usr/include/c++/7/bits/locale_facets.h ****       */
 851:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 852:/usr/include/c++/7/bits/locale_facets.h ****       tolower(char_type* __lo, const char_type* __hi) const
 853:/usr/include/c++/7/bits/locale_facets.h ****       { return this->do_tolower(__lo, __hi); }
 854:/usr/include/c++/7/bits/locale_facets.h **** 
 855:/usr/include/c++/7/bits/locale_facets.h ****       /**
 856:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char
 857:/usr/include/c++/7/bits/locale_facets.h ****        *
 858:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char to char_type using the simplest
 859:/usr/include/c++/7/bits/locale_facets.h ****        *  reasonable transformation.  For an underived ctype<char> facet, the
 860:/usr/include/c++/7/bits/locale_facets.h ****        *  argument will be returned unchanged.
 861:/usr/include/c++/7/bits/locale_facets.h ****        *
 862:/usr/include/c++/7/bits/locale_facets.h ****        *  This function works as if it returns ctype<char>::do_widen(c).
 863:/usr/include/c++/7/bits/locale_facets.h ****        *  do_widen() must always return the same result for the same input.
 864:/usr/include/c++/7/bits/locale_facets.h ****        *
 865:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 866:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 867:/usr/include/c++/7/bits/locale_facets.h ****        *
 868:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 869:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted character.
 870:/usr/include/c++/7/bits/locale_facets.h ****       */
 871:/usr/include/c++/7/bits/locale_facets.h ****       char_type
 872:/usr/include/c++/7/bits/locale_facets.h ****       widen(char __c) const
 873:/usr/include/c++/7/bits/locale_facets.h ****       {
 874:/usr/include/c++/7/bits/locale_facets.h **** 	if (_M_widen_ok)
 875:/usr/include/c++/7/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 876:/usr/include/c++/7/bits/locale_facets.h **** 	this->_M_widen_init();
 877:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_widen(__c);
 878:/usr/include/c++/7/bits/locale_facets.h ****       }
 879:/usr/include/c++/7/bits/locale_facets.h **** 
 880:/usr/include/c++/7/bits/locale_facets.h ****       /**
 881:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char array
 882:/usr/include/c++/7/bits/locale_facets.h ****        *
 883:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the input to char using the
 884:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation.  For an underived ctype<char>
 885:/usr/include/c++/7/bits/locale_facets.h ****        *  facet, the argument will be copied unchanged.
 886:/usr/include/c++/7/bits/locale_facets.h ****        *
 887:/usr/include/c++/7/bits/locale_facets.h ****        *  This function works as if it returns ctype<char>::do_widen(c).
 888:/usr/include/c++/7/bits/locale_facets.h ****        *  do_widen() must always return the same result for the same input.
 889:/usr/include/c++/7/bits/locale_facets.h ****        *
 890:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 891:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 892:/usr/include/c++/7/bits/locale_facets.h ****        *
 893:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
 894:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 895:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 896:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 897:/usr/include/c++/7/bits/locale_facets.h ****       */
 898:/usr/include/c++/7/bits/locale_facets.h ****       const char*
 899:/usr/include/c++/7/bits/locale_facets.h ****       widen(const char* __lo, const char* __hi, char_type* __to) const
 900:/usr/include/c++/7/bits/locale_facets.h ****       {
 901:/usr/include/c++/7/bits/locale_facets.h **** 	if (_M_widen_ok == 1)
 902:/usr/include/c++/7/bits/locale_facets.h **** 	  {
 903:/usr/include/c++/7/bits/locale_facets.h **** 	    __builtin_memcpy(__to, __lo, __hi - __lo);
 904:/usr/include/c++/7/bits/locale_facets.h **** 	    return __hi;
 905:/usr/include/c++/7/bits/locale_facets.h **** 	  }
 906:/usr/include/c++/7/bits/locale_facets.h **** 	if (!_M_widen_ok)
 907:/usr/include/c++/7/bits/locale_facets.h **** 	  _M_widen_init();
 908:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_widen(__lo, __hi, __to);
 909:/usr/include/c++/7/bits/locale_facets.h ****       }
 910:/usr/include/c++/7/bits/locale_facets.h **** 
 911:/usr/include/c++/7/bits/locale_facets.h ****       /**
 912:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow char
 913:/usr/include/c++/7/bits/locale_facets.h ****        *
 914:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts the char to char using the simplest
 915:/usr/include/c++/7/bits/locale_facets.h ****        *  reasonable transformation.  If the conversion fails, dfault is
 916:/usr/include/c++/7/bits/locale_facets.h ****        *  returned instead.  For an underived ctype<char> facet, @a c
 917:/usr/include/c++/7/bits/locale_facets.h ****        *  will be returned unchanged.
 918:/usr/include/c++/7/bits/locale_facets.h ****        *
 919:/usr/include/c++/7/bits/locale_facets.h ****        *  This function works as if it returns ctype<char>::do_narrow(c).
 920:/usr/include/c++/7/bits/locale_facets.h ****        *  do_narrow() must always return the same result for the same input.
 921:/usr/include/c++/7/bits/locale_facets.h ****        *
 922:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 923:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 924:/usr/include/c++/7/bits/locale_facets.h ****        *
 925:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
 926:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to return if conversion fails.
 927:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted character.
 928:/usr/include/c++/7/bits/locale_facets.h ****       */
 929:/usr/include/c++/7/bits/locale_facets.h ****       char
 930:/usr/include/c++/7/bits/locale_facets.h ****       narrow(char_type __c, char __dfault) const
 931:/usr/include/c++/7/bits/locale_facets.h ****       {
 932:/usr/include/c++/7/bits/locale_facets.h **** 	if (_M_narrow[static_cast<unsigned char>(__c)])
 933:/usr/include/c++/7/bits/locale_facets.h **** 	  return _M_narrow[static_cast<unsigned char>(__c)];
 934:/usr/include/c++/7/bits/locale_facets.h **** 	const char __t = do_narrow(__c, __dfault);
 935:/usr/include/c++/7/bits/locale_facets.h **** 	if (__t != __dfault)
 936:/usr/include/c++/7/bits/locale_facets.h **** 	  _M_narrow[static_cast<unsigned char>(__c)] = __t;
 937:/usr/include/c++/7/bits/locale_facets.h **** 	return __t;
 938:/usr/include/c++/7/bits/locale_facets.h ****       }
 939:/usr/include/c++/7/bits/locale_facets.h **** 
 940:/usr/include/c++/7/bits/locale_facets.h ****       /**
 941:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Narrow char array
 942:/usr/include/c++/7/bits/locale_facets.h ****        *
 943:/usr/include/c++/7/bits/locale_facets.h ****        *  This function converts each char in the input to char using the
 944:/usr/include/c++/7/bits/locale_facets.h ****        *  simplest reasonable transformation and writes the results to the
 945:/usr/include/c++/7/bits/locale_facets.h ****        *  destination array.  For any char in the input that cannot be
 946:/usr/include/c++/7/bits/locale_facets.h ****        *  converted, @a dfault is used instead.  For an underived ctype<char>
 947:/usr/include/c++/7/bits/locale_facets.h ****        *  facet, the argument will be copied unchanged.
 948:/usr/include/c++/7/bits/locale_facets.h ****        *
 949:/usr/include/c++/7/bits/locale_facets.h ****        *  This function works as if it returns ctype<char>::do_narrow(lo, hi,
 950:/usr/include/c++/7/bits/locale_facets.h ****        *  dfault, to).  do_narrow() must always return the same result for the
 951:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
 952:/usr/include/c++/7/bits/locale_facets.h ****        *
 953:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
 954:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
 955:/usr/include/c++/7/bits/locale_facets.h ****        *
 956:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
 957:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
 958:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __dfault  Char to use if conversion fails.
 959:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __to  Pointer to the destination array.
 960:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
 961:/usr/include/c++/7/bits/locale_facets.h ****       */
 962:/usr/include/c++/7/bits/locale_facets.h ****       const char_type*
 963:/usr/include/c++/7/bits/locale_facets.h ****       narrow(const char_type* __lo, const char_type* __hi,
 964:/usr/include/c++/7/bits/locale_facets.h **** 	     char __dfault, char* __to) const
 965:/usr/include/c++/7/bits/locale_facets.h ****       {
 966:/usr/include/c++/7/bits/locale_facets.h **** 	if (__builtin_expect(_M_narrow_ok == 1, true))
 967:/usr/include/c++/7/bits/locale_facets.h **** 	  {
 968:/usr/include/c++/7/bits/locale_facets.h **** 	    __builtin_memcpy(__to, __lo, __hi - __lo);
 969:/usr/include/c++/7/bits/locale_facets.h **** 	    return __hi;
 970:/usr/include/c++/7/bits/locale_facets.h **** 	  }
 971:/usr/include/c++/7/bits/locale_facets.h **** 	if (!_M_narrow_ok)
 972:/usr/include/c++/7/bits/locale_facets.h **** 	  _M_narrow_init();
 973:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_narrow(__lo, __hi, __dfault, __to);
 974:/usr/include/c++/7/bits/locale_facets.h ****       }
 975:/usr/include/c++/7/bits/locale_facets.h **** 
 976:/usr/include/c++/7/bits/locale_facets.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
 977:/usr/include/c++/7/bits/locale_facets.h ****       // DR 695. ctype<char>::classic_table() not accessible.
 978:/usr/include/c++/7/bits/locale_facets.h ****       /// Returns a pointer to the mask table provided to the constructor, or
 979:/usr/include/c++/7/bits/locale_facets.h ****       /// the default from classic_table() if none was provided.
 980:/usr/include/c++/7/bits/locale_facets.h ****       const mask*
 981:/usr/include/c++/7/bits/locale_facets.h ****       table() const throw()
 982:/usr/include/c++/7/bits/locale_facets.h ****       { return _M_table; }
 983:/usr/include/c++/7/bits/locale_facets.h **** 
 984:/usr/include/c++/7/bits/locale_facets.h ****       /// Returns a pointer to the C locale mask table.
 985:/usr/include/c++/7/bits/locale_facets.h ****       static const mask*
 986:/usr/include/c++/7/bits/locale_facets.h ****       classic_table() throw();
 987:/usr/include/c++/7/bits/locale_facets.h ****     protected:
 988:/usr/include/c++/7/bits/locale_facets.h **** 
 989:/usr/include/c++/7/bits/locale_facets.h ****       /**
 990:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Destructor.
 991:/usr/include/c++/7/bits/locale_facets.h ****        *
 992:/usr/include/c++/7/bits/locale_facets.h ****        *  This function deletes table() if @a del was true in the
 993:/usr/include/c++/7/bits/locale_facets.h ****        *  constructor.
 994:/usr/include/c++/7/bits/locale_facets.h ****       */
 995:/usr/include/c++/7/bits/locale_facets.h ****       virtual
 996:/usr/include/c++/7/bits/locale_facets.h ****       ~ctype();
 997:/usr/include/c++/7/bits/locale_facets.h **** 
 998:/usr/include/c++/7/bits/locale_facets.h ****       /**
 999:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to uppercase.
1000:/usr/include/c++/7/bits/locale_facets.h ****        *
1001:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the char argument to uppercase if
1002:/usr/include/c++/7/bits/locale_facets.h ****        *  possible.  If not possible (for example, '2'), returns the argument.
1003:/usr/include/c++/7/bits/locale_facets.h ****        *
1004:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
1005:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
1006:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
1007:/usr/include/c++/7/bits/locale_facets.h ****        *
1008:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
1009:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The uppercase char if convertible, else @a __c.
1010:/usr/include/c++/7/bits/locale_facets.h ****       */
1011:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
1012:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type __c) const;
1013:/usr/include/c++/7/bits/locale_facets.h **** 
1014:/usr/include/c++/7/bits/locale_facets.h ****       /**
1015:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to uppercase.
1016:/usr/include/c++/7/bits/locale_facets.h ****        *
1017:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts each char in the range [lo,hi) to
1018:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercase if possible.  Other chars remain untouched.
1019:/usr/include/c++/7/bits/locale_facets.h ****        *
1020:/usr/include/c++/7/bits/locale_facets.h ****        *  do_toupper() is a hook for a derived facet to change the behavior of
1021:/usr/include/c++/7/bits/locale_facets.h ****        *  uppercasing.  do_toupper() must always return the same result for
1022:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
1023:/usr/include/c++/7/bits/locale_facets.h ****        *
1024:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to start of range.
1025:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
1026:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
1027:/usr/include/c++/7/bits/locale_facets.h ****       */
1028:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
1029:/usr/include/c++/7/bits/locale_facets.h ****       do_toupper(char_type* __lo, const char_type* __hi) const;
1030:/usr/include/c++/7/bits/locale_facets.h **** 
1031:/usr/include/c++/7/bits/locale_facets.h ****       /**
1032:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert to lowercase.
1033:/usr/include/c++/7/bits/locale_facets.h ****        *
1034:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the char argument to lowercase if
1035:/usr/include/c++/7/bits/locale_facets.h ****        *  possible.  If not possible (for example, '2'), returns the argument.
1036:/usr/include/c++/7/bits/locale_facets.h ****        *
1037:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
1038:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
1039:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
1040:/usr/include/c++/7/bits/locale_facets.h ****        *
1041:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
1042:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The lowercase char if convertible, else @a __c.
1043:/usr/include/c++/7/bits/locale_facets.h ****       */
1044:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
1045:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type __c) const;
1046:/usr/include/c++/7/bits/locale_facets.h **** 
1047:/usr/include/c++/7/bits/locale_facets.h ****       /**
1048:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Convert array to lowercase.
1049:/usr/include/c++/7/bits/locale_facets.h ****        *
1050:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts each char in the range [lo,hi) to
1051:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercase if possible.  Other chars remain untouched.
1052:/usr/include/c++/7/bits/locale_facets.h ****        *
1053:/usr/include/c++/7/bits/locale_facets.h ****        *  do_tolower() is a hook for a derived facet to change the behavior of
1054:/usr/include/c++/7/bits/locale_facets.h ****        *  lowercasing.  do_tolower() must always return the same result for
1055:/usr/include/c++/7/bits/locale_facets.h ****        *  the same input.
1056:/usr/include/c++/7/bits/locale_facets.h ****        *
1057:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __lo  Pointer to first char in range.
1058:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __hi  Pointer to end of range.
1059:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  @a __hi.
1060:/usr/include/c++/7/bits/locale_facets.h ****       */
1061:/usr/include/c++/7/bits/locale_facets.h ****       virtual const char_type*
1062:/usr/include/c++/7/bits/locale_facets.h ****       do_tolower(char_type* __lo, const char_type* __hi) const;
1063:/usr/include/c++/7/bits/locale_facets.h **** 
1064:/usr/include/c++/7/bits/locale_facets.h ****       /**
1065:/usr/include/c++/7/bits/locale_facets.h ****        *  @brief  Widen char
1066:/usr/include/c++/7/bits/locale_facets.h ****        *
1067:/usr/include/c++/7/bits/locale_facets.h ****        *  This virtual function converts the char to char using the simplest
1068:/usr/include/c++/7/bits/locale_facets.h ****        *  reasonable transformation.  For an underived ctype<char> facet, the
1069:/usr/include/c++/7/bits/locale_facets.h ****        *  argument will be returned unchanged.
1070:/usr/include/c++/7/bits/locale_facets.h ****        *
1071:/usr/include/c++/7/bits/locale_facets.h ****        *  do_widen() is a hook for a derived facet to change the behavior of
1072:/usr/include/c++/7/bits/locale_facets.h ****        *  widening.  do_widen() must always return the same result for the
1073:/usr/include/c++/7/bits/locale_facets.h ****        *  same input.
1074:/usr/include/c++/7/bits/locale_facets.h ****        *
1075:/usr/include/c++/7/bits/locale_facets.h ****        *  Note: this is not what you want for codepage conversions.  See
1076:/usr/include/c++/7/bits/locale_facets.h ****        *  codecvt for that.
1077:/usr/include/c++/7/bits/locale_facets.h ****        *
1078:/usr/include/c++/7/bits/locale_facets.h ****        *  @param __c  The char to convert.
1079:/usr/include/c++/7/bits/locale_facets.h ****        *  @return  The converted character.
1080:/usr/include/c++/7/bits/locale_facets.h ****       */
1081:/usr/include/c++/7/bits/locale_facets.h ****       virtual char_type
1082:/usr/include/c++/7/bits/locale_facets.h ****       do_widen(char __c) const
  12              		.loc 1 1082 0
  13              		.cfi_startproc
  14              	.LVL0:
1083:/usr/include/c++/7/bits/locale_facets.h ****       { return __c; }
  15              		.loc 1 1083 0
  16 0000 89F0     		movl	%esi, %eax
  17 0002 C3       		ret
  18              		.cfi_endproc
  19              	.LFE1321:
  21              		.section	.rodata.str1.1,"aMS",@progbits,1
  22              	.LC0:
  23 0000 454C4150 		.string	"ELAPSED TIME:   "
  23      53454420 
  23      54494D45 
  23      3A202020 
  23      00
  24              	.LC2:
  25 0011 7300     		.string	"s"
  26              	.LC3:
  27 0013 20202020 		.string	"      RESULT:   "
  27      20205245 
  27      53554C54 
  27      3A202020 
  27      00
  28              	.LC4:
  29 0024 0A00     		.string	"\n"
  30              		.text
  31              		.p2align 4,,15
  32              		.globl	_Z13print_resultsdd
  34              	_Z13print_resultsdd:
  35              	.LFB3094:
  36              		.file 2 "main.cpp"
   1:main.cpp      **** #include <iostream>
   2:main.cpp      **** #include "StopWatch.h"
   3:main.cpp      **** #include <random>
   4:main.cpp      **** 
   5:main.cpp      **** #include "ednaive.h"
   6:main.cpp      **** //#include "ed128d.h"
   7:main.cpp      **** //#include "ed256d.h"
   8:main.cpp      **** 
   9:main.cpp      **** using namespace std;
  10:main.cpp      **** 
  11:main.cpp      **** struct Test
  12:main.cpp      **** {
  13:main.cpp      ****     double time;
  14:main.cpp      ****     double result;
  15:main.cpp      **** 
  16:main.cpp      ****     void Reset() {
  17:main.cpp      ****         time = result = 0;
  18:main.cpp      ****     }
  19:main.cpp      **** };
  20:main.cpp      **** void fill_vector(double *x, double *y, size_t n);
  21:main.cpp      **** void print_results(double time, double result);
  22:main.cpp      **** void _test(EuclideanDistance *instance, const double *x,const double *y, size_t n);
  23:main.cpp      **** 
  24:main.cpp      **** int main() {
  25:main.cpp      **** 
  26:main.cpp      **** 
  27:main.cpp      ****     size_t n = 1000000;
  28:main.cpp      **** 
  29:main.cpp      ****     auto *x = (double*) aligned_alloc(32, n * sizeof(double));
  30:main.cpp      ****     auto *y = (double*) aligned_alloc(32, n * sizeof(double));
  31:main.cpp      **** 
  32:main.cpp      ****     fill_vector(x, y, n);
  33:main.cpp      **** 
  34:main.cpp      ****     cout << "\n" << endl;
  35:main.cpp      **** 
  36:main.cpp      ****     EuclideanDistance *baseline = new Baseline();
  37:main.cpp      ****     cout << "BASELINE METHOD:\n" << endl;
  38:main.cpp      ****     _test(baseline, x,y,n);
  39:main.cpp      **** 
  40:main.cpp      **** //    EuclideanDistance *double128 = new Double128();
  41:main.cpp      **** //    cout << "SSE3 WITH 128d :\n" << endl;
  42:main.cpp      **** //    _test(double128, x,y,n);
  43:main.cpp      **** 
  44:main.cpp      **** //    EuclideanDistance *double256 = new Double256();
  45:main.cpp      **** //    cout << "AVX2 WITH 256d :\n" << endl;
  46:main.cpp      **** //    _test(double256, x,y,n);
  47:main.cpp      **** 
  48:main.cpp      ****     return 0;
  49:main.cpp      **** }
  50:main.cpp      **** 
  51:main.cpp      **** void _test(EuclideanDistance *instance, const double *x,const double *y, size_t n)
  52:main.cpp      **** {
  53:main.cpp      ****     Test test;
  54:main.cpp      ****     StopWatch sw;
  55:main.cpp      ****     size_t qtd_tests = 10000;
  56:main.cpp      **** 
  57:main.cpp      ****     test.Reset();
  58:main.cpp      ****     sw.Restart();
  59:main.cpp      ****     for (int i = 0; i < qtd_tests; i++)
  60:main.cpp      ****         test.result += instance->calculate(x, y, n);
  61:main.cpp      ****     test.time = sw.ElapsedUs();
  62:main.cpp      **** 
  63:main.cpp      ****     print_results(test.time / qtd_tests,test.result / qtd_tests);
  64:main.cpp      ****     test.Reset();
  65:main.cpp      **** }
  66:main.cpp      **** 
  67:main.cpp      **** void fill_vector(double *x, double *y, size_t n)
  68:main.cpp      **** {
  69:main.cpp      ****     random_device rd;
  70:main.cpp      **** 
  71:main.cpp      ****     mt19937 e2(rd());
  72:main.cpp      ****     uniform_real_distribution<> dist(1, 151);
  73:main.cpp      **** 
  74:main.cpp      ****     for (int i = 0; i < n; ++i) {
  75:main.cpp      ****         x[i] = dist(e2);
  76:main.cpp      ****         y[i] = dist(e2);
  77:main.cpp      ****     }
  78:main.cpp      **** }
  79:main.cpp      **** 
  80:main.cpp      **** void print_results(double time, double result){
  37              		.loc 2 80 0
  38              		.cfi_startproc
  39              	.LVL1:
  40 0000 55       		pushq	%rbp
  41              		.cfi_def_cfa_offset 16
  42              		.cfi_offset 6, -16
  43 0001 53       		pushq	%rbx
  44              		.cfi_def_cfa_offset 24
  45              		.cfi_offset 3, -24
  46              	.LBB522:
  47              	.LBB523:
  48              		.file 3 "/usr/include/c++/7/ostream"
   1:/usr/include/c++/7/ostream **** // Output streams -*- C++ -*-
   2:/usr/include/c++/7/ostream **** 
   3:/usr/include/c++/7/ostream **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/ostream **** //
   5:/usr/include/c++/7/ostream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/ostream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/ostream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/ostream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/ostream **** // any later version.
  10:/usr/include/c++/7/ostream **** 
  11:/usr/include/c++/7/ostream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/ostream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/ostream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/ostream **** // GNU General Public License for more details.
  15:/usr/include/c++/7/ostream **** 
  16:/usr/include/c++/7/ostream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/ostream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/ostream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/ostream **** 
  20:/usr/include/c++/7/ostream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/ostream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/ostream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/ostream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/ostream **** 
  25:/usr/include/c++/7/ostream **** /** @file include/ostream
  26:/usr/include/c++/7/ostream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/7/ostream ****  */
  28:/usr/include/c++/7/ostream **** 
  29:/usr/include/c++/7/ostream **** //
  30:/usr/include/c++/7/ostream **** // ISO C++ 14882: 27.6.2  Output streams
  31:/usr/include/c++/7/ostream **** //
  32:/usr/include/c++/7/ostream **** 
  33:/usr/include/c++/7/ostream **** #ifndef _GLIBCXX_OSTREAM
  34:/usr/include/c++/7/ostream **** #define _GLIBCXX_OSTREAM 1
  35:/usr/include/c++/7/ostream **** 
  36:/usr/include/c++/7/ostream **** #pragma GCC system_header
  37:/usr/include/c++/7/ostream **** 
  38:/usr/include/c++/7/ostream **** #include <ios>
  39:/usr/include/c++/7/ostream **** #include <bits/ostream_insert.h>
  40:/usr/include/c++/7/ostream **** 
  41:/usr/include/c++/7/ostream **** namespace std _GLIBCXX_VISIBILITY(default)
  42:/usr/include/c++/7/ostream **** {
  43:/usr/include/c++/7/ostream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  44:/usr/include/c++/7/ostream **** 
  45:/usr/include/c++/7/ostream ****   /**
  46:/usr/include/c++/7/ostream ****    *  @brief  Template class basic_ostream.
  47:/usr/include/c++/7/ostream ****    *  @ingroup io
  48:/usr/include/c++/7/ostream ****    *
  49:/usr/include/c++/7/ostream ****    *  @tparam _CharT  Type of character stream.
  50:/usr/include/c++/7/ostream ****    *  @tparam _Traits  Traits for character type, defaults to
  51:/usr/include/c++/7/ostream ****    *                   char_traits<_CharT>.
  52:/usr/include/c++/7/ostream ****    *
  53:/usr/include/c++/7/ostream ****    *  This is the base class for all output streams.  It provides text
  54:/usr/include/c++/7/ostream ****    *  formatting of all builtin types, and communicates with any class
  55:/usr/include/c++/7/ostream ****    *  derived from basic_streambuf to do the actual output.
  56:/usr/include/c++/7/ostream ****   */
  57:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
  58:/usr/include/c++/7/ostream ****     class basic_ostream : virtual public basic_ios<_CharT, _Traits>
  59:/usr/include/c++/7/ostream ****     {
  60:/usr/include/c++/7/ostream ****     public:
  61:/usr/include/c++/7/ostream ****       // Types (inherited from basic_ios):
  62:/usr/include/c++/7/ostream ****       typedef _CharT			 		char_type;
  63:/usr/include/c++/7/ostream ****       typedef typename _Traits::int_type 		int_type;
  64:/usr/include/c++/7/ostream ****       typedef typename _Traits::pos_type 		pos_type;
  65:/usr/include/c++/7/ostream ****       typedef typename _Traits::off_type 		off_type;
  66:/usr/include/c++/7/ostream ****       typedef _Traits			 		traits_type;
  67:/usr/include/c++/7/ostream **** 
  68:/usr/include/c++/7/ostream ****       // Non-standard Types:
  69:/usr/include/c++/7/ostream ****       typedef basic_streambuf<_CharT, _Traits> 		__streambuf_type;
  70:/usr/include/c++/7/ostream ****       typedef basic_ios<_CharT, _Traits>		__ios_type;
  71:/usr/include/c++/7/ostream ****       typedef basic_ostream<_CharT, _Traits>		__ostream_type;
  72:/usr/include/c++/7/ostream ****       typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
  73:/usr/include/c++/7/ostream ****       							__num_put_type;
  74:/usr/include/c++/7/ostream ****       typedef ctype<_CharT>	      			__ctype_type;
  75:/usr/include/c++/7/ostream **** 
  76:/usr/include/c++/7/ostream ****       /**
  77:/usr/include/c++/7/ostream ****        *  @brief  Base constructor.
  78:/usr/include/c++/7/ostream ****        *
  79:/usr/include/c++/7/ostream ****        *  This ctor is almost never called by the user directly, rather from
  80:/usr/include/c++/7/ostream ****        *  derived classes' initialization lists, which pass a pointer to
  81:/usr/include/c++/7/ostream ****        *  their own stream buffer.
  82:/usr/include/c++/7/ostream ****       */
  83:/usr/include/c++/7/ostream ****       explicit
  84:/usr/include/c++/7/ostream ****       basic_ostream(__streambuf_type* __sb)
  85:/usr/include/c++/7/ostream ****       { this->init(__sb); }
  86:/usr/include/c++/7/ostream **** 
  87:/usr/include/c++/7/ostream ****       /**
  88:/usr/include/c++/7/ostream ****        *  @brief  Base destructor.
  89:/usr/include/c++/7/ostream ****        *
  90:/usr/include/c++/7/ostream ****        *  This does very little apart from providing a virtual base dtor.
  91:/usr/include/c++/7/ostream ****       */
  92:/usr/include/c++/7/ostream ****       virtual
  93:/usr/include/c++/7/ostream ****       ~basic_ostream() { }
  94:/usr/include/c++/7/ostream **** 
  95:/usr/include/c++/7/ostream ****       /// Safe prefix/suffix operations.
  96:/usr/include/c++/7/ostream ****       class sentry;
  97:/usr/include/c++/7/ostream ****       friend class sentry;
  98:/usr/include/c++/7/ostream **** 
  99:/usr/include/c++/7/ostream ****       //@{
 100:/usr/include/c++/7/ostream ****       /**
 101:/usr/include/c++/7/ostream ****        *  @brief  Interface for manipulators.
 102:/usr/include/c++/7/ostream ****        *
 103:/usr/include/c++/7/ostream ****        *  Manipulators such as @c std::endl and @c std::hex use these
 104:/usr/include/c++/7/ostream ****        *  functions in constructs like "std::cout << std::endl".  For more
 105:/usr/include/c++/7/ostream ****        *  information, see the iomanip header.
 106:/usr/include/c++/7/ostream ****       */
 107:/usr/include/c++/7/ostream ****       __ostream_type&
 108:/usr/include/c++/7/ostream ****       operator<<(__ostream_type& (*__pf)(__ostream_type&))
 109:/usr/include/c++/7/ostream ****       {
 110:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 111:/usr/include/c++/7/ostream **** 	// DR 60. What is a formatted input function?
 112:/usr/include/c++/7/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 113:/usr/include/c++/7/ostream **** 	return __pf(*this);
 114:/usr/include/c++/7/ostream ****       }
 115:/usr/include/c++/7/ostream **** 
 116:/usr/include/c++/7/ostream ****       __ostream_type&
 117:/usr/include/c++/7/ostream ****       operator<<(__ios_type& (*__pf)(__ios_type&))
 118:/usr/include/c++/7/ostream ****       {
 119:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 120:/usr/include/c++/7/ostream **** 	// DR 60. What is a formatted input function?
 121:/usr/include/c++/7/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 122:/usr/include/c++/7/ostream **** 	__pf(*this);
 123:/usr/include/c++/7/ostream **** 	return *this;
 124:/usr/include/c++/7/ostream ****       }
 125:/usr/include/c++/7/ostream **** 
 126:/usr/include/c++/7/ostream ****       __ostream_type&
 127:/usr/include/c++/7/ostream ****       operator<<(ios_base& (*__pf) (ios_base&))
 128:/usr/include/c++/7/ostream ****       {
 129:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 130:/usr/include/c++/7/ostream **** 	// DR 60. What is a formatted input function?
 131:/usr/include/c++/7/ostream **** 	// The inserters for manipulators are *not* formatted output functions.
 132:/usr/include/c++/7/ostream **** 	__pf(*this);
 133:/usr/include/c++/7/ostream **** 	return *this;
 134:/usr/include/c++/7/ostream ****       }
 135:/usr/include/c++/7/ostream ****       //@}
 136:/usr/include/c++/7/ostream **** 
 137:/usr/include/c++/7/ostream ****       //@{
 138:/usr/include/c++/7/ostream ****       /**
 139:/usr/include/c++/7/ostream ****        *  @name Inserters
 140:/usr/include/c++/7/ostream ****        *
 141:/usr/include/c++/7/ostream ****        *  All the @c operator<< functions (aka <em>formatted output
 142:/usr/include/c++/7/ostream ****        *  functions</em>) have some common behavior.  Each starts by
 143:/usr/include/c++/7/ostream ****        *  constructing a temporary object of type std::basic_ostream::sentry.
 144:/usr/include/c++/7/ostream ****        *  This can have several effects, concluding with the setting of a
 145:/usr/include/c++/7/ostream ****        *  status flag; see the sentry documentation for more.
 146:/usr/include/c++/7/ostream ****        *
 147:/usr/include/c++/7/ostream ****        *  If the sentry status is good, the function tries to generate
 148:/usr/include/c++/7/ostream ****        *  whatever data is appropriate for the type of the argument.
 149:/usr/include/c++/7/ostream ****        *
 150:/usr/include/c++/7/ostream ****        *  If an exception is thrown during insertion, ios_base::badbit
 151:/usr/include/c++/7/ostream ****        *  will be turned on in the stream's error state without causing an
 152:/usr/include/c++/7/ostream ****        *  ios_base::failure to be thrown.  The original exception will then
 153:/usr/include/c++/7/ostream ****        *  be rethrown.
 154:/usr/include/c++/7/ostream ****       */
 155:/usr/include/c++/7/ostream **** 
 156:/usr/include/c++/7/ostream ****       //@{
 157:/usr/include/c++/7/ostream ****       /**
 158:/usr/include/c++/7/ostream ****        *  @brief Integer arithmetic inserters
 159:/usr/include/c++/7/ostream ****        *  @param  __n A variable of builtin integral type.
 160:/usr/include/c++/7/ostream ****        *  @return  @c *this if successful
 161:/usr/include/c++/7/ostream ****        *
 162:/usr/include/c++/7/ostream ****        *  These functions use the stream's current locale (specifically, the
 163:/usr/include/c++/7/ostream ****        *  @c num_get facet) to perform numeric formatting.
 164:/usr/include/c++/7/ostream ****       */
 165:/usr/include/c++/7/ostream ****       __ostream_type&
 166:/usr/include/c++/7/ostream ****       operator<<(long __n)
 167:/usr/include/c++/7/ostream ****       { return _M_insert(__n); }
 168:/usr/include/c++/7/ostream **** 
 169:/usr/include/c++/7/ostream ****       __ostream_type&
 170:/usr/include/c++/7/ostream ****       operator<<(unsigned long __n)
 171:/usr/include/c++/7/ostream ****       { return _M_insert(__n); }
 172:/usr/include/c++/7/ostream **** 
 173:/usr/include/c++/7/ostream ****       __ostream_type&
 174:/usr/include/c++/7/ostream ****       operator<<(bool __n)
 175:/usr/include/c++/7/ostream ****       { return _M_insert(__n); }
 176:/usr/include/c++/7/ostream **** 
 177:/usr/include/c++/7/ostream ****       __ostream_type&
 178:/usr/include/c++/7/ostream ****       operator<<(short __n);
 179:/usr/include/c++/7/ostream **** 
 180:/usr/include/c++/7/ostream ****       __ostream_type&
 181:/usr/include/c++/7/ostream ****       operator<<(unsigned short __n)
 182:/usr/include/c++/7/ostream ****       {
 183:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 184:/usr/include/c++/7/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 185:/usr/include/c++/7/ostream **** 	return _M_insert(static_cast<unsigned long>(__n));
 186:/usr/include/c++/7/ostream ****       }
 187:/usr/include/c++/7/ostream **** 
 188:/usr/include/c++/7/ostream ****       __ostream_type&
 189:/usr/include/c++/7/ostream ****       operator<<(int __n);
 190:/usr/include/c++/7/ostream **** 
 191:/usr/include/c++/7/ostream ****       __ostream_type&
 192:/usr/include/c++/7/ostream ****       operator<<(unsigned int __n)
 193:/usr/include/c++/7/ostream ****       {
 194:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 195:/usr/include/c++/7/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 196:/usr/include/c++/7/ostream **** 	return _M_insert(static_cast<unsigned long>(__n));
 197:/usr/include/c++/7/ostream ****       }
 198:/usr/include/c++/7/ostream **** 
 199:/usr/include/c++/7/ostream **** #ifdef _GLIBCXX_USE_LONG_LONG
 200:/usr/include/c++/7/ostream ****       __ostream_type&
 201:/usr/include/c++/7/ostream ****       operator<<(long long __n)
 202:/usr/include/c++/7/ostream ****       { return _M_insert(__n); }
 203:/usr/include/c++/7/ostream **** 
 204:/usr/include/c++/7/ostream ****       __ostream_type&
 205:/usr/include/c++/7/ostream ****       operator<<(unsigned long long __n)
 206:/usr/include/c++/7/ostream ****       { return _M_insert(__n); }
 207:/usr/include/c++/7/ostream **** #endif
 208:/usr/include/c++/7/ostream ****       //@}
 209:/usr/include/c++/7/ostream **** 
 210:/usr/include/c++/7/ostream ****       //@{
 211:/usr/include/c++/7/ostream ****       /**
 212:/usr/include/c++/7/ostream ****        *  @brief  Floating point arithmetic inserters
 213:/usr/include/c++/7/ostream ****        *  @param  __f A variable of builtin floating point type.
 214:/usr/include/c++/7/ostream ****        *  @return  @c *this if successful
 215:/usr/include/c++/7/ostream ****        *
 216:/usr/include/c++/7/ostream ****        *  These functions use the stream's current locale (specifically, the
 217:/usr/include/c++/7/ostream ****        *  @c num_get facet) to perform numeric formatting.
 218:/usr/include/c++/7/ostream ****       */
 219:/usr/include/c++/7/ostream ****       __ostream_type&
 220:/usr/include/c++/7/ostream ****       operator<<(double __f)
 221:/usr/include/c++/7/ostream ****       { return _M_insert(__f); }
 222:/usr/include/c++/7/ostream **** 
 223:/usr/include/c++/7/ostream ****       __ostream_type&
 224:/usr/include/c++/7/ostream ****       operator<<(float __f)
 225:/usr/include/c++/7/ostream ****       {
 226:/usr/include/c++/7/ostream **** 	// _GLIBCXX_RESOLVE_LIB_DEFECTS
 227:/usr/include/c++/7/ostream **** 	// 117. basic_ostream uses nonexistent num_put member functions.
 228:/usr/include/c++/7/ostream **** 	return _M_insert(static_cast<double>(__f));
 229:/usr/include/c++/7/ostream ****       }
 230:/usr/include/c++/7/ostream **** 
 231:/usr/include/c++/7/ostream ****       __ostream_type&
 232:/usr/include/c++/7/ostream ****       operator<<(long double __f)
 233:/usr/include/c++/7/ostream ****       { return _M_insert(__f); }
 234:/usr/include/c++/7/ostream ****       //@}
 235:/usr/include/c++/7/ostream **** 
 236:/usr/include/c++/7/ostream ****       /**
 237:/usr/include/c++/7/ostream ****        *  @brief  Pointer arithmetic inserters
 238:/usr/include/c++/7/ostream ****        *  @param  __p A variable of pointer type.
 239:/usr/include/c++/7/ostream ****        *  @return  @c *this if successful
 240:/usr/include/c++/7/ostream ****        *
 241:/usr/include/c++/7/ostream ****        *  These functions use the stream's current locale (specifically, the
 242:/usr/include/c++/7/ostream ****        *  @c num_get facet) to perform numeric formatting.
 243:/usr/include/c++/7/ostream ****       */
 244:/usr/include/c++/7/ostream ****       __ostream_type&
 245:/usr/include/c++/7/ostream ****       operator<<(const void* __p)
 246:/usr/include/c++/7/ostream ****       { return _M_insert(__p); }
 247:/usr/include/c++/7/ostream **** 
 248:/usr/include/c++/7/ostream ****       /**
 249:/usr/include/c++/7/ostream ****        *  @brief  Extracting from another streambuf.
 250:/usr/include/c++/7/ostream ****        *  @param  __sb  A pointer to a streambuf
 251:/usr/include/c++/7/ostream ****        *
 252:/usr/include/c++/7/ostream ****        *  This function behaves like one of the basic arithmetic extractors,
 253:/usr/include/c++/7/ostream ****        *  in that it also constructs a sentry object and has the same error
 254:/usr/include/c++/7/ostream ****        *  handling behavior.
 255:/usr/include/c++/7/ostream ****        *
 256:/usr/include/c++/7/ostream ****        *  If @p __sb is NULL, the stream will set failbit in its error state.
 257:/usr/include/c++/7/ostream ****        *
 258:/usr/include/c++/7/ostream ****        *  Characters are extracted from @p __sb and inserted into @c *this
 259:/usr/include/c++/7/ostream ****        *  until one of the following occurs:
 260:/usr/include/c++/7/ostream ****        *
 261:/usr/include/c++/7/ostream ****        *  - the input stream reaches end-of-file,
 262:/usr/include/c++/7/ostream ****        *  - insertion into the output sequence fails (in this case, the
 263:/usr/include/c++/7/ostream ****        *    character that would have been inserted is not extracted), or
 264:/usr/include/c++/7/ostream ****        *  - an exception occurs while getting a character from @p __sb, which
 265:/usr/include/c++/7/ostream ****        *    sets failbit in the error state
 266:/usr/include/c++/7/ostream ****        *
 267:/usr/include/c++/7/ostream ****        *  If the function inserts no characters, failbit is set.
 268:/usr/include/c++/7/ostream ****       */
 269:/usr/include/c++/7/ostream ****       __ostream_type&
 270:/usr/include/c++/7/ostream ****       operator<<(__streambuf_type* __sb);
 271:/usr/include/c++/7/ostream ****       //@}
 272:/usr/include/c++/7/ostream **** 
 273:/usr/include/c++/7/ostream ****       //@{
 274:/usr/include/c++/7/ostream ****       /**
 275:/usr/include/c++/7/ostream ****        *  @name Unformatted Output Functions
 276:/usr/include/c++/7/ostream ****        *
 277:/usr/include/c++/7/ostream ****        *  All the unformatted output functions have some common behavior.
 278:/usr/include/c++/7/ostream ****        *  Each starts by constructing a temporary object of type
 279:/usr/include/c++/7/ostream ****        *  std::basic_ostream::sentry.  This has several effects, concluding
 280:/usr/include/c++/7/ostream ****        *  with the setting of a status flag; see the sentry documentation
 281:/usr/include/c++/7/ostream ****        *  for more.
 282:/usr/include/c++/7/ostream ****        *
 283:/usr/include/c++/7/ostream ****        *  If the sentry status is good, the function tries to generate
 284:/usr/include/c++/7/ostream ****        *  whatever data is appropriate for the type of the argument.
 285:/usr/include/c++/7/ostream ****        *
 286:/usr/include/c++/7/ostream ****        *  If an exception is thrown during insertion, ios_base::badbit
 287:/usr/include/c++/7/ostream ****        *  will be turned on in the stream's error state.  If badbit is on in
 288:/usr/include/c++/7/ostream ****        *  the stream's exceptions mask, the exception will be rethrown
 289:/usr/include/c++/7/ostream ****        *  without completing its actions.
 290:/usr/include/c++/7/ostream ****       */
 291:/usr/include/c++/7/ostream **** 
 292:/usr/include/c++/7/ostream ****       /**
 293:/usr/include/c++/7/ostream ****        *  @brief  Simple insertion.
 294:/usr/include/c++/7/ostream ****        *  @param  __c  The character to insert.
 295:/usr/include/c++/7/ostream ****        *  @return  *this
 296:/usr/include/c++/7/ostream ****        *
 297:/usr/include/c++/7/ostream ****        *  Tries to insert @p __c.
 298:/usr/include/c++/7/ostream ****        *
 299:/usr/include/c++/7/ostream ****        *  @note  This function is not overloaded on signed char and
 300:/usr/include/c++/7/ostream ****        *         unsigned char.
 301:/usr/include/c++/7/ostream ****       */
 302:/usr/include/c++/7/ostream ****       __ostream_type&
 303:/usr/include/c++/7/ostream ****       put(char_type __c);
 304:/usr/include/c++/7/ostream **** 
 305:/usr/include/c++/7/ostream ****       /**
 306:/usr/include/c++/7/ostream ****        *  @brief  Core write functionality, without sentry.
 307:/usr/include/c++/7/ostream ****        *  @param  __s  The array to insert.
 308:/usr/include/c++/7/ostream ****        *  @param  __n  Maximum number of characters to insert.
 309:/usr/include/c++/7/ostream ****       */
 310:/usr/include/c++/7/ostream ****       void
 311:/usr/include/c++/7/ostream ****       _M_write(const char_type* __s, streamsize __n)
 312:/usr/include/c++/7/ostream ****       {
 313:/usr/include/c++/7/ostream **** 	const streamsize __put = this->rdbuf()->sputn(__s, __n);
 314:/usr/include/c++/7/ostream **** 	if (__put != __n)
 315:/usr/include/c++/7/ostream **** 	  this->setstate(ios_base::badbit);
 316:/usr/include/c++/7/ostream ****       }
 317:/usr/include/c++/7/ostream **** 
 318:/usr/include/c++/7/ostream ****       /**
 319:/usr/include/c++/7/ostream ****        *  @brief  Character string insertion.
 320:/usr/include/c++/7/ostream ****        *  @param  __s  The array to insert.
 321:/usr/include/c++/7/ostream ****        *  @param  __n  Maximum number of characters to insert.
 322:/usr/include/c++/7/ostream ****        *  @return  *this
 323:/usr/include/c++/7/ostream ****        *
 324:/usr/include/c++/7/ostream ****        *  Characters are copied from @p __s and inserted into the stream until
 325:/usr/include/c++/7/ostream ****        *  one of the following happens:
 326:/usr/include/c++/7/ostream ****        *
 327:/usr/include/c++/7/ostream ****        *  - @p __n characters are inserted
 328:/usr/include/c++/7/ostream ****        *  - inserting into the output sequence fails (in this case, badbit
 329:/usr/include/c++/7/ostream ****        *    will be set in the stream's error state)
 330:/usr/include/c++/7/ostream ****        *
 331:/usr/include/c++/7/ostream ****        *  @note  This function is not overloaded on signed char and
 332:/usr/include/c++/7/ostream ****        *         unsigned char.
 333:/usr/include/c++/7/ostream ****       */
 334:/usr/include/c++/7/ostream ****       __ostream_type&
 335:/usr/include/c++/7/ostream ****       write(const char_type* __s, streamsize __n);
 336:/usr/include/c++/7/ostream ****       //@}
 337:/usr/include/c++/7/ostream **** 
 338:/usr/include/c++/7/ostream ****       /**
 339:/usr/include/c++/7/ostream ****        *  @brief  Synchronizing the stream buffer.
 340:/usr/include/c++/7/ostream ****        *  @return  *this
 341:/usr/include/c++/7/ostream ****        *
 342:/usr/include/c++/7/ostream ****        *  If @c rdbuf() is a null pointer, changes nothing.
 343:/usr/include/c++/7/ostream ****        *
 344:/usr/include/c++/7/ostream ****        *  Otherwise, calls @c rdbuf()->pubsync(), and if that returns -1,
 345:/usr/include/c++/7/ostream ****        *  sets badbit.
 346:/usr/include/c++/7/ostream ****       */
 347:/usr/include/c++/7/ostream ****       __ostream_type&
 348:/usr/include/c++/7/ostream ****       flush();
 349:/usr/include/c++/7/ostream **** 
 350:/usr/include/c++/7/ostream ****       /**
 351:/usr/include/c++/7/ostream ****        *  @brief  Getting the current write position.
 352:/usr/include/c++/7/ostream ****        *  @return  A file position object.
 353:/usr/include/c++/7/ostream ****        *
 354:/usr/include/c++/7/ostream ****        *  If @c fail() is not false, returns @c pos_type(-1) to indicate
 355:/usr/include/c++/7/ostream ****        *  failure.  Otherwise returns @c rdbuf()->pubseekoff(0,cur,out).
 356:/usr/include/c++/7/ostream ****       */
 357:/usr/include/c++/7/ostream ****       pos_type
 358:/usr/include/c++/7/ostream ****       tellp();
 359:/usr/include/c++/7/ostream **** 
 360:/usr/include/c++/7/ostream ****       /**
 361:/usr/include/c++/7/ostream ****        *  @brief  Changing the current write position.
 362:/usr/include/c++/7/ostream ****        *  @param  __pos  A file position object.
 363:/usr/include/c++/7/ostream ****        *  @return  *this
 364:/usr/include/c++/7/ostream ****        *
 365:/usr/include/c++/7/ostream ****        *  If @c fail() is not true, calls @c rdbuf()->pubseekpos(pos).  If
 366:/usr/include/c++/7/ostream ****        *  that function fails, sets failbit.
 367:/usr/include/c++/7/ostream ****       */
 368:/usr/include/c++/7/ostream ****       __ostream_type&
 369:/usr/include/c++/7/ostream ****       seekp(pos_type);
 370:/usr/include/c++/7/ostream **** 
 371:/usr/include/c++/7/ostream ****       /**
 372:/usr/include/c++/7/ostream ****        *  @brief  Changing the current write position.
 373:/usr/include/c++/7/ostream ****        *  @param  __off  A file offset object.
 374:/usr/include/c++/7/ostream ****        *  @param  __dir  The direction in which to seek.
 375:/usr/include/c++/7/ostream ****        *  @return  *this
 376:/usr/include/c++/7/ostream ****        *
 377:/usr/include/c++/7/ostream ****        *  If @c fail() is not true, calls @c rdbuf()->pubseekoff(off,dir).
 378:/usr/include/c++/7/ostream ****        *  If that function fails, sets failbit.
 379:/usr/include/c++/7/ostream ****       */
 380:/usr/include/c++/7/ostream ****        __ostream_type&
 381:/usr/include/c++/7/ostream ****       seekp(off_type, ios_base::seekdir);
 382:/usr/include/c++/7/ostream **** 
 383:/usr/include/c++/7/ostream ****     protected:
 384:/usr/include/c++/7/ostream ****       basic_ostream()
 385:/usr/include/c++/7/ostream ****       { this->init(0); }
 386:/usr/include/c++/7/ostream **** 
 387:/usr/include/c++/7/ostream **** #if __cplusplus >= 201103L
 388:/usr/include/c++/7/ostream ****       // Non-standard constructor that does not call init()
 389:/usr/include/c++/7/ostream ****       basic_ostream(basic_iostream<_CharT, _Traits>&) { }
 390:/usr/include/c++/7/ostream **** 
 391:/usr/include/c++/7/ostream ****       basic_ostream(const basic_ostream&) = delete;
 392:/usr/include/c++/7/ostream **** 
 393:/usr/include/c++/7/ostream ****       basic_ostream(basic_ostream&& __rhs)
 394:/usr/include/c++/7/ostream ****       : __ios_type()
 395:/usr/include/c++/7/ostream ****       { __ios_type::move(__rhs); }
 396:/usr/include/c++/7/ostream **** 
 397:/usr/include/c++/7/ostream ****       // 27.7.3.3 Assign/swap
 398:/usr/include/c++/7/ostream **** 
 399:/usr/include/c++/7/ostream ****       basic_ostream& operator=(const basic_ostream&) = delete;
 400:/usr/include/c++/7/ostream **** 
 401:/usr/include/c++/7/ostream ****       basic_ostream&
 402:/usr/include/c++/7/ostream ****       operator=(basic_ostream&& __rhs)
 403:/usr/include/c++/7/ostream ****       {
 404:/usr/include/c++/7/ostream **** 	swap(__rhs);
 405:/usr/include/c++/7/ostream **** 	return *this;
 406:/usr/include/c++/7/ostream ****       }
 407:/usr/include/c++/7/ostream **** 
 408:/usr/include/c++/7/ostream ****       void
 409:/usr/include/c++/7/ostream ****       swap(basic_ostream& __rhs)
 410:/usr/include/c++/7/ostream ****       { __ios_type::swap(__rhs); }
 411:/usr/include/c++/7/ostream **** #endif
 412:/usr/include/c++/7/ostream **** 
 413:/usr/include/c++/7/ostream ****       template<typename _ValueT>
 414:/usr/include/c++/7/ostream **** 	__ostream_type&
 415:/usr/include/c++/7/ostream **** 	_M_insert(_ValueT __v);
 416:/usr/include/c++/7/ostream ****     };
 417:/usr/include/c++/7/ostream **** 
 418:/usr/include/c++/7/ostream ****   /**
 419:/usr/include/c++/7/ostream ****    *  @brief  Performs setup work for output streams.
 420:/usr/include/c++/7/ostream ****    *
 421:/usr/include/c++/7/ostream ****    *  Objects of this class are created before all of the standard
 422:/usr/include/c++/7/ostream ****    *  inserters are run.  It is responsible for <em>exception-safe prefix and
 423:/usr/include/c++/7/ostream ****    *  suffix operations</em>.
 424:/usr/include/c++/7/ostream ****   */
 425:/usr/include/c++/7/ostream ****   template <typename _CharT, typename _Traits>
 426:/usr/include/c++/7/ostream ****     class basic_ostream<_CharT, _Traits>::sentry
 427:/usr/include/c++/7/ostream ****     {
 428:/usr/include/c++/7/ostream ****       // Data Members.
 429:/usr/include/c++/7/ostream ****       bool 				_M_ok;
 430:/usr/include/c++/7/ostream ****       basic_ostream<_CharT, _Traits>& 	_M_os;
 431:/usr/include/c++/7/ostream **** 
 432:/usr/include/c++/7/ostream ****     public:
 433:/usr/include/c++/7/ostream ****       /**
 434:/usr/include/c++/7/ostream ****        *  @brief  The constructor performs preparatory work.
 435:/usr/include/c++/7/ostream ****        *  @param  __os  The output stream to guard.
 436:/usr/include/c++/7/ostream ****        *
 437:/usr/include/c++/7/ostream ****        *  If the stream state is good (@a __os.good() is true), then if the
 438:/usr/include/c++/7/ostream ****        *  stream is tied to another output stream, @c is.tie()->flush()
 439:/usr/include/c++/7/ostream ****        *  is called to synchronize the output sequences.
 440:/usr/include/c++/7/ostream ****        *
 441:/usr/include/c++/7/ostream ****        *  If the stream state is still good, then the sentry state becomes
 442:/usr/include/c++/7/ostream ****        *  true (@a okay).
 443:/usr/include/c++/7/ostream ****       */
 444:/usr/include/c++/7/ostream ****       explicit
 445:/usr/include/c++/7/ostream ****       sentry(basic_ostream<_CharT, _Traits>& __os);
 446:/usr/include/c++/7/ostream **** 
 447:/usr/include/c++/7/ostream ****       /**
 448:/usr/include/c++/7/ostream ****        *  @brief  Possibly flushes the stream.
 449:/usr/include/c++/7/ostream ****        *
 450:/usr/include/c++/7/ostream ****        *  If @c ios_base::unitbuf is set in @c os.flags(), and
 451:/usr/include/c++/7/ostream ****        *  @c std::uncaught_exception() is true, the sentry destructor calls
 452:/usr/include/c++/7/ostream ****        *  @c flush() on the output stream.
 453:/usr/include/c++/7/ostream ****       */
 454:/usr/include/c++/7/ostream ****       ~sentry()
 455:/usr/include/c++/7/ostream ****       {
 456:/usr/include/c++/7/ostream **** 	// XXX MT
 457:/usr/include/c++/7/ostream **** 	if (bool(_M_os.flags() & ios_base::unitbuf) && !uncaught_exception())
 458:/usr/include/c++/7/ostream **** 	  {
 459:/usr/include/c++/7/ostream **** 	    // Can't call flush directly or else will get into recursive lock.
 460:/usr/include/c++/7/ostream **** 	    if (_M_os.rdbuf() && _M_os.rdbuf()->pubsync() == -1)
 461:/usr/include/c++/7/ostream **** 	      _M_os.setstate(ios_base::badbit);
 462:/usr/include/c++/7/ostream **** 	  }
 463:/usr/include/c++/7/ostream ****       }
 464:/usr/include/c++/7/ostream **** 
 465:/usr/include/c++/7/ostream ****       /**
 466:/usr/include/c++/7/ostream ****        *  @brief  Quick status checking.
 467:/usr/include/c++/7/ostream ****        *  @return  The sentry state.
 468:/usr/include/c++/7/ostream ****        *
 469:/usr/include/c++/7/ostream ****        *  For ease of use, sentries may be converted to booleans.  The
 470:/usr/include/c++/7/ostream ****        *  return value is that of the sentry state (true == okay).
 471:/usr/include/c++/7/ostream ****       */
 472:/usr/include/c++/7/ostream **** #if __cplusplus >= 201103L
 473:/usr/include/c++/7/ostream ****       explicit
 474:/usr/include/c++/7/ostream **** #endif
 475:/usr/include/c++/7/ostream ****       operator bool() const
 476:/usr/include/c++/7/ostream ****       { return _M_ok; }
 477:/usr/include/c++/7/ostream ****     };
 478:/usr/include/c++/7/ostream **** 
 479:/usr/include/c++/7/ostream ****   //@{
 480:/usr/include/c++/7/ostream ****   /**
 481:/usr/include/c++/7/ostream ****    *  @brief  Character inserters
 482:/usr/include/c++/7/ostream ****    *  @param  __out  An output stream.
 483:/usr/include/c++/7/ostream ****    *  @param  __c  A character.
 484:/usr/include/c++/7/ostream ****    *  @return  out
 485:/usr/include/c++/7/ostream ****    *
 486:/usr/include/c++/7/ostream ****    *  Behaves like one of the formatted arithmetic inserters described in
 487:/usr/include/c++/7/ostream ****    *  std::basic_ostream.  After constructing a sentry object with good
 488:/usr/include/c++/7/ostream ****    *  status, this function inserts a single character and any required
 489:/usr/include/c++/7/ostream ****    *  padding (as determined by [22.2.2.2.2]).  @c __out.width(0) is then
 490:/usr/include/c++/7/ostream ****    *  called.
 491:/usr/include/c++/7/ostream ****    *
 492:/usr/include/c++/7/ostream ****    *  If @p __c is of type @c char and the character type of the stream is not
 493:/usr/include/c++/7/ostream ****    *  @c char, the character is widened before insertion.
 494:/usr/include/c++/7/ostream ****   */
 495:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 496:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 497:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, _CharT __c)
 498:/usr/include/c++/7/ostream ****     { return __ostream_insert(__out, &__c, 1); }
 499:/usr/include/c++/7/ostream **** 
 500:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 501:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 502:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, char __c)
 503:/usr/include/c++/7/ostream ****     { return (__out << __out.widen(__c)); }
 504:/usr/include/c++/7/ostream **** 
 505:/usr/include/c++/7/ostream ****   // Specialization
 506:/usr/include/c++/7/ostream ****   template <class _Traits>
 507:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits>&
 508:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, char __c)
 509:/usr/include/c++/7/ostream ****     { return __ostream_insert(__out, &__c, 1); }
 510:/usr/include/c++/7/ostream **** 
 511:/usr/include/c++/7/ostream ****   // Signed and unsigned
 512:/usr/include/c++/7/ostream ****   template<class _Traits>
 513:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits>&
 514:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, signed char __c)
 515:/usr/include/c++/7/ostream ****     { return (__out << static_cast<char>(__c)); }
 516:/usr/include/c++/7/ostream **** 
 517:/usr/include/c++/7/ostream ****   template<class _Traits>
 518:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits>&
 519:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, unsigned char __c)
 520:/usr/include/c++/7/ostream ****     { return (__out << static_cast<char>(__c)); }
 521:/usr/include/c++/7/ostream ****   //@}
 522:/usr/include/c++/7/ostream **** 
 523:/usr/include/c++/7/ostream ****   //@{
 524:/usr/include/c++/7/ostream ****   /**
 525:/usr/include/c++/7/ostream ****    *  @brief  String inserters
 526:/usr/include/c++/7/ostream ****    *  @param  __out  An output stream.
 527:/usr/include/c++/7/ostream ****    *  @param  __s  A character string.
 528:/usr/include/c++/7/ostream ****    *  @return  out
 529:/usr/include/c++/7/ostream ****    *  @pre  @p __s must be a non-NULL pointer
 530:/usr/include/c++/7/ostream ****    *
 531:/usr/include/c++/7/ostream ****    *  Behaves like one of the formatted arithmetic inserters described in
 532:/usr/include/c++/7/ostream ****    *  std::basic_ostream.  After constructing a sentry object with good
 533:/usr/include/c++/7/ostream ****    *  status, this function inserts @c traits::length(__s) characters starting
 534:/usr/include/c++/7/ostream ****    *  at @p __s, widened if necessary, followed by any required padding (as
 535:/usr/include/c++/7/ostream ****    *  determined by [22.2.2.2.2]).  @c __out.width(0) is then called.
 536:/usr/include/c++/7/ostream ****   */
 537:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 538:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 539:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, const _CharT* __s)
 540:/usr/include/c++/7/ostream ****     {
 541:/usr/include/c++/7/ostream ****       if (!__s)
 542:/usr/include/c++/7/ostream **** 	__out.setstate(ios_base::badbit);
 543:/usr/include/c++/7/ostream ****       else
 544:/usr/include/c++/7/ostream **** 	__ostream_insert(__out, __s,
 545:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 546:/usr/include/c++/7/ostream ****       return __out;
 547:/usr/include/c++/7/ostream ****     }
 548:/usr/include/c++/7/ostream **** 
 549:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 550:/usr/include/c++/7/ostream ****     basic_ostream<_CharT, _Traits> &
 551:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<_CharT, _Traits>& __out, const char* __s);
 552:/usr/include/c++/7/ostream **** 
 553:/usr/include/c++/7/ostream ****   // Partial specializations
 554:/usr/include/c++/7/ostream ****   template<class _Traits>
 555:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits>&
 556:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const char* __s)
 557:/usr/include/c++/7/ostream ****     {
 558:/usr/include/c++/7/ostream ****       if (!__s)
 559:/usr/include/c++/7/ostream **** 	__out.setstate(ios_base::badbit);
 560:/usr/include/c++/7/ostream ****       else
 561:/usr/include/c++/7/ostream **** 	__ostream_insert(__out, __s,
  49              		.loc 3 561 0
  50 0002 488D3500 		leaq	.LC0(%rip), %rsi
  50      000000
  51 0009 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
  51      000000
  52 0010 BA100000 		movl	$16, %edx
  52      00
  53              	.LBE523:
  54              	.LBE522:
  55              		.loc 2 80 0
  56 0015 4883EC18 		subq	$24, %rsp
  57              		.cfi_def_cfa_offset 48
  58              		.loc 2 80 0
  59 0019 F20F114C 		movsd	%xmm1, 8(%rsp)
  59      2408
  60 001f F20F1104 		movsd	%xmm0, (%rsp)
  60      24
  61              	.LBB525:
  62              	.LBB524:
  63              		.loc 3 561 0
  64 0024 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
  64      00
  65              	.LVL2:
  66              	.LBE524:
  67              	.LBE525:
  81:main.cpp      ****     cout << "ELAPSED TIME:   " << time/1000    << "s" << endl;
  68              		.loc 2 81 0
  69 0029 F20F1004 		movsd	(%rsp), %xmm0
  69      24
  70              	.LBB526:
  71              	.LBB527:
 221:/usr/include/c++/7/ostream **** 
  72              		.loc 3 221 0
  73 002e 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
  73      000000
  74              	.LBE527:
  75              	.LBE526:
  76              		.loc 2 81 0
  77 0035 F20F5E05 		divsd	.LC1(%rip), %xmm0
  77      00000000 
  78              	.LVL3:
  79              	.LBB530:
  80              	.LBB528:
 221:/usr/include/c++/7/ostream **** 
  81              		.loc 3 221 0
  82 003d E8000000 		call	_ZNSo9_M_insertIdEERSoT_@PLT
  82      00
  83              	.LVL4:
  84              	.LBE528:
  85              	.LBE530:
  86              	.LBB531:
  87              	.LBB532:
  88              		.loc 3 561 0
  89 0042 488D3500 		leaq	.LC2(%rip), %rsi
  89      000000
  90              	.LBE532:
  91              	.LBE531:
  92              	.LBB534:
  93              	.LBB529:
 221:/usr/include/c++/7/ostream **** 
  94              		.loc 3 221 0
  95 0049 4889C3   		movq	%rax, %rbx
  96              	.LVL5:
  97              	.LBE529:
  98              	.LBE534:
  99              	.LBB535:
 100              	.LBB533:
 101              		.loc 3 561 0
 102 004c BA010000 		movl	$1, %edx
 102      00
 103 0051 4889C7   		movq	%rax, %rdi
 104 0054 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 104      00
 105              	.LVL6:
 106              	.LBE533:
 107              	.LBE535:
 108              	.LBB536:
 109              	.LBB537:
 110              	.LBB538:
 562:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 563:/usr/include/c++/7/ostream ****       return __out;
 564:/usr/include/c++/7/ostream ****     }
 565:/usr/include/c++/7/ostream **** 
 566:/usr/include/c++/7/ostream ****   // Signed and unsigned
 567:/usr/include/c++/7/ostream ****   template<class _Traits>
 568:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits>&
 569:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const signed char* __s)
 570:/usr/include/c++/7/ostream ****     { return (__out << reinterpret_cast<const char*>(__s)); }
 571:/usr/include/c++/7/ostream **** 
 572:/usr/include/c++/7/ostream ****   template<class _Traits>
 573:/usr/include/c++/7/ostream ****     inline basic_ostream<char, _Traits> &
 574:/usr/include/c++/7/ostream ****     operator<<(basic_ostream<char, _Traits>& __out, const unsigned char* __s)
 575:/usr/include/c++/7/ostream ****     { return (__out << reinterpret_cast<const char*>(__s)); }
 576:/usr/include/c++/7/ostream ****   //@}
 577:/usr/include/c++/7/ostream **** 
 578:/usr/include/c++/7/ostream ****   // Standard basic_ostream manipulators
 579:/usr/include/c++/7/ostream **** 
 580:/usr/include/c++/7/ostream ****   /**
 581:/usr/include/c++/7/ostream ****    *  @brief  Write a newline and flush the stream.
 582:/usr/include/c++/7/ostream ****    *
 583:/usr/include/c++/7/ostream ****    *  This manipulator is often mistakenly used when a simple newline is
 584:/usr/include/c++/7/ostream ****    *  desired, leading to poor buffering performance.  See
 585:/usr/include/c++/7/ostream ****    *  https://gcc.gnu.org/onlinedocs/libstdc++/manual/streambufs.html#io.streambuf.buffering
 586:/usr/include/c++/7/ostream ****    *  for more on this subject.
 587:/usr/include/c++/7/ostream ****   */
 588:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 589:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 590:/usr/include/c++/7/ostream ****     endl(basic_ostream<_CharT, _Traits>& __os)
 591:/usr/include/c++/7/ostream ****     { return flush(__os.put(__os.widen('\n'))); }
 111              		.loc 3 591 0
 112 0059 488B03   		movq	(%rbx), %rax
 113              	.LBB539:
 114              	.LBB540:
 115              		.file 4 "/usr/include/c++/7/bits/basic_ios.h"
   1:/usr/include/c++/7/bits/basic_ios.h **** // Iostreams base classes -*- C++ -*-
   2:/usr/include/c++/7/bits/basic_ios.h **** 
   3:/usr/include/c++/7/bits/basic_ios.h **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/basic_ios.h **** //
   5:/usr/include/c++/7/bits/basic_ios.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/basic_ios.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/basic_ios.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/basic_ios.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/basic_ios.h **** // any later version.
  10:/usr/include/c++/7/bits/basic_ios.h **** 
  11:/usr/include/c++/7/bits/basic_ios.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/basic_ios.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/basic_ios.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/basic_ios.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/basic_ios.h **** 
  16:/usr/include/c++/7/bits/basic_ios.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/basic_ios.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/basic_ios.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/basic_ios.h **** 
  20:/usr/include/c++/7/bits/basic_ios.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/basic_ios.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/basic_ios.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/basic_ios.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/basic_ios.h **** 
  25:/usr/include/c++/7/bits/basic_ios.h **** /** @file bits/basic_ios.h
  26:/usr/include/c++/7/bits/basic_ios.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/basic_ios.h ****  *  Do not attempt to use it directly. @headername{ios}
  28:/usr/include/c++/7/bits/basic_ios.h ****  */
  29:/usr/include/c++/7/bits/basic_ios.h **** 
  30:/usr/include/c++/7/bits/basic_ios.h **** #ifndef _BASIC_IOS_H
  31:/usr/include/c++/7/bits/basic_ios.h **** #define _BASIC_IOS_H 1
  32:/usr/include/c++/7/bits/basic_ios.h **** 
  33:/usr/include/c++/7/bits/basic_ios.h **** #pragma GCC system_header
  34:/usr/include/c++/7/bits/basic_ios.h **** 
  35:/usr/include/c++/7/bits/basic_ios.h **** #include <bits/localefwd.h>
  36:/usr/include/c++/7/bits/basic_ios.h **** #include <bits/locale_classes.h>
  37:/usr/include/c++/7/bits/basic_ios.h **** #include <bits/locale_facets.h>
  38:/usr/include/c++/7/bits/basic_ios.h **** #include <bits/streambuf_iterator.h>
  39:/usr/include/c++/7/bits/basic_ios.h **** #include <bits/move.h>
  40:/usr/include/c++/7/bits/basic_ios.h **** 
  41:/usr/include/c++/7/bits/basic_ios.h **** namespace std _GLIBCXX_VISIBILITY(default)
  42:/usr/include/c++/7/bits/basic_ios.h **** {
  43:/usr/include/c++/7/bits/basic_ios.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  44:/usr/include/c++/7/bits/basic_ios.h **** 
  45:/usr/include/c++/7/bits/basic_ios.h ****   template<typename _Facet>
  46:/usr/include/c++/7/bits/basic_ios.h ****     inline const _Facet&
  47:/usr/include/c++/7/bits/basic_ios.h ****     __check_facet(const _Facet* __f)
  48:/usr/include/c++/7/bits/basic_ios.h ****     {
  49:/usr/include/c++/7/bits/basic_ios.h ****       if (!__f)
  50:/usr/include/c++/7/bits/basic_ios.h **** 	__throw_bad_cast();
  51:/usr/include/c++/7/bits/basic_ios.h ****       return *__f;
  52:/usr/include/c++/7/bits/basic_ios.h ****     }
  53:/usr/include/c++/7/bits/basic_ios.h **** 
  54:/usr/include/c++/7/bits/basic_ios.h ****   /**
  55:/usr/include/c++/7/bits/basic_ios.h ****    *  @brief Template class basic_ios, virtual base class for all
  56:/usr/include/c++/7/bits/basic_ios.h ****    *  stream classes. 
  57:/usr/include/c++/7/bits/basic_ios.h ****    *  @ingroup io
  58:/usr/include/c++/7/bits/basic_ios.h ****    *
  59:/usr/include/c++/7/bits/basic_ios.h ****    *  @tparam _CharT  Type of character stream.
  60:/usr/include/c++/7/bits/basic_ios.h ****    *  @tparam _Traits  Traits for character type, defaults to
  61:/usr/include/c++/7/bits/basic_ios.h ****    *                   char_traits<_CharT>.
  62:/usr/include/c++/7/bits/basic_ios.h ****    *
  63:/usr/include/c++/7/bits/basic_ios.h ****    *  Most of the member functions called dispatched on stream objects
  64:/usr/include/c++/7/bits/basic_ios.h ****    *  (e.g., @c std::cout.foo(bar);) are consolidated in this class.
  65:/usr/include/c++/7/bits/basic_ios.h ****   */
  66:/usr/include/c++/7/bits/basic_ios.h ****   template<typename _CharT, typename _Traits>
  67:/usr/include/c++/7/bits/basic_ios.h ****     class basic_ios : public ios_base
  68:/usr/include/c++/7/bits/basic_ios.h ****     {
  69:/usr/include/c++/7/bits/basic_ios.h ****     public:
  70:/usr/include/c++/7/bits/basic_ios.h ****       //@{
  71:/usr/include/c++/7/bits/basic_ios.h ****       /**
  72:/usr/include/c++/7/bits/basic_ios.h ****        *  These are standard types.  They permit a standardized way of
  73:/usr/include/c++/7/bits/basic_ios.h ****        *  referring to names of (or names dependent on) the template
  74:/usr/include/c++/7/bits/basic_ios.h ****        *  parameters, which are specific to the implementation.
  75:/usr/include/c++/7/bits/basic_ios.h ****       */
  76:/usr/include/c++/7/bits/basic_ios.h ****       typedef _CharT                                 char_type;
  77:/usr/include/c++/7/bits/basic_ios.h ****       typedef typename _Traits::int_type             int_type;
  78:/usr/include/c++/7/bits/basic_ios.h ****       typedef typename _Traits::pos_type             pos_type;
  79:/usr/include/c++/7/bits/basic_ios.h ****       typedef typename _Traits::off_type             off_type;
  80:/usr/include/c++/7/bits/basic_ios.h ****       typedef _Traits                                traits_type;
  81:/usr/include/c++/7/bits/basic_ios.h ****       //@}
  82:/usr/include/c++/7/bits/basic_ios.h **** 
  83:/usr/include/c++/7/bits/basic_ios.h ****       //@{
  84:/usr/include/c++/7/bits/basic_ios.h ****       /**
  85:/usr/include/c++/7/bits/basic_ios.h ****        *  These are non-standard types.
  86:/usr/include/c++/7/bits/basic_ios.h ****       */
  87:/usr/include/c++/7/bits/basic_ios.h ****       typedef ctype<_CharT>                          __ctype_type;
  88:/usr/include/c++/7/bits/basic_ios.h ****       typedef num_put<_CharT, ostreambuf_iterator<_CharT, _Traits> >
  89:/usr/include/c++/7/bits/basic_ios.h **** 						     __num_put_type;
  90:/usr/include/c++/7/bits/basic_ios.h ****       typedef num_get<_CharT, istreambuf_iterator<_CharT, _Traits> >
  91:/usr/include/c++/7/bits/basic_ios.h **** 						     __num_get_type;
  92:/usr/include/c++/7/bits/basic_ios.h ****       //@}
  93:/usr/include/c++/7/bits/basic_ios.h **** 
  94:/usr/include/c++/7/bits/basic_ios.h ****       // Data members:
  95:/usr/include/c++/7/bits/basic_ios.h ****     protected:
  96:/usr/include/c++/7/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*                _M_tie;
  97:/usr/include/c++/7/bits/basic_ios.h ****       mutable char_type                              _M_fill;
  98:/usr/include/c++/7/bits/basic_ios.h ****       mutable bool                                   _M_fill_init;
  99:/usr/include/c++/7/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*              _M_streambuf;
 100:/usr/include/c++/7/bits/basic_ios.h **** 
 101:/usr/include/c++/7/bits/basic_ios.h ****       // Cached use_facet<ctype>, which is based on the current locale info.
 102:/usr/include/c++/7/bits/basic_ios.h ****       const __ctype_type*                            _M_ctype;
 103:/usr/include/c++/7/bits/basic_ios.h ****       // For ostream.
 104:/usr/include/c++/7/bits/basic_ios.h ****       const __num_put_type*                          _M_num_put;
 105:/usr/include/c++/7/bits/basic_ios.h ****       // For istream.
 106:/usr/include/c++/7/bits/basic_ios.h ****       const __num_get_type*                          _M_num_get;
 107:/usr/include/c++/7/bits/basic_ios.h **** 
 108:/usr/include/c++/7/bits/basic_ios.h ****     public:
 109:/usr/include/c++/7/bits/basic_ios.h ****       //@{
 110:/usr/include/c++/7/bits/basic_ios.h ****       /**
 111:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  The quick-and-easy status check.
 112:/usr/include/c++/7/bits/basic_ios.h ****        *
 113:/usr/include/c++/7/bits/basic_ios.h ****        *  This allows you to write constructs such as
 114:/usr/include/c++/7/bits/basic_ios.h ****        *  <code>if (!a_stream) ...</code> and <code>while (a_stream) ...</code>
 115:/usr/include/c++/7/bits/basic_ios.h ****       */
 116:/usr/include/c++/7/bits/basic_ios.h **** #if __cplusplus >= 201103L
 117:/usr/include/c++/7/bits/basic_ios.h ****       explicit operator bool() const
 118:/usr/include/c++/7/bits/basic_ios.h ****       { return !this->fail(); }
 119:/usr/include/c++/7/bits/basic_ios.h **** #else
 120:/usr/include/c++/7/bits/basic_ios.h ****       operator void*() const
 121:/usr/include/c++/7/bits/basic_ios.h ****       { return this->fail() ? 0 : const_cast<basic_ios*>(this); }
 122:/usr/include/c++/7/bits/basic_ios.h **** #endif
 123:/usr/include/c++/7/bits/basic_ios.h **** 
 124:/usr/include/c++/7/bits/basic_ios.h ****       bool
 125:/usr/include/c++/7/bits/basic_ios.h ****       operator!() const
 126:/usr/include/c++/7/bits/basic_ios.h ****       { return this->fail(); }
 127:/usr/include/c++/7/bits/basic_ios.h ****       //@}
 128:/usr/include/c++/7/bits/basic_ios.h **** 
 129:/usr/include/c++/7/bits/basic_ios.h ****       /**
 130:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Returns the error state of the stream buffer.
 131:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  A bit pattern (well, isn't everything?)
 132:/usr/include/c++/7/bits/basic_ios.h ****        *
 133:/usr/include/c++/7/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.  Most
 134:/usr/include/c++/7/bits/basic_ios.h ****        *  users will call one of the interpreting wrappers, e.g., good().
 135:/usr/include/c++/7/bits/basic_ios.h ****       */
 136:/usr/include/c++/7/bits/basic_ios.h ****       iostate
 137:/usr/include/c++/7/bits/basic_ios.h ****       rdstate() const
 138:/usr/include/c++/7/bits/basic_ios.h ****       { return _M_streambuf_state; }
 139:/usr/include/c++/7/bits/basic_ios.h **** 
 140:/usr/include/c++/7/bits/basic_ios.h ****       /**
 141:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  [Re]sets the error state.
 142:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __state  The new state flag(s) to set.
 143:/usr/include/c++/7/bits/basic_ios.h ****        *
 144:/usr/include/c++/7/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.  Most
 145:/usr/include/c++/7/bits/basic_ios.h ****        *  users will not need to pass an argument.
 146:/usr/include/c++/7/bits/basic_ios.h ****       */
 147:/usr/include/c++/7/bits/basic_ios.h ****       void
 148:/usr/include/c++/7/bits/basic_ios.h ****       clear(iostate __state = goodbit);
 149:/usr/include/c++/7/bits/basic_ios.h **** 
 150:/usr/include/c++/7/bits/basic_ios.h ****       /**
 151:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Sets additional flags in the error state.
 152:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __state  The additional state flag(s) to set.
 153:/usr/include/c++/7/bits/basic_ios.h ****        *
 154:/usr/include/c++/7/bits/basic_ios.h ****        *  See std::ios_base::iostate for the possible bit values.
 155:/usr/include/c++/7/bits/basic_ios.h ****       */
 156:/usr/include/c++/7/bits/basic_ios.h ****       void
 157:/usr/include/c++/7/bits/basic_ios.h ****       setstate(iostate __state)
 158:/usr/include/c++/7/bits/basic_ios.h ****       { this->clear(this->rdstate() | __state); }
 159:/usr/include/c++/7/bits/basic_ios.h **** 
 160:/usr/include/c++/7/bits/basic_ios.h ****       // Flip the internal state on for the proper state bits, then
 161:/usr/include/c++/7/bits/basic_ios.h ****       // rethrows the propagated exception if bit also set in
 162:/usr/include/c++/7/bits/basic_ios.h ****       // exceptions().
 163:/usr/include/c++/7/bits/basic_ios.h ****       void
 164:/usr/include/c++/7/bits/basic_ios.h ****       _M_setstate(iostate __state)
 165:/usr/include/c++/7/bits/basic_ios.h ****       {
 166:/usr/include/c++/7/bits/basic_ios.h **** 	// 27.6.1.2.1 Common requirements.
 167:/usr/include/c++/7/bits/basic_ios.h **** 	// Turn this on without causing an ios::failure to be thrown.
 168:/usr/include/c++/7/bits/basic_ios.h **** 	_M_streambuf_state |= __state;
 169:/usr/include/c++/7/bits/basic_ios.h **** 	if (this->exceptions() & __state)
 170:/usr/include/c++/7/bits/basic_ios.h **** 	  __throw_exception_again;
 171:/usr/include/c++/7/bits/basic_ios.h ****       }
 172:/usr/include/c++/7/bits/basic_ios.h **** 
 173:/usr/include/c++/7/bits/basic_ios.h ****       /**
 174:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Fast error checking.
 175:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  True if no error flags are set.
 176:/usr/include/c++/7/bits/basic_ios.h ****        *
 177:/usr/include/c++/7/bits/basic_ios.h ****        *  A wrapper around rdstate.
 178:/usr/include/c++/7/bits/basic_ios.h ****       */
 179:/usr/include/c++/7/bits/basic_ios.h ****       bool
 180:/usr/include/c++/7/bits/basic_ios.h ****       good() const
 181:/usr/include/c++/7/bits/basic_ios.h ****       { return this->rdstate() == 0; }
 182:/usr/include/c++/7/bits/basic_ios.h **** 
 183:/usr/include/c++/7/bits/basic_ios.h ****       /**
 184:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Fast error checking.
 185:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  True if the eofbit is set.
 186:/usr/include/c++/7/bits/basic_ios.h ****        *
 187:/usr/include/c++/7/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 188:/usr/include/c++/7/bits/basic_ios.h ****       */
 189:/usr/include/c++/7/bits/basic_ios.h ****       bool
 190:/usr/include/c++/7/bits/basic_ios.h ****       eof() const
 191:/usr/include/c++/7/bits/basic_ios.h ****       { return (this->rdstate() & eofbit) != 0; }
 192:/usr/include/c++/7/bits/basic_ios.h **** 
 193:/usr/include/c++/7/bits/basic_ios.h ****       /**
 194:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Fast error checking.
 195:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  True if either the badbit or the failbit is set.
 196:/usr/include/c++/7/bits/basic_ios.h ****        *
 197:/usr/include/c++/7/bits/basic_ios.h ****        *  Checking the badbit in fail() is historical practice.
 198:/usr/include/c++/7/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 199:/usr/include/c++/7/bits/basic_ios.h ****       */
 200:/usr/include/c++/7/bits/basic_ios.h ****       bool
 201:/usr/include/c++/7/bits/basic_ios.h ****       fail() const
 202:/usr/include/c++/7/bits/basic_ios.h ****       { return (this->rdstate() & (badbit | failbit)) != 0; }
 203:/usr/include/c++/7/bits/basic_ios.h **** 
 204:/usr/include/c++/7/bits/basic_ios.h ****       /**
 205:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Fast error checking.
 206:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  True if the badbit is set.
 207:/usr/include/c++/7/bits/basic_ios.h ****        *
 208:/usr/include/c++/7/bits/basic_ios.h ****        *  Note that other iostate flags may also be set.
 209:/usr/include/c++/7/bits/basic_ios.h ****       */
 210:/usr/include/c++/7/bits/basic_ios.h ****       bool
 211:/usr/include/c++/7/bits/basic_ios.h ****       bad() const
 212:/usr/include/c++/7/bits/basic_ios.h ****       { return (this->rdstate() & badbit) != 0; }
 213:/usr/include/c++/7/bits/basic_ios.h **** 
 214:/usr/include/c++/7/bits/basic_ios.h ****       /**
 215:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Throwing exceptions on errors.
 216:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The current exceptions mask.
 217:/usr/include/c++/7/bits/basic_ios.h ****        *
 218:/usr/include/c++/7/bits/basic_ios.h ****        *  This changes nothing in the stream.  See the one-argument version
 219:/usr/include/c++/7/bits/basic_ios.h ****        *  of exceptions(iostate) for the meaning of the return value.
 220:/usr/include/c++/7/bits/basic_ios.h ****       */
 221:/usr/include/c++/7/bits/basic_ios.h ****       iostate
 222:/usr/include/c++/7/bits/basic_ios.h ****       exceptions() const
 223:/usr/include/c++/7/bits/basic_ios.h ****       { return _M_exception; }
 224:/usr/include/c++/7/bits/basic_ios.h **** 
 225:/usr/include/c++/7/bits/basic_ios.h ****       /**
 226:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Throwing exceptions on errors.
 227:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __except  The new exceptions mask.
 228:/usr/include/c++/7/bits/basic_ios.h ****        *
 229:/usr/include/c++/7/bits/basic_ios.h ****        *  By default, error flags are set silently.  You can set an
 230:/usr/include/c++/7/bits/basic_ios.h ****        *  exceptions mask for each stream; if a bit in the mask becomes set
 231:/usr/include/c++/7/bits/basic_ios.h ****        *  in the error flags, then an exception of type
 232:/usr/include/c++/7/bits/basic_ios.h ****        *  std::ios_base::failure is thrown.
 233:/usr/include/c++/7/bits/basic_ios.h ****        *
 234:/usr/include/c++/7/bits/basic_ios.h ****        *  If the error flag is already set when the exceptions mask is
 235:/usr/include/c++/7/bits/basic_ios.h ****        *  added, the exception is immediately thrown.  Try running the
 236:/usr/include/c++/7/bits/basic_ios.h ****        *  following under GCC 3.1 or later:
 237:/usr/include/c++/7/bits/basic_ios.h ****        *  @code
 238:/usr/include/c++/7/bits/basic_ios.h ****        *  #include <iostream>
 239:/usr/include/c++/7/bits/basic_ios.h ****        *  #include <fstream>
 240:/usr/include/c++/7/bits/basic_ios.h ****        *  #include <exception>
 241:/usr/include/c++/7/bits/basic_ios.h ****        *
 242:/usr/include/c++/7/bits/basic_ios.h ****        *  int main()
 243:/usr/include/c++/7/bits/basic_ios.h ****        *  {
 244:/usr/include/c++/7/bits/basic_ios.h ****        *      std::set_terminate (__gnu_cxx::__verbose_terminate_handler);
 245:/usr/include/c++/7/bits/basic_ios.h ****        *
 246:/usr/include/c++/7/bits/basic_ios.h ****        *      std::ifstream f ("/etc/motd");
 247:/usr/include/c++/7/bits/basic_ios.h ****        *
 248:/usr/include/c++/7/bits/basic_ios.h ****        *      std::cerr << "Setting badbit\n";
 249:/usr/include/c++/7/bits/basic_ios.h ****        *      f.setstate (std::ios_base::badbit);
 250:/usr/include/c++/7/bits/basic_ios.h ****        *
 251:/usr/include/c++/7/bits/basic_ios.h ****        *      std::cerr << "Setting exception mask\n";
 252:/usr/include/c++/7/bits/basic_ios.h ****        *      f.exceptions (std::ios_base::badbit);
 253:/usr/include/c++/7/bits/basic_ios.h ****        *  }
 254:/usr/include/c++/7/bits/basic_ios.h ****        *  @endcode
 255:/usr/include/c++/7/bits/basic_ios.h ****       */
 256:/usr/include/c++/7/bits/basic_ios.h ****       void
 257:/usr/include/c++/7/bits/basic_ios.h ****       exceptions(iostate __except)
 258:/usr/include/c++/7/bits/basic_ios.h ****       {
 259:/usr/include/c++/7/bits/basic_ios.h ****         _M_exception = __except;
 260:/usr/include/c++/7/bits/basic_ios.h ****         this->clear(_M_streambuf_state);
 261:/usr/include/c++/7/bits/basic_ios.h ****       }
 262:/usr/include/c++/7/bits/basic_ios.h **** 
 263:/usr/include/c++/7/bits/basic_ios.h ****       // Constructor/destructor:
 264:/usr/include/c++/7/bits/basic_ios.h ****       /**
 265:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Constructor performs initialization.
 266:/usr/include/c++/7/bits/basic_ios.h ****        *
 267:/usr/include/c++/7/bits/basic_ios.h ****        *  The parameter is passed by derived streams.
 268:/usr/include/c++/7/bits/basic_ios.h ****       */
 269:/usr/include/c++/7/bits/basic_ios.h ****       explicit
 270:/usr/include/c++/7/bits/basic_ios.h ****       basic_ios(basic_streambuf<_CharT, _Traits>* __sb)
 271:/usr/include/c++/7/bits/basic_ios.h ****       : ios_base(), _M_tie(0), _M_fill(), _M_fill_init(false), _M_streambuf(0),
 272:/usr/include/c++/7/bits/basic_ios.h **** 	_M_ctype(0), _M_num_put(0), _M_num_get(0)
 273:/usr/include/c++/7/bits/basic_ios.h ****       { this->init(__sb); }
 274:/usr/include/c++/7/bits/basic_ios.h **** 
 275:/usr/include/c++/7/bits/basic_ios.h ****       /**
 276:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Empty.
 277:/usr/include/c++/7/bits/basic_ios.h ****        *
 278:/usr/include/c++/7/bits/basic_ios.h ****        *  The destructor does nothing.  More specifically, it does not
 279:/usr/include/c++/7/bits/basic_ios.h ****        *  destroy the streambuf held by rdbuf().
 280:/usr/include/c++/7/bits/basic_ios.h ****       */
 281:/usr/include/c++/7/bits/basic_ios.h ****       virtual
 282:/usr/include/c++/7/bits/basic_ios.h ****       ~basic_ios() { }
 283:/usr/include/c++/7/bits/basic_ios.h **** 
 284:/usr/include/c++/7/bits/basic_ios.h ****       // Members:
 285:/usr/include/c++/7/bits/basic_ios.h ****       /**
 286:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Fetches the current @e tied stream.
 287:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  A pointer to the tied stream, or NULL if the stream is
 288:/usr/include/c++/7/bits/basic_ios.h ****        *           not tied.
 289:/usr/include/c++/7/bits/basic_ios.h ****        *
 290:/usr/include/c++/7/bits/basic_ios.h ****        *  A stream may be @e tied (or synchronized) to a second output
 291:/usr/include/c++/7/bits/basic_ios.h ****        *  stream.  When this stream performs any I/O, the tied stream is
 292:/usr/include/c++/7/bits/basic_ios.h ****        *  first flushed.  For example, @c std::cin is tied to @c std::cout.
 293:/usr/include/c++/7/bits/basic_ios.h ****       */
 294:/usr/include/c++/7/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*
 295:/usr/include/c++/7/bits/basic_ios.h ****       tie() const
 296:/usr/include/c++/7/bits/basic_ios.h ****       { return _M_tie; }
 297:/usr/include/c++/7/bits/basic_ios.h **** 
 298:/usr/include/c++/7/bits/basic_ios.h ****       /**
 299:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Ties this stream to an output stream.
 300:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __tiestr  The output stream.
 301:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The previously tied output stream, or NULL if the stream
 302:/usr/include/c++/7/bits/basic_ios.h ****        *           was not tied.
 303:/usr/include/c++/7/bits/basic_ios.h ****        *
 304:/usr/include/c++/7/bits/basic_ios.h ****        *  This sets up a new tie; see tie() for more.
 305:/usr/include/c++/7/bits/basic_ios.h ****       */
 306:/usr/include/c++/7/bits/basic_ios.h ****       basic_ostream<_CharT, _Traits>*
 307:/usr/include/c++/7/bits/basic_ios.h ****       tie(basic_ostream<_CharT, _Traits>* __tiestr)
 308:/usr/include/c++/7/bits/basic_ios.h ****       {
 309:/usr/include/c++/7/bits/basic_ios.h ****         basic_ostream<_CharT, _Traits>* __old = _M_tie;
 310:/usr/include/c++/7/bits/basic_ios.h ****         _M_tie = __tiestr;
 311:/usr/include/c++/7/bits/basic_ios.h ****         return __old;
 312:/usr/include/c++/7/bits/basic_ios.h ****       }
 313:/usr/include/c++/7/bits/basic_ios.h **** 
 314:/usr/include/c++/7/bits/basic_ios.h ****       /**
 315:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Accessing the underlying buffer.
 316:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The current stream buffer.
 317:/usr/include/c++/7/bits/basic_ios.h ****        *
 318:/usr/include/c++/7/bits/basic_ios.h ****        *  This does not change the state of the stream.
 319:/usr/include/c++/7/bits/basic_ios.h ****       */
 320:/usr/include/c++/7/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*
 321:/usr/include/c++/7/bits/basic_ios.h ****       rdbuf() const
 322:/usr/include/c++/7/bits/basic_ios.h ****       { return _M_streambuf; }
 323:/usr/include/c++/7/bits/basic_ios.h **** 
 324:/usr/include/c++/7/bits/basic_ios.h ****       /**
 325:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Changing the underlying buffer.
 326:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __sb  The new stream buffer.
 327:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The previous stream buffer.
 328:/usr/include/c++/7/bits/basic_ios.h ****        *
 329:/usr/include/c++/7/bits/basic_ios.h ****        *  Associates a new buffer with the current stream, and clears the
 330:/usr/include/c++/7/bits/basic_ios.h ****        *  error state.
 331:/usr/include/c++/7/bits/basic_ios.h ****        *
 332:/usr/include/c++/7/bits/basic_ios.h ****        *  Due to historical accidents which the LWG refuses to correct, the
 333:/usr/include/c++/7/bits/basic_ios.h ****        *  I/O library suffers from a design error:  this function is hidden
 334:/usr/include/c++/7/bits/basic_ios.h ****        *  in derived classes by overrides of the zero-argument @c rdbuf(),
 335:/usr/include/c++/7/bits/basic_ios.h ****        *  which is non-virtual for hysterical raisins.  As a result, you
 336:/usr/include/c++/7/bits/basic_ios.h ****        *  must use explicit qualifications to access this function via any
 337:/usr/include/c++/7/bits/basic_ios.h ****        *  derived class.  For example:
 338:/usr/include/c++/7/bits/basic_ios.h ****        *
 339:/usr/include/c++/7/bits/basic_ios.h ****        *  @code
 340:/usr/include/c++/7/bits/basic_ios.h ****        *  std::fstream     foo;         // or some other derived type
 341:/usr/include/c++/7/bits/basic_ios.h ****        *  std::streambuf*  p = .....;
 342:/usr/include/c++/7/bits/basic_ios.h ****        *
 343:/usr/include/c++/7/bits/basic_ios.h ****        *  foo.ios::rdbuf(p);            // ios == basic_ios<char>
 344:/usr/include/c++/7/bits/basic_ios.h ****        *  @endcode
 345:/usr/include/c++/7/bits/basic_ios.h ****       */
 346:/usr/include/c++/7/bits/basic_ios.h ****       basic_streambuf<_CharT, _Traits>*
 347:/usr/include/c++/7/bits/basic_ios.h ****       rdbuf(basic_streambuf<_CharT, _Traits>* __sb);
 348:/usr/include/c++/7/bits/basic_ios.h **** 
 349:/usr/include/c++/7/bits/basic_ios.h ****       /**
 350:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Copies fields of __rhs into this.
 351:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __rhs  The source values for the copies.
 352:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  Reference to this object.
 353:/usr/include/c++/7/bits/basic_ios.h ****        *
 354:/usr/include/c++/7/bits/basic_ios.h ****        *  All fields of __rhs are copied into this object except that rdbuf()
 355:/usr/include/c++/7/bits/basic_ios.h ****        *  and rdstate() remain unchanged.  All values in the pword and iword
 356:/usr/include/c++/7/bits/basic_ios.h ****        *  arrays are copied.  Before copying, each callback is invoked with
 357:/usr/include/c++/7/bits/basic_ios.h ****        *  erase_event.  After copying, each (new) callback is invoked with
 358:/usr/include/c++/7/bits/basic_ios.h ****        *  copyfmt_event.  The final step is to copy exceptions().
 359:/usr/include/c++/7/bits/basic_ios.h ****       */
 360:/usr/include/c++/7/bits/basic_ios.h ****       basic_ios&
 361:/usr/include/c++/7/bits/basic_ios.h ****       copyfmt(const basic_ios& __rhs);
 362:/usr/include/c++/7/bits/basic_ios.h **** 
 363:/usr/include/c++/7/bits/basic_ios.h ****       /**
 364:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Retrieves the @a empty character.
 365:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The current fill character.
 366:/usr/include/c++/7/bits/basic_ios.h ****        *
 367:/usr/include/c++/7/bits/basic_ios.h ****        *  It defaults to a space (' ') in the current locale.
 368:/usr/include/c++/7/bits/basic_ios.h ****       */
 369:/usr/include/c++/7/bits/basic_ios.h ****       char_type
 370:/usr/include/c++/7/bits/basic_ios.h ****       fill() const
 371:/usr/include/c++/7/bits/basic_ios.h ****       {
 372:/usr/include/c++/7/bits/basic_ios.h **** 	if (!_M_fill_init)
 373:/usr/include/c++/7/bits/basic_ios.h **** 	  {
 374:/usr/include/c++/7/bits/basic_ios.h **** 	    _M_fill = this->widen(' ');
 375:/usr/include/c++/7/bits/basic_ios.h **** 	    _M_fill_init = true;
 376:/usr/include/c++/7/bits/basic_ios.h **** 	  }
 377:/usr/include/c++/7/bits/basic_ios.h **** 	return _M_fill;
 378:/usr/include/c++/7/bits/basic_ios.h ****       }
 379:/usr/include/c++/7/bits/basic_ios.h **** 
 380:/usr/include/c++/7/bits/basic_ios.h ****       /**
 381:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Sets a new @a empty character.
 382:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __ch  The new character.
 383:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The previous fill character.
 384:/usr/include/c++/7/bits/basic_ios.h ****        *
 385:/usr/include/c++/7/bits/basic_ios.h ****        *  The fill character is used to fill out space when P+ characters
 386:/usr/include/c++/7/bits/basic_ios.h ****        *  have been requested (e.g., via setw), Q characters are actually
 387:/usr/include/c++/7/bits/basic_ios.h ****        *  used, and Q<P.  It defaults to a space (' ') in the current locale.
 388:/usr/include/c++/7/bits/basic_ios.h ****       */
 389:/usr/include/c++/7/bits/basic_ios.h ****       char_type
 390:/usr/include/c++/7/bits/basic_ios.h ****       fill(char_type __ch)
 391:/usr/include/c++/7/bits/basic_ios.h ****       {
 392:/usr/include/c++/7/bits/basic_ios.h **** 	char_type __old = this->fill();
 393:/usr/include/c++/7/bits/basic_ios.h **** 	_M_fill = __ch;
 394:/usr/include/c++/7/bits/basic_ios.h **** 	return __old;
 395:/usr/include/c++/7/bits/basic_ios.h ****       }
 396:/usr/include/c++/7/bits/basic_ios.h **** 
 397:/usr/include/c++/7/bits/basic_ios.h ****       // Locales:
 398:/usr/include/c++/7/bits/basic_ios.h ****       /**
 399:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Moves to a new locale.
 400:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __loc  The new locale.
 401:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The previous locale.
 402:/usr/include/c++/7/bits/basic_ios.h ****        *
 403:/usr/include/c++/7/bits/basic_ios.h ****        *  Calls @c ios_base::imbue(loc), and if a stream buffer is associated
 404:/usr/include/c++/7/bits/basic_ios.h ****        *  with this stream, calls that buffer's @c pubimbue(loc).
 405:/usr/include/c++/7/bits/basic_ios.h ****        *
 406:/usr/include/c++/7/bits/basic_ios.h ****        *  Additional l10n notes are at
 407:/usr/include/c++/7/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 408:/usr/include/c++/7/bits/basic_ios.h ****       */
 409:/usr/include/c++/7/bits/basic_ios.h ****       locale
 410:/usr/include/c++/7/bits/basic_ios.h ****       imbue(const locale& __loc);
 411:/usr/include/c++/7/bits/basic_ios.h **** 
 412:/usr/include/c++/7/bits/basic_ios.h ****       /**
 413:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Squeezes characters.
 414:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __c  The character to narrow.
 415:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __dfault  The character to narrow.
 416:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The narrowed character.
 417:/usr/include/c++/7/bits/basic_ios.h ****        *
 418:/usr/include/c++/7/bits/basic_ios.h ****        *  Maps a character of @c char_type to a character of @c char,
 419:/usr/include/c++/7/bits/basic_ios.h ****        *  if possible.
 420:/usr/include/c++/7/bits/basic_ios.h ****        *
 421:/usr/include/c++/7/bits/basic_ios.h ****        *  Returns the result of
 422:/usr/include/c++/7/bits/basic_ios.h ****        *  @code
 423:/usr/include/c++/7/bits/basic_ios.h ****        *    std::use_facet<ctype<char_type> >(getloc()).narrow(c,dfault)
 424:/usr/include/c++/7/bits/basic_ios.h ****        *  @endcode
 425:/usr/include/c++/7/bits/basic_ios.h ****        *
 426:/usr/include/c++/7/bits/basic_ios.h ****        *  Additional l10n notes are at
 427:/usr/include/c++/7/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 428:/usr/include/c++/7/bits/basic_ios.h ****       */
 429:/usr/include/c++/7/bits/basic_ios.h ****       char
 430:/usr/include/c++/7/bits/basic_ios.h ****       narrow(char_type __c, char __dfault) const
 431:/usr/include/c++/7/bits/basic_ios.h ****       { return __check_facet(_M_ctype).narrow(__c, __dfault); }
 432:/usr/include/c++/7/bits/basic_ios.h **** 
 433:/usr/include/c++/7/bits/basic_ios.h ****       /**
 434:/usr/include/c++/7/bits/basic_ios.h ****        *  @brief  Widens characters.
 435:/usr/include/c++/7/bits/basic_ios.h ****        *  @param  __c  The character to widen.
 436:/usr/include/c++/7/bits/basic_ios.h ****        *  @return  The widened character.
 437:/usr/include/c++/7/bits/basic_ios.h ****        *
 438:/usr/include/c++/7/bits/basic_ios.h ****        *  Maps a character of @c char to a character of @c char_type.
 439:/usr/include/c++/7/bits/basic_ios.h ****        *
 440:/usr/include/c++/7/bits/basic_ios.h ****        *  Returns the result of
 441:/usr/include/c++/7/bits/basic_ios.h ****        *  @code
 442:/usr/include/c++/7/bits/basic_ios.h ****        *    std::use_facet<ctype<char_type> >(getloc()).widen(c)
 443:/usr/include/c++/7/bits/basic_ios.h ****        *  @endcode
 444:/usr/include/c++/7/bits/basic_ios.h ****        *
 445:/usr/include/c++/7/bits/basic_ios.h ****        *  Additional l10n notes are at
 446:/usr/include/c++/7/bits/basic_ios.h ****        *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/localization.html
 447:/usr/include/c++/7/bits/basic_ios.h ****       */
 448:/usr/include/c++/7/bits/basic_ios.h ****       char_type
 449:/usr/include/c++/7/bits/basic_ios.h ****       widen(char __c) const
 450:/usr/include/c++/7/bits/basic_ios.h ****       { return __check_facet(_M_ctype).widen(__c); }
 116              		.loc 4 450 0
 117 005c 488B40E8 		movq	-24(%rax), %rax
 118 0060 488BAC03 		movq	240(%rbx,%rax), %rbp
 118      F0000000 
 119              	.LVL7:
 120              	.LBB541:
 121              	.LBB542:
  49:/usr/include/c++/7/bits/basic_ios.h **** 	__throw_bad_cast();
 122              		.loc 4 49 0
 123 0068 4885ED   		testq	%rbp, %rbp
 124 006b 0F84A001 		je	.L7
 124      0000
 125              	.LVL8:
 126              	.LBE542:
 127              	.LBE541:
 128              	.LBB544:
 129              	.LBB545:
 874:/usr/include/c++/7/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 130              		.loc 1 874 0
 131 0071 807D3800 		cmpb	$0, 56(%rbp)
 132 0075 0F84F500 		je	.L5
 132      0000
 133 007b 0FBE7543 		movsbl	67(%rbp), %esi
 134              	.LVL9:
 135              	.L6:
 136              	.LBE545:
 137              	.LBE544:
 138              	.LBE540:
 139              	.LBE539:
 140              		.loc 3 591 0
 141 007f 4889DF   		movq	%rbx, %rdi
 142 0082 E8000000 		call	_ZNSo3putEc@PLT
 142      00
 143              	.LVL10:
 144              	.LBB553:
 145              	.LBB554:
 592:/usr/include/c++/7/ostream **** 
 593:/usr/include/c++/7/ostream ****   /**
 594:/usr/include/c++/7/ostream ****    *  @brief  Write a null character into the output sequence.
 595:/usr/include/c++/7/ostream ****    *
 596:/usr/include/c++/7/ostream ****    *  <em>Null character</em> is @c CharT() by definition.  For CharT
 597:/usr/include/c++/7/ostream ****    *  of @c char, this correctly writes the ASCII @c NUL character
 598:/usr/include/c++/7/ostream ****    *  string terminator.
 599:/usr/include/c++/7/ostream ****   */
 600:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 601:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 602:/usr/include/c++/7/ostream ****     ends(basic_ostream<_CharT, _Traits>& __os)
 603:/usr/include/c++/7/ostream ****     { return __os.put(_CharT()); }
 604:/usr/include/c++/7/ostream **** 
 605:/usr/include/c++/7/ostream ****   /**
 606:/usr/include/c++/7/ostream ****    *  @brief  Flushes the output stream.
 607:/usr/include/c++/7/ostream ****    *
 608:/usr/include/c++/7/ostream ****    *  This manipulator simply calls the stream's @c flush() member function.
 609:/usr/include/c++/7/ostream ****   */
 610:/usr/include/c++/7/ostream ****   template<typename _CharT, typename _Traits>
 611:/usr/include/c++/7/ostream ****     inline basic_ostream<_CharT, _Traits>&
 612:/usr/include/c++/7/ostream ****     flush(basic_ostream<_CharT, _Traits>& __os)
 613:/usr/include/c++/7/ostream ****     { return __os.flush(); }
 146              		.loc 3 613 0
 147 0087 4889C7   		movq	%rax, %rdi
 148 008a E8000000 		call	_ZNSo5flushEv@PLT
 148      00
 149              	.LVL11:
 150              	.LBE554:
 151              	.LBE553:
 152              	.LBE538:
 153              	.LBE537:
 154              	.LBE536:
 155              	.LBB561:
 156              	.LBB562:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 157              		.loc 3 561 0
 158 008f 488D3500 		leaq	.LC3(%rip), %rsi
 158      000000
 159 0096 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 159      000000
 160 009d BA100000 		movl	$16, %edx
 160      00
 161 00a2 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 161      00
 162              	.LVL12:
 163              	.LBE562:
 164              	.LBE561:
 165              	.LBB563:
 166              	.LBB564:
 221:/usr/include/c++/7/ostream **** 
 167              		.loc 3 221 0
 168 00a7 F20F1044 		movsd	8(%rsp), %xmm0
 168      2408
 169 00ad 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 169      000000
 170 00b4 E8000000 		call	_ZNSo9_M_insertIdEERSoT_@PLT
 170      00
 171              	.LVL13:
 172              	.LBE564:
 173              	.LBE563:
 174              	.LBB566:
 175              	.LBB567:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 176              		.loc 3 561 0
 177 00b9 488D3500 		leaq	.LC4(%rip), %rsi
 177      000000
 178              	.LBE567:
 179              	.LBE566:
 180              	.LBB569:
 181              	.LBB565:
 221:/usr/include/c++/7/ostream **** 
 182              		.loc 3 221 0
 183 00c0 4889C3   		movq	%rax, %rbx
 184              	.LVL14:
 185              	.LBE565:
 186              	.LBE569:
 187              	.LBB570:
 188              	.LBB568:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 189              		.loc 3 561 0
 190 00c3 BA010000 		movl	$1, %edx
 190      00
 191 00c8 4889C7   		movq	%rax, %rdi
 192 00cb E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 192      00
 193              	.LVL15:
 194              	.LBE568:
 195              	.LBE570:
 196              	.LBB571:
 197              	.LBB572:
 198              	.LBB573:
 591:/usr/include/c++/7/ostream **** 
 199              		.loc 3 591 0
 200 00d0 488B03   		movq	(%rbx), %rax
 201              	.LBB574:
 202              	.LBB575:
 203              		.loc 4 450 0
 204 00d3 488B40E8 		movq	-24(%rax), %rax
 205 00d7 488BAC03 		movq	240(%rbx,%rax), %rbp
 205      F0000000 
 206              	.LVL16:
 207              	.LBB576:
 208              	.LBB577:
  49:/usr/include/c++/7/bits/basic_ios.h **** 	__throw_bad_cast();
 209              		.loc 4 49 0
 210 00df 4885ED   		testq	%rbp, %rbp
 211 00e2 0F842901 		je	.L7
 211      0000
 212              	.LVL17:
 213              	.LBE577:
 214              	.LBE576:
 215              	.LBB578:
 216              	.LBB579:
 874:/usr/include/c++/7/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 217              		.loc 1 874 0
 218 00e8 807D3800 		cmpb	$0, 56(%rbp)
 219 00ec 0F84B600 		je	.L8
 219      0000
 220 00f2 0FBE7543 		movsbl	67(%rbp), %esi
 221              	.LVL18:
 222              	.L9:
 223              	.LBE579:
 224              	.LBE578:
 225              	.LBE575:
 226              	.LBE574:
 591:/usr/include/c++/7/ostream **** 
 227              		.loc 3 591 0
 228 00f6 4889DF   		movq	%rbx, %rdi
 229 00f9 E8000000 		call	_ZNSo3putEc@PLT
 229      00
 230              	.LVL19:
 231              	.LBB585:
 232              	.LBB586:
 233              		.loc 3 613 0
 234 00fe 4889C7   		movq	%rax, %rdi
 235 0101 E8000000 		call	_ZNSo5flushEv@PLT
 235      00
 236              	.LVL20:
 237              	.LBE586:
 238              	.LBE585:
 239              	.LBE573:
 240              	.LBE572:
 241              	.LBE571:
 242              	.LBB590:
 243              	.LBB591:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 244              		.loc 3 561 0
 245 0106 488D3500 		leaq	.LC4(%rip), %rsi
 245      000000
 246 010d 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 246      000000
 247 0114 BA010000 		movl	$1, %edx
 247      00
 248 0119 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 248      00
 249              	.LVL21:
 250              	.LBE591:
 251              	.LBE590:
 252              	.LBB592:
 253              	.LBB593:
 254              	.LBB594:
 591:/usr/include/c++/7/ostream **** 
 255              		.loc 3 591 0
 256 011e 488B0500 		movq	_ZSt4cout(%rip), %rax
 256      000000
 257              	.LBB595:
 258              	.LBB596:
 259              		.loc 4 450 0
 260 0125 488D1500 		leaq	_ZSt4cout(%rip), %rdx
 260      000000
 261              	.LVL22:
 262 012c 488B40E8 		movq	-24(%rax), %rax
 263              	.LVL23:
 264 0130 488B9C02 		movq	240(%rdx,%rax), %rbx
 264      F0000000 
 265              	.LVL24:
 266              	.LBB597:
 267              	.LBB598:
  49:/usr/include/c++/7/bits/basic_ios.h **** 	__throw_bad_cast();
 268              		.loc 4 49 0
 269 0138 4885DB   		testq	%rbx, %rbx
 270 013b 0F84D000 		je	.L7
 270      0000
 271              	.LVL25:
 272              	.LBE598:
 273              	.LBE597:
 274              	.LBB599:
 275              	.LBB600:
 874:/usr/include/c++/7/bits/locale_facets.h **** 	  return _M_widen[static_cast<unsigned char>(__c)];
 276              		.loc 1 874 0
 277 0141 807B3800 		cmpb	$0, 56(%rbx)
 278 0145 0F849500 		je	.L10
 278      0000
 279 014b 0FBE7343 		movsbl	67(%rbx), %esi
 280              	.LVL26:
 281              	.L11:
 282              	.LBE600:
 283              	.LBE599:
 284              	.LBE596:
 285              	.LBE595:
 591:/usr/include/c++/7/ostream **** 
 286              		.loc 3 591 0
 287 014f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 287      000000
 288 0156 E8000000 		call	_ZNSo3putEc@PLT
 288      00
 289              	.LVL27:
 290              	.LBE594:
 291              	.LBE593:
 292              	.LBE592:
  82:main.cpp      ****     cout << "      RESULT:   " << result  << "\n" << endl;
  83:main.cpp      ****     cout << "\n" << endl;
  84:main.cpp      **** }
 293              		.loc 2 84 0
 294 015b 4883C418 		addq	$24, %rsp
 295              		.cfi_remember_state
 296              		.cfi_def_cfa_offset 24
 297              	.LVL28:
 298              	.LBB617:
 299              	.LBB614:
 300              	.LBB611:
 301              	.LBB606:
 302              	.LBB607:
 303              		.loc 3 613 0
 304 015f 4889C7   		movq	%rax, %rdi
 305              	.LBE607:
 306              	.LBE606:
 307              	.LBE611:
 308              	.LBE614:
 309              	.LBE617:
 310              		.loc 2 84 0
 311 0162 5B       		popq	%rbx
 312              		.cfi_def_cfa_offset 16
 313 0163 5D       		popq	%rbp
 314              		.cfi_def_cfa_offset 8
 315              	.LBB618:
 316              	.LBB615:
 317              	.LBB612:
 318              	.LBB609:
 319              	.LBB608:
 320              		.loc 3 613 0
 321 0164 E9000000 		jmp	_ZNSo5flushEv@PLT
 321      00
 322              	.LVL29:
 323 0169 0F1F8000 		.p2align 4,,10
 323      000000
 324              		.p2align 3
 325              	.L5:
 326              		.cfi_restore_state
 327              	.LBE608:
 328              	.LBE609:
 329              	.LBE612:
 330              	.LBE615:
 331              	.LBE618:
 332              	.LBB619:
 333              	.LBB559:
 334              	.LBB557:
 335              	.LBB555:
 336              	.LBB551:
 337              	.LBB549:
 338              	.LBB548:
 339              	.LBB546:
 340              	.LBB547:
 876:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_widen(__c);
 341              		.loc 1 876 0
 342 0170 4889EF   		movq	%rbp, %rdi
 343 0173 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
 343      00
 344              	.LVL30:
 877:/usr/include/c++/7/bits/locale_facets.h ****       }
 345              		.loc 1 877 0
 346 0178 488B4500 		movq	0(%rbp), %rax
 347 017c 488D1500 		leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
 347      000000
 348 0183 BE0A0000 		movl	$10, %esi
 348      00
 349 0188 488B4030 		movq	48(%rax), %rax
 350 018c 4839D0   		cmpq	%rdx, %rax
 351 018f 0F84EAFE 		je	.L6
 351      FFFF
 352 0195 4889EF   		movq	%rbp, %rdi
 353 0198 FFD0     		call	*%rax
 354              	.LVL31:
 355 019a 0FBEF0   		movsbl	%al, %esi
 356 019d E9DDFEFF 		jmp	.L6
 356      FF
 357              	.LVL32:
 358              		.p2align 4,,10
 359 01a2 660F1F44 		.p2align 3
 359      0000
 360              	.L8:
 361              	.LBE547:
 362              	.LBE546:
 363              	.LBE548:
 364              	.LBE549:
 365              	.LBE551:
 366              	.LBE555:
 367              	.LBE557:
 368              	.LBE559:
 369              	.LBE619:
 370              	.LBB620:
 371              	.LBB589:
 372              	.LBB588:
 373              	.LBB587:
 374              	.LBB584:
 375              	.LBB583:
 376              	.LBB582:
 377              	.LBB580:
 378              	.LBB581:
 876:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_widen(__c);
 379              		.loc 1 876 0
 380 01a8 4889EF   		movq	%rbp, %rdi
 381 01ab E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
 381      00
 382              	.LVL33:
 877:/usr/include/c++/7/bits/locale_facets.h ****       }
 383              		.loc 1 877 0
 384 01b0 488B4500 		movq	0(%rbp), %rax
 385 01b4 488D1500 		leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
 385      000000
 386 01bb BE0A0000 		movl	$10, %esi
 386      00
 387 01c0 488B4030 		movq	48(%rax), %rax
 388 01c4 4839D0   		cmpq	%rdx, %rax
 389 01c7 0F8429FF 		je	.L9
 389      FFFF
 390 01cd 4889EF   		movq	%rbp, %rdi
 391 01d0 FFD0     		call	*%rax
 392              	.LVL34:
 393 01d2 0FBEF0   		movsbl	%al, %esi
 394 01d5 E91CFFFF 		jmp	.L9
 394      FF
 395              	.LVL35:
 396 01da 660F1F44 		.p2align 4,,10
 396      0000
 397              		.p2align 3
 398              	.L10:
 399              	.LBE581:
 400              	.LBE580:
 401              	.LBE582:
 402              	.LBE583:
 403              	.LBE584:
 404              	.LBE587:
 405              	.LBE588:
 406              	.LBE589:
 407              	.LBE620:
 408              	.LBB621:
 409              	.LBB616:
 410              	.LBB613:
 411              	.LBB610:
 412              	.LBB605:
 413              	.LBB604:
 414              	.LBB603:
 415              	.LBB601:
 416              	.LBB602:
 876:/usr/include/c++/7/bits/locale_facets.h **** 	return this->do_widen(__c);
 417              		.loc 1 876 0
 418 01e0 4889DF   		movq	%rbx, %rdi
 419 01e3 E8000000 		call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
 419      00
 420              	.LVL36:
 877:/usr/include/c++/7/bits/locale_facets.h ****       }
 421              		.loc 1 877 0
 422 01e8 488B03   		movq	(%rbx), %rax
 423 01eb 488D1500 		leaq	_ZNKSt5ctypeIcE8do_widenEc(%rip), %rdx
 423      000000
 424 01f2 BE0A0000 		movl	$10, %esi
 424      00
 425 01f7 488B4030 		movq	48(%rax), %rax
 426 01fb 4839D0   		cmpq	%rdx, %rax
 427 01fe 0F844BFF 		je	.L11
 427      FFFF
 428 0204 4889DF   		movq	%rbx, %rdi
 429 0207 FFD0     		call	*%rax
 430              	.LVL37:
 431 0209 0FBEF0   		movsbl	%al, %esi
 432 020c E93EFFFF 		jmp	.L11
 432      FF
 433              	.LVL38:
 434              	.L7:
 435              	.LBE602:
 436              	.LBE601:
 437              	.LBE603:
 438              	.LBE604:
 439              	.LBE605:
 440              	.LBE610:
 441              	.LBE613:
 442              	.LBE616:
 443              	.LBE621:
 444              	.LBB622:
 445              	.LBB560:
 446              	.LBB558:
 447              	.LBB556:
 448              	.LBB552:
 449              	.LBB550:
 450              	.LBB543:
  50:/usr/include/c++/7/bits/basic_ios.h ****       return *__f;
 451              		.loc 4 50 0
 452 0211 E8000000 		call	_ZSt16__throw_bad_castv@PLT
 452      00
 453              	.LVL39:
 454              	.LBE543:
 455              	.LBE550:
 456              	.LBE552:
 457              	.LBE556:
 458              	.LBE558:
 459              	.LBE560:
 460              	.LBE622:
 461              		.cfi_endproc
 462              	.LFE3094:
 464 0216 662E0F1F 		.p2align 4,,15
 464      84000000 
 464      0000
 465              		.globl	_Z5_testP17EuclideanDistancePKdS2_m
 467              	_Z5_testP17EuclideanDistancePKdS2_m:
 468              	.LFB3092:
  52:main.cpp      ****     Test test;
 469              		.loc 2 52 0
 470              		.cfi_startproc
 471              	.LVL40:
 472 0220 4157     		pushq	%r15
 473              		.cfi_def_cfa_offset 16
 474              		.cfi_offset 15, -16
 475 0222 4156     		pushq	%r14
 476              		.cfi_def_cfa_offset 24
 477              		.cfi_offset 14, -24
 478 0224 4989F6   		movq	%rsi, %r14
 479 0227 4155     		pushq	%r13
 480              		.cfi_def_cfa_offset 32
 481              		.cfi_offset 13, -32
 482 0229 4154     		pushq	%r12
 483              		.cfi_def_cfa_offset 40
 484              		.cfi_offset 12, -40
 485 022b 4989D5   		movq	%rdx, %r13
 486 022e 55       		pushq	%rbp
 487              		.cfi_def_cfa_offset 48
 488              		.cfi_offset 6, -48
 489 022f 53       		pushq	%rbx
 490              		.cfi_def_cfa_offset 56
 491              		.cfi_offset 3, -56
 492 0230 4889FD   		movq	%rdi, %rbp
 493 0233 4989CC   		movq	%rcx, %r12
  58:main.cpp      ****     for (int i = 0; i < qtd_tests; i++)
 494              		.loc 2 58 0
 495 0236 BB102700 		movl	$10000, %ebx
 495      00
  52:main.cpp      ****     Test test;
 496              		.loc 2 52 0
 497 023b 4883EC28 		subq	$40, %rsp
 498              		.cfi_def_cfa_offset 96
  54:main.cpp      ****     size_t qtd_tests = 10000;
 499              		.loc 2 54 0
 500 023f 4C8D7C24 		leaq	16(%rsp), %r15
 500      10
  52:main.cpp      ****     Test test;
 501              		.loc 2 52 0
 502 0244 64488B04 		movq	%fs:40, %rax
 502      25280000 
 502      00
 503 024d 48894424 		movq	%rax, 24(%rsp)
 503      18
 504 0252 31C0     		xorl	%eax, %eax
  54:main.cpp      ****     size_t qtd_tests = 10000;
 505              		.loc 2 54 0
 506 0254 4C89FF   		movq	%r15, %rdi
 507              	.LVL41:
 508 0257 E8000000 		call	_ZN9StopWatchC1Ev@PLT
 508      00
 509              	.LVL42:
  58:main.cpp      ****     for (int i = 0; i < qtd_tests; i++)
 510              		.loc 2 58 0
 511 025c 4C89FF   		movq	%r15, %rdi
 512 025f E8000000 		call	_ZN9StopWatch7RestartEv@PLT
 512      00
 513              	.LVL43:
 514              	.LBB623:
 515              	.LBB624:
  17:main.cpp      ****     }
 516              		.loc 2 17 0
 517 0264 660FEFE4 		pxor	%xmm4, %xmm4
 518 0268 F20F1164 		movsd	%xmm4, 8(%rsp)
 518      2408
 519              	.LVL44:
 520 026e 6690     		.p2align 4,,10
 521              		.p2align 3
 522              	.L23:
 523              	.LBE624:
 524              	.LBE623:
 525              	.LBB625:
  60:main.cpp      ****     test.time = sw.ElapsedUs();
 526              		.loc 2 60 0
 527 0270 488B4500 		movq	0(%rbp), %rax
 528 0274 4C89E1   		movq	%r12, %rcx
 529 0277 4C89EA   		movq	%r13, %rdx
 530 027a 4C89F6   		movq	%r14, %rsi
 531 027d 4889EF   		movq	%rbp, %rdi
 532 0280 FF5010   		call	*16(%rax)
 533              	.LVL45:
 534 0283 F20F5844 		addsd	8(%rsp), %xmm0
 534      2408
  59:main.cpp      ****         test.result += instance->calculate(x, y, n);
 535              		.loc 2 59 0
 536 0289 83EB01   		subl	$1, %ebx
  60:main.cpp      ****     test.time = sw.ElapsedUs();
 537              		.loc 2 60 0
 538 028c F20F1144 		movsd	%xmm0, 8(%rsp)
 538      2408
 539              	.LVL46:
  59:main.cpp      ****         test.result += instance->calculate(x, y, n);
 540              		.loc 2 59 0
 541 0292 75DC     		jne	.L23
 542              	.LBE625:
  61:main.cpp      **** 
 543              		.loc 2 61 0
 544 0294 4C89FF   		movq	%r15, %rdi
 545 0297 E8000000 		call	_ZNK9StopWatch9ElapsedUsEv@PLT
 545      00
 546              	.LVL47:
  63:main.cpp      ****     test.Reset();
 547              		.loc 2 63 0
 548 029c F20F1015 		movsd	.LC6(%rip), %xmm2
 548      00000000 
  61:main.cpp      **** 
 549              		.loc 2 61 0
 550 02a4 4885C0   		testq	%rax, %rax
  63:main.cpp      ****     test.Reset();
 551              		.loc 2 63 0
 552 02a7 F20F104C 		movsd	8(%rsp), %xmm1
 552      2408
 553 02ad F20F5ECA 		divsd	%xmm2, %xmm1
  61:main.cpp      **** 
 554              		.loc 2 61 0
 555 02b1 7831     		js	.L24
 556 02b3 660FEFC0 		pxor	%xmm0, %xmm0
 557 02b7 F2480F2A 		cvtsi2sdq	%rax, %xmm0
 557      C0
 558              	.LVL48:
 559              	.L25:
  63:main.cpp      ****     test.Reset();
 560              		.loc 2 63 0
 561 02bc F20F5EC2 		divsd	%xmm2, %xmm0
 562 02c0 E8000000 		call	_Z13print_resultsdd
 562      00
 563              	.LVL49:
  65:main.cpp      **** 
 564              		.loc 2 65 0
 565 02c5 488B4424 		movq	24(%rsp), %rax
 565      18
 566 02ca 64483304 		xorq	%fs:40, %rax
 566      25280000 
 566      00
 567 02d3 752A     		jne	.L29
 568 02d5 4883C428 		addq	$40, %rsp
 569              		.cfi_remember_state
 570              		.cfi_def_cfa_offset 56
 571 02d9 5B       		popq	%rbx
 572              		.cfi_def_cfa_offset 48
 573 02da 5D       		popq	%rbp
 574              		.cfi_def_cfa_offset 40
 575              	.LVL50:
 576 02db 415C     		popq	%r12
 577              		.cfi_def_cfa_offset 32
 578              	.LVL51:
 579 02dd 415D     		popq	%r13
 580              		.cfi_def_cfa_offset 24
 581              	.LVL52:
 582 02df 415E     		popq	%r14
 583              		.cfi_def_cfa_offset 16
 584              	.LVL53:
 585 02e1 415F     		popq	%r15
 586              		.cfi_def_cfa_offset 8
 587 02e3 C3       		ret
 588              	.LVL54:
 589              	.L24:
 590              		.cfi_restore_state
  61:main.cpp      **** 
 591              		.loc 2 61 0
 592 02e4 4889C2   		movq	%rax, %rdx
 593 02e7 660FEFC0 		pxor	%xmm0, %xmm0
 594 02eb 48D1EA   		shrq	%rdx
 595 02ee 83E001   		andl	$1, %eax
 596              	.LVL55:
 597 02f1 4809C2   		orq	%rax, %rdx
 598 02f4 F2480F2A 		cvtsi2sdq	%rdx, %xmm0
 598      C2
 599 02f9 F20F58C0 		addsd	%xmm0, %xmm0
 600 02fd EBBD     		jmp	.L25
 601              	.LVL56:
 602              	.L29:
  65:main.cpp      **** 
 603              		.loc 2 65 0
 604 02ff E8000000 		call	__stack_chk_fail@PLT
 604      00
 605              	.LVL57:
 606              		.cfi_endproc
 607              	.LFE3092:
 609              		.section	.text._ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31EL
 610              		.p2align 4,,15
 611              		.weak	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm25674836
 613              	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11
 614              	.LFB3581:
 615              		.file 5 "/usr/include/c++/7/bits/random.tcc"
   1:/usr/include/c++/7/bits/random.tcc **** // random number generation (out of line) -*- C++ -*-
   2:/usr/include/c++/7/bits/random.tcc **** 
   3:/usr/include/c++/7/bits/random.tcc **** // Copyright (C) 2009-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/random.tcc **** //
   5:/usr/include/c++/7/bits/random.tcc **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/random.tcc **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/random.tcc **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/random.tcc **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/random.tcc **** // any later version.
  10:/usr/include/c++/7/bits/random.tcc **** 
  11:/usr/include/c++/7/bits/random.tcc **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/random.tcc **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/random.tcc **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/random.tcc **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/random.tcc **** 
  16:/usr/include/c++/7/bits/random.tcc **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/random.tcc **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/random.tcc **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/random.tcc **** 
  20:/usr/include/c++/7/bits/random.tcc **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/random.tcc **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/random.tcc **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/random.tcc **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/random.tcc **** 
  25:/usr/include/c++/7/bits/random.tcc **** /** @file bits/random.tcc
  26:/usr/include/c++/7/bits/random.tcc ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/random.tcc ****  *  Do not attempt to use it directly. @headername{random}
  28:/usr/include/c++/7/bits/random.tcc ****  */
  29:/usr/include/c++/7/bits/random.tcc **** 
  30:/usr/include/c++/7/bits/random.tcc **** #ifndef _RANDOM_TCC
  31:/usr/include/c++/7/bits/random.tcc **** #define _RANDOM_TCC 1
  32:/usr/include/c++/7/bits/random.tcc **** 
  33:/usr/include/c++/7/bits/random.tcc **** #include <numeric> // std::accumulate and std::partial_sum
  34:/usr/include/c++/7/bits/random.tcc **** 
  35:/usr/include/c++/7/bits/random.tcc **** namespace std _GLIBCXX_VISIBILITY(default)
  36:/usr/include/c++/7/bits/random.tcc **** {
  37:/usr/include/c++/7/bits/random.tcc ****   /*
  38:/usr/include/c++/7/bits/random.tcc ****    * (Further) implementation-space details.
  39:/usr/include/c++/7/bits/random.tcc ****    */
  40:/usr/include/c++/7/bits/random.tcc ****   namespace __detail
  41:/usr/include/c++/7/bits/random.tcc ****   {
  42:/usr/include/c++/7/bits/random.tcc ****   _GLIBCXX_BEGIN_NAMESPACE_VERSION
  43:/usr/include/c++/7/bits/random.tcc **** 
  44:/usr/include/c++/7/bits/random.tcc ****     // General case for x = (ax + c) mod m -- use Schrage's algorithm
  45:/usr/include/c++/7/bits/random.tcc ****     // to avoid integer overflow.
  46:/usr/include/c++/7/bits/random.tcc ****     //
  47:/usr/include/c++/7/bits/random.tcc ****     // Preconditions:  a > 0, m > 0.
  48:/usr/include/c++/7/bits/random.tcc ****     //
  49:/usr/include/c++/7/bits/random.tcc ****     // Note: only works correctly for __m % __a < __m / __a.
  50:/usr/include/c++/7/bits/random.tcc ****     template<typename _Tp, _Tp __m, _Tp __a, _Tp __c>
  51:/usr/include/c++/7/bits/random.tcc ****       _Tp
  52:/usr/include/c++/7/bits/random.tcc ****       _Mod<_Tp, __m, __a, __c, false, true>::
  53:/usr/include/c++/7/bits/random.tcc ****       __calc(_Tp __x)
  54:/usr/include/c++/7/bits/random.tcc ****       {
  55:/usr/include/c++/7/bits/random.tcc **** 	if (__a == 1)
  56:/usr/include/c++/7/bits/random.tcc **** 	  __x %= __m;
  57:/usr/include/c++/7/bits/random.tcc **** 	else
  58:/usr/include/c++/7/bits/random.tcc **** 	  {
  59:/usr/include/c++/7/bits/random.tcc **** 	    static const _Tp __q = __m / __a;
  60:/usr/include/c++/7/bits/random.tcc **** 	    static const _Tp __r = __m % __a;
  61:/usr/include/c++/7/bits/random.tcc **** 
  62:/usr/include/c++/7/bits/random.tcc **** 	    _Tp __t1 = __a * (__x % __q);
  63:/usr/include/c++/7/bits/random.tcc **** 	    _Tp __t2 = __r * (__x / __q);
  64:/usr/include/c++/7/bits/random.tcc **** 	    if (__t1 >= __t2)
  65:/usr/include/c++/7/bits/random.tcc **** 	      __x = __t1 - __t2;
  66:/usr/include/c++/7/bits/random.tcc **** 	    else
  67:/usr/include/c++/7/bits/random.tcc **** 	      __x = __m - __t2 + __t1;
  68:/usr/include/c++/7/bits/random.tcc **** 	  }
  69:/usr/include/c++/7/bits/random.tcc **** 
  70:/usr/include/c++/7/bits/random.tcc **** 	if (__c != 0)
  71:/usr/include/c++/7/bits/random.tcc **** 	  {
  72:/usr/include/c++/7/bits/random.tcc **** 	    const _Tp __d = __m - __x;
  73:/usr/include/c++/7/bits/random.tcc **** 	    if (__d > __c)
  74:/usr/include/c++/7/bits/random.tcc **** 	      __x += __c;
  75:/usr/include/c++/7/bits/random.tcc **** 	    else
  76:/usr/include/c++/7/bits/random.tcc **** 	      __x = __c - __d;
  77:/usr/include/c++/7/bits/random.tcc **** 	  }
  78:/usr/include/c++/7/bits/random.tcc **** 	return __x;
  79:/usr/include/c++/7/bits/random.tcc ****       }
  80:/usr/include/c++/7/bits/random.tcc **** 
  81:/usr/include/c++/7/bits/random.tcc ****     template<typename _InputIterator, typename _OutputIterator,
  82:/usr/include/c++/7/bits/random.tcc **** 	     typename _Tp>
  83:/usr/include/c++/7/bits/random.tcc ****       _OutputIterator
  84:/usr/include/c++/7/bits/random.tcc ****       __normalize(_InputIterator __first, _InputIterator __last,
  85:/usr/include/c++/7/bits/random.tcc **** 		  _OutputIterator __result, const _Tp& __factor)
  86:/usr/include/c++/7/bits/random.tcc ****       {
  87:/usr/include/c++/7/bits/random.tcc **** 	for (; __first != __last; ++__first, ++__result)
  88:/usr/include/c++/7/bits/random.tcc **** 	  *__result = *__first / __factor;
  89:/usr/include/c++/7/bits/random.tcc **** 	return __result;
  90:/usr/include/c++/7/bits/random.tcc ****       }
  91:/usr/include/c++/7/bits/random.tcc **** 
  92:/usr/include/c++/7/bits/random.tcc ****   _GLIBCXX_END_NAMESPACE_VERSION
  93:/usr/include/c++/7/bits/random.tcc ****   } // namespace __detail
  94:/usr/include/c++/7/bits/random.tcc **** 
  95:/usr/include/c++/7/bits/random.tcc **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  96:/usr/include/c++/7/bits/random.tcc **** 
  97:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
  98:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
  99:/usr/include/c++/7/bits/random.tcc ****     linear_congruential_engine<_UIntType, __a, __c, __m>::multiplier;
 100:/usr/include/c++/7/bits/random.tcc **** 
 101:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 102:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 103:/usr/include/c++/7/bits/random.tcc ****     linear_congruential_engine<_UIntType, __a, __c, __m>::increment;
 104:/usr/include/c++/7/bits/random.tcc **** 
 105:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 106:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 107:/usr/include/c++/7/bits/random.tcc ****     linear_congruential_engine<_UIntType, __a, __c, __m>::modulus;
 108:/usr/include/c++/7/bits/random.tcc **** 
 109:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 110:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 111:/usr/include/c++/7/bits/random.tcc ****     linear_congruential_engine<_UIntType, __a, __c, __m>::default_seed;
 112:/usr/include/c++/7/bits/random.tcc **** 
 113:/usr/include/c++/7/bits/random.tcc ****   /**
 114:/usr/include/c++/7/bits/random.tcc ****    * Seeds the LCR with integral value @p __s, adjusted so that the
 115:/usr/include/c++/7/bits/random.tcc ****    * ring identity is never a member of the convergence set.
 116:/usr/include/c++/7/bits/random.tcc ****    */
 117:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 118:/usr/include/c++/7/bits/random.tcc ****     void
 119:/usr/include/c++/7/bits/random.tcc ****     linear_congruential_engine<_UIntType, __a, __c, __m>::
 120:/usr/include/c++/7/bits/random.tcc ****     seed(result_type __s)
 121:/usr/include/c++/7/bits/random.tcc ****     {
 122:/usr/include/c++/7/bits/random.tcc ****       if ((__detail::__mod<_UIntType, __m>(__c) == 0)
 123:/usr/include/c++/7/bits/random.tcc **** 	  && (__detail::__mod<_UIntType, __m>(__s) == 0))
 124:/usr/include/c++/7/bits/random.tcc **** 	_M_x = 1;
 125:/usr/include/c++/7/bits/random.tcc ****       else
 126:/usr/include/c++/7/bits/random.tcc **** 	_M_x = __detail::__mod<_UIntType, __m>(__s);
 127:/usr/include/c++/7/bits/random.tcc ****     }
 128:/usr/include/c++/7/bits/random.tcc **** 
 129:/usr/include/c++/7/bits/random.tcc ****   /**
 130:/usr/include/c++/7/bits/random.tcc ****    * Seeds the LCR engine with a value generated by @p __q.
 131:/usr/include/c++/7/bits/random.tcc ****    */
 132:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 133:/usr/include/c++/7/bits/random.tcc ****     template<typename _Sseq>
 134:/usr/include/c++/7/bits/random.tcc ****       typename std::enable_if<std::is_class<_Sseq>::value>::type
 135:/usr/include/c++/7/bits/random.tcc ****       linear_congruential_engine<_UIntType, __a, __c, __m>::
 136:/usr/include/c++/7/bits/random.tcc ****       seed(_Sseq& __q)
 137:/usr/include/c++/7/bits/random.tcc ****       {
 138:/usr/include/c++/7/bits/random.tcc **** 	const _UIntType __k0 = __m == 0 ? std::numeric_limits<_UIntType>::digits
 139:/usr/include/c++/7/bits/random.tcc **** 	                                : std::__lg(__m);
 140:/usr/include/c++/7/bits/random.tcc **** 	const _UIntType __k = (__k0 + 31) / 32;
 141:/usr/include/c++/7/bits/random.tcc **** 	uint_least32_t __arr[__k + 3];
 142:/usr/include/c++/7/bits/random.tcc **** 	__q.generate(__arr + 0, __arr + __k + 3);
 143:/usr/include/c++/7/bits/random.tcc **** 	_UIntType __factor = 1u;
 144:/usr/include/c++/7/bits/random.tcc **** 	_UIntType __sum = 0u;
 145:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __j = 0; __j < __k; ++__j)
 146:/usr/include/c++/7/bits/random.tcc **** 	  {
 147:/usr/include/c++/7/bits/random.tcc **** 	    __sum += __arr[__j + 3] * __factor;
 148:/usr/include/c++/7/bits/random.tcc **** 	    __factor *= __detail::_Shift<_UIntType, 32>::__value;
 149:/usr/include/c++/7/bits/random.tcc **** 	  }
 150:/usr/include/c++/7/bits/random.tcc **** 	seed(__sum);
 151:/usr/include/c++/7/bits/random.tcc ****       }
 152:/usr/include/c++/7/bits/random.tcc **** 
 153:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m,
 154:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 155:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 156:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 157:/usr/include/c++/7/bits/random.tcc **** 	       const linear_congruential_engine<_UIntType,
 158:/usr/include/c++/7/bits/random.tcc **** 						__a, __c, __m>& __lcr)
 159:/usr/include/c++/7/bits/random.tcc ****     {
 160:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 161:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 162:/usr/include/c++/7/bits/random.tcc **** 
 163:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 164:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 165:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::dec | __ios_base::fixed | __ios_base::left);
 166:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__os.widen(' '));
 167:/usr/include/c++/7/bits/random.tcc **** 
 168:/usr/include/c++/7/bits/random.tcc ****       __os << __lcr._M_x;
 169:/usr/include/c++/7/bits/random.tcc **** 
 170:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 171:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 172:/usr/include/c++/7/bits/random.tcc ****       return __os;
 173:/usr/include/c++/7/bits/random.tcc ****     }
 174:/usr/include/c++/7/bits/random.tcc **** 
 175:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m,
 176:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 177:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 178:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 179:/usr/include/c++/7/bits/random.tcc **** 	       linear_congruential_engine<_UIntType, __a, __c, __m>& __lcr)
 180:/usr/include/c++/7/bits/random.tcc ****     {
 181:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 182:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 183:/usr/include/c++/7/bits/random.tcc **** 
 184:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 185:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec);
 186:/usr/include/c++/7/bits/random.tcc **** 
 187:/usr/include/c++/7/bits/random.tcc ****       __is >> __lcr._M_x;
 188:/usr/include/c++/7/bits/random.tcc **** 
 189:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 190:/usr/include/c++/7/bits/random.tcc ****       return __is;
 191:/usr/include/c++/7/bits/random.tcc ****     }
 192:/usr/include/c++/7/bits/random.tcc **** 
 193:/usr/include/c++/7/bits/random.tcc **** 
 194:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 195:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 196:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 197:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 198:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 199:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 200:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 201:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::word_size;
 202:/usr/include/c++/7/bits/random.tcc **** 
 203:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 204:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 205:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 206:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 207:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 208:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 209:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 210:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::state_size;
 211:/usr/include/c++/7/bits/random.tcc **** 
 212:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 213:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 214:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 215:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 216:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 217:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 218:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 219:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::shift_size;
 220:/usr/include/c++/7/bits/random.tcc **** 
 221:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 222:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 223:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 224:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 225:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 226:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 227:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 228:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::mask_bits;
 229:/usr/include/c++/7/bits/random.tcc **** 
 230:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 231:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 232:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 233:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 234:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 235:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 236:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 237:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::xor_mask;
 238:/usr/include/c++/7/bits/random.tcc **** 
 239:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 240:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 241:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 242:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 243:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 244:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 245:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 246:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_u;
 247:/usr/include/c++/7/bits/random.tcc ****    
 248:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 249:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 250:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 251:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 252:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 253:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 254:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 255:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_d;
 256:/usr/include/c++/7/bits/random.tcc **** 
 257:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 258:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 259:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 260:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 261:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 262:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 263:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 264:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_s;
 265:/usr/include/c++/7/bits/random.tcc **** 
 266:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 267:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 268:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 269:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 270:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 271:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 272:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 273:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_b;
 274:/usr/include/c++/7/bits/random.tcc **** 
 275:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 276:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 277:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 278:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 279:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 280:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 281:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 282:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_t;
 283:/usr/include/c++/7/bits/random.tcc **** 
 284:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 285:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 286:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 287:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 288:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 289:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 290:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 291:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_c;
 292:/usr/include/c++/7/bits/random.tcc **** 
 293:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 294:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 295:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 296:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 297:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 298:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 299:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 300:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::tempering_l;
 301:/usr/include/c++/7/bits/random.tcc **** 
 302:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 303:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 304:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 305:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 306:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 307:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 308:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 309:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::
 310:/usr/include/c++/7/bits/random.tcc ****                                               initialization_multiplier;
 311:/usr/include/c++/7/bits/random.tcc **** 
 312:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 313:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 314:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 315:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 316:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 317:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 318:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 319:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::default_seed;
 320:/usr/include/c++/7/bits/random.tcc **** 
 321:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 322:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 323:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 324:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 325:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 326:/usr/include/c++/7/bits/random.tcc ****     void
 327:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 328:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::
 329:/usr/include/c++/7/bits/random.tcc ****     seed(result_type __sd)
 330:/usr/include/c++/7/bits/random.tcc ****     {
 331:/usr/include/c++/7/bits/random.tcc ****       _M_x[0] = __detail::__mod<_UIntType,
 332:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Shift<_UIntType, __w>::__value>(__sd);
 333:/usr/include/c++/7/bits/random.tcc **** 
 334:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 1; __i < state_size; ++__i)
 335:/usr/include/c++/7/bits/random.tcc **** 	{
 336:/usr/include/c++/7/bits/random.tcc **** 	  _UIntType __x = _M_x[__i - 1];
 337:/usr/include/c++/7/bits/random.tcc **** 	  __x ^= __x >> (__w - 2);
 338:/usr/include/c++/7/bits/random.tcc **** 	  __x *= __f;
 339:/usr/include/c++/7/bits/random.tcc **** 	  __x += __detail::__mod<_UIntType, __n>(__i);
 340:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__i] = __detail::__mod<_UIntType,
 341:/usr/include/c++/7/bits/random.tcc **** 	    __detail::_Shift<_UIntType, __w>::__value>(__x);
 342:/usr/include/c++/7/bits/random.tcc **** 	}
 343:/usr/include/c++/7/bits/random.tcc ****       _M_p = state_size;
 344:/usr/include/c++/7/bits/random.tcc ****     }
 345:/usr/include/c++/7/bits/random.tcc **** 
 346:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType,
 347:/usr/include/c++/7/bits/random.tcc **** 	   size_t __w, size_t __n, size_t __m, size_t __r,
 348:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 349:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 350:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 351:/usr/include/c++/7/bits/random.tcc ****     template<typename _Sseq>
 352:/usr/include/c++/7/bits/random.tcc ****       typename std::enable_if<std::is_class<_Sseq>::value>::type
 353:/usr/include/c++/7/bits/random.tcc ****       mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 354:/usr/include/c++/7/bits/random.tcc **** 			      __s, __b, __t, __c, __l, __f>::
 355:/usr/include/c++/7/bits/random.tcc ****       seed(_Sseq& __q)
 356:/usr/include/c++/7/bits/random.tcc ****       {
 357:/usr/include/c++/7/bits/random.tcc **** 	const _UIntType __upper_mask = (~_UIntType()) << __r;
 358:/usr/include/c++/7/bits/random.tcc **** 	const size_t __k = (__w + 31) / 32;
 359:/usr/include/c++/7/bits/random.tcc **** 	uint_least32_t __arr[__n * __k];
 360:/usr/include/c++/7/bits/random.tcc **** 	__q.generate(__arr + 0, __arr + __n * __k);
 361:/usr/include/c++/7/bits/random.tcc **** 
 362:/usr/include/c++/7/bits/random.tcc **** 	bool __zero = true;
 363:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __i = 0; __i < state_size; ++__i)
 364:/usr/include/c++/7/bits/random.tcc **** 	  {
 365:/usr/include/c++/7/bits/random.tcc **** 	    _UIntType __factor = 1u;
 366:/usr/include/c++/7/bits/random.tcc **** 	    _UIntType __sum = 0u;
 367:/usr/include/c++/7/bits/random.tcc **** 	    for (size_t __j = 0; __j < __k; ++__j)
 368:/usr/include/c++/7/bits/random.tcc **** 	      {
 369:/usr/include/c++/7/bits/random.tcc **** 		__sum += __arr[__k * __i + __j] * __factor;
 370:/usr/include/c++/7/bits/random.tcc **** 		__factor *= __detail::_Shift<_UIntType, 32>::__value;
 371:/usr/include/c++/7/bits/random.tcc **** 	      }
 372:/usr/include/c++/7/bits/random.tcc **** 	    _M_x[__i] = __detail::__mod<_UIntType,
 373:/usr/include/c++/7/bits/random.tcc **** 	      __detail::_Shift<_UIntType, __w>::__value>(__sum);
 374:/usr/include/c++/7/bits/random.tcc **** 
 375:/usr/include/c++/7/bits/random.tcc **** 	    if (__zero)
 376:/usr/include/c++/7/bits/random.tcc **** 	      {
 377:/usr/include/c++/7/bits/random.tcc **** 		if (__i == 0)
 378:/usr/include/c++/7/bits/random.tcc **** 		  {
 379:/usr/include/c++/7/bits/random.tcc **** 		    if ((_M_x[0] & __upper_mask) != 0u)
 380:/usr/include/c++/7/bits/random.tcc **** 		      __zero = false;
 381:/usr/include/c++/7/bits/random.tcc **** 		  }
 382:/usr/include/c++/7/bits/random.tcc **** 		else if (_M_x[__i] != 0u)
 383:/usr/include/c++/7/bits/random.tcc **** 		  __zero = false;
 384:/usr/include/c++/7/bits/random.tcc **** 	      }
 385:/usr/include/c++/7/bits/random.tcc **** 	  }
 386:/usr/include/c++/7/bits/random.tcc ****         if (__zero)
 387:/usr/include/c++/7/bits/random.tcc ****           _M_x[0] = __detail::_Shift<_UIntType, __w - 1>::__value;
 388:/usr/include/c++/7/bits/random.tcc **** 	_M_p = state_size;
 389:/usr/include/c++/7/bits/random.tcc ****       }
 390:/usr/include/c++/7/bits/random.tcc **** 
 391:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w,
 392:/usr/include/c++/7/bits/random.tcc **** 	   size_t __n, size_t __m, size_t __r,
 393:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 394:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 395:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 396:/usr/include/c++/7/bits/random.tcc ****     void
 397:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 398:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::
 399:/usr/include/c++/7/bits/random.tcc ****     _M_gen_rand(void)
 400:/usr/include/c++/7/bits/random.tcc ****     {
 401:/usr/include/c++/7/bits/random.tcc ****       const _UIntType __upper_mask = (~_UIntType()) << __r;
 402:/usr/include/c++/7/bits/random.tcc ****       const _UIntType __lower_mask = ~__upper_mask;
 403:/usr/include/c++/7/bits/random.tcc **** 
 404:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = 0; __k < (__n - __m); ++__k)
 405:/usr/include/c++/7/bits/random.tcc ****         {
 406:/usr/include/c++/7/bits/random.tcc **** 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
 407:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 408:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
 409:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 410:/usr/include/c++/7/bits/random.tcc ****         }
 411:/usr/include/c++/7/bits/random.tcc **** 
 412:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = (__n - __m); __k < (__n - 1); ++__k)
 413:/usr/include/c++/7/bits/random.tcc **** 	{
 414:/usr/include/c++/7/bits/random.tcc **** 	  _UIntType __y = ((_M_x[__k] & __upper_mask)
 415:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 416:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
 417:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 418:/usr/include/c++/7/bits/random.tcc **** 	}
 419:/usr/include/c++/7/bits/random.tcc **** 
 420:/usr/include/c++/7/bits/random.tcc ****       _UIntType __y = ((_M_x[__n - 1] & __upper_mask)
 421:/usr/include/c++/7/bits/random.tcc **** 		       | (_M_x[0] & __lower_mask));
 422:/usr/include/c++/7/bits/random.tcc ****       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
 423:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 424:/usr/include/c++/7/bits/random.tcc ****       _M_p = 0;
 425:/usr/include/c++/7/bits/random.tcc ****     }
 426:/usr/include/c++/7/bits/random.tcc **** 
 427:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w,
 428:/usr/include/c++/7/bits/random.tcc **** 	   size_t __n, size_t __m, size_t __r,
 429:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 430:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 431:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 432:/usr/include/c++/7/bits/random.tcc ****     void
 433:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 434:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::
 435:/usr/include/c++/7/bits/random.tcc ****     discard(unsigned long long __z)
 436:/usr/include/c++/7/bits/random.tcc ****     {
 437:/usr/include/c++/7/bits/random.tcc ****       while (__z > state_size - _M_p)
 438:/usr/include/c++/7/bits/random.tcc **** 	{
 439:/usr/include/c++/7/bits/random.tcc **** 	  __z -= state_size - _M_p;
 440:/usr/include/c++/7/bits/random.tcc **** 	  _M_gen_rand();
 441:/usr/include/c++/7/bits/random.tcc **** 	}
 442:/usr/include/c++/7/bits/random.tcc ****       _M_p += __z;
 443:/usr/include/c++/7/bits/random.tcc ****     }
 444:/usr/include/c++/7/bits/random.tcc **** 
 445:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w,
 446:/usr/include/c++/7/bits/random.tcc **** 	   size_t __n, size_t __m, size_t __r,
 447:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 448:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 449:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f>
 450:/usr/include/c++/7/bits/random.tcc ****     typename
 451:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 452:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::result_type
 453:/usr/include/c++/7/bits/random.tcc ****     mersenne_twister_engine<_UIntType, __w, __n, __m, __r, __a, __u, __d,
 454:/usr/include/c++/7/bits/random.tcc **** 			    __s, __b, __t, __c, __l, __f>::
 455:/usr/include/c++/7/bits/random.tcc ****     operator()()
 456:/usr/include/c++/7/bits/random.tcc ****     {
 457:/usr/include/c++/7/bits/random.tcc ****       // Reload the vector - cost is O(n) amortized over n calls.
 458:/usr/include/c++/7/bits/random.tcc ****       if (_M_p >= state_size)
 459:/usr/include/c++/7/bits/random.tcc **** 	_M_gen_rand();
 460:/usr/include/c++/7/bits/random.tcc **** 
 461:/usr/include/c++/7/bits/random.tcc ****       // Calculate o(x(i)).
 462:/usr/include/c++/7/bits/random.tcc ****       result_type __z = _M_x[_M_p++];
 463:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z >> __u) & __d;
 464:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z << __s) & __b;
 465:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z << __t) & __c;
 466:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z >> __l);
 467:/usr/include/c++/7/bits/random.tcc **** 
 468:/usr/include/c++/7/bits/random.tcc ****       return __z;
 469:/usr/include/c++/7/bits/random.tcc ****     }
 470:/usr/include/c++/7/bits/random.tcc **** 
 471:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w,
 472:/usr/include/c++/7/bits/random.tcc **** 	   size_t __n, size_t __m, size_t __r,
 473:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 474:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 475:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f, typename _CharT, typename _Traits>
 476:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 477:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 478:/usr/include/c++/7/bits/random.tcc **** 	       const mersenne_twister_engine<_UIntType, __w, __n, __m,
 479:/usr/include/c++/7/bits/random.tcc **** 	       __r, __a, __u, __d, __s, __b, __t, __c, __l, __f>& __x)
 480:/usr/include/c++/7/bits/random.tcc ****     {
 481:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 482:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 483:/usr/include/c++/7/bits/random.tcc **** 
 484:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 485:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 486:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 487:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::dec | __ios_base::fixed | __ios_base::left);
 488:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 489:/usr/include/c++/7/bits/random.tcc **** 
 490:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __n; ++__i)
 491:/usr/include/c++/7/bits/random.tcc **** 	__os << __x._M_x[__i] << __space;
 492:/usr/include/c++/7/bits/random.tcc ****       __os << __x._M_p;
 493:/usr/include/c++/7/bits/random.tcc **** 
 494:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 495:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 496:/usr/include/c++/7/bits/random.tcc ****       return __os;
 497:/usr/include/c++/7/bits/random.tcc ****     }
 498:/usr/include/c++/7/bits/random.tcc **** 
 499:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w,
 500:/usr/include/c++/7/bits/random.tcc **** 	   size_t __n, size_t __m, size_t __r,
 501:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 502:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __b, size_t __t, _UIntType __c, size_t __l,
 503:/usr/include/c++/7/bits/random.tcc **** 	   _UIntType __f, typename _CharT, typename _Traits>
 504:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 505:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 506:/usr/include/c++/7/bits/random.tcc **** 	       mersenne_twister_engine<_UIntType, __w, __n, __m,
 507:/usr/include/c++/7/bits/random.tcc **** 	       __r, __a, __u, __d, __s, __b, __t, __c, __l, __f>& __x)
 508:/usr/include/c++/7/bits/random.tcc ****     {
 509:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 510:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 511:/usr/include/c++/7/bits/random.tcc **** 
 512:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 513:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
 514:/usr/include/c++/7/bits/random.tcc **** 
 515:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __n; ++__i)
 516:/usr/include/c++/7/bits/random.tcc **** 	__is >> __x._M_x[__i];
 517:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_p;
 518:/usr/include/c++/7/bits/random.tcc **** 
 519:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 520:/usr/include/c++/7/bits/random.tcc ****       return __is;
 521:/usr/include/c++/7/bits/random.tcc ****     }
 522:/usr/include/c++/7/bits/random.tcc **** 
 523:/usr/include/c++/7/bits/random.tcc **** 
 524:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 525:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 526:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::word_size;
 527:/usr/include/c++/7/bits/random.tcc **** 
 528:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 529:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 530:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::short_lag;
 531:/usr/include/c++/7/bits/random.tcc **** 
 532:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 533:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 534:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::long_lag;
 535:/usr/include/c++/7/bits/random.tcc **** 
 536:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 537:/usr/include/c++/7/bits/random.tcc ****     constexpr _UIntType
 538:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::default_seed;
 539:/usr/include/c++/7/bits/random.tcc **** 
 540:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 541:/usr/include/c++/7/bits/random.tcc ****     void
 542:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::
 543:/usr/include/c++/7/bits/random.tcc ****     seed(result_type __value)
 544:/usr/include/c++/7/bits/random.tcc ****     {
 545:/usr/include/c++/7/bits/random.tcc ****       std::linear_congruential_engine<result_type, 40014u, 0u, 2147483563u>
 546:/usr/include/c++/7/bits/random.tcc **** 	__lcg(__value == 0u ? default_seed : __value);
 547:/usr/include/c++/7/bits/random.tcc **** 
 548:/usr/include/c++/7/bits/random.tcc ****       const size_t __n = (__w + 31) / 32;
 549:/usr/include/c++/7/bits/random.tcc **** 
 550:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < long_lag; ++__i)
 551:/usr/include/c++/7/bits/random.tcc **** 	{
 552:/usr/include/c++/7/bits/random.tcc **** 	  _UIntType __sum = 0u;
 553:/usr/include/c++/7/bits/random.tcc **** 	  _UIntType __factor = 1u;
 554:/usr/include/c++/7/bits/random.tcc **** 	  for (size_t __j = 0; __j < __n; ++__j)
 555:/usr/include/c++/7/bits/random.tcc **** 	    {
 556:/usr/include/c++/7/bits/random.tcc **** 	      __sum += __detail::__mod<uint_least32_t,
 557:/usr/include/c++/7/bits/random.tcc **** 		       __detail::_Shift<uint_least32_t, 32>::__value>
 558:/usr/include/c++/7/bits/random.tcc **** 			 (__lcg()) * __factor;
 559:/usr/include/c++/7/bits/random.tcc **** 	      __factor *= __detail::_Shift<_UIntType, 32>::__value;
 560:/usr/include/c++/7/bits/random.tcc **** 	    }
 561:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__i] = __detail::__mod<_UIntType,
 562:/usr/include/c++/7/bits/random.tcc **** 	    __detail::_Shift<_UIntType, __w>::__value>(__sum);
 563:/usr/include/c++/7/bits/random.tcc **** 	}
 564:/usr/include/c++/7/bits/random.tcc ****       _M_carry = (_M_x[long_lag - 1] == 0) ? 1 : 0;
 565:/usr/include/c++/7/bits/random.tcc ****       _M_p = 0;
 566:/usr/include/c++/7/bits/random.tcc ****     }
 567:/usr/include/c++/7/bits/random.tcc **** 
 568:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 569:/usr/include/c++/7/bits/random.tcc ****     template<typename _Sseq>
 570:/usr/include/c++/7/bits/random.tcc ****       typename std::enable_if<std::is_class<_Sseq>::value>::type
 571:/usr/include/c++/7/bits/random.tcc ****       subtract_with_carry_engine<_UIntType, __w, __s, __r>::
 572:/usr/include/c++/7/bits/random.tcc ****       seed(_Sseq& __q)
 573:/usr/include/c++/7/bits/random.tcc ****       {
 574:/usr/include/c++/7/bits/random.tcc **** 	const size_t __k = (__w + 31) / 32;
 575:/usr/include/c++/7/bits/random.tcc **** 	uint_least32_t __arr[__r * __k];
 576:/usr/include/c++/7/bits/random.tcc **** 	__q.generate(__arr + 0, __arr + __r * __k);
 577:/usr/include/c++/7/bits/random.tcc **** 
 578:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __i = 0; __i < long_lag; ++__i)
 579:/usr/include/c++/7/bits/random.tcc **** 	  {
 580:/usr/include/c++/7/bits/random.tcc **** 	    _UIntType __sum = 0u;
 581:/usr/include/c++/7/bits/random.tcc **** 	    _UIntType __factor = 1u;
 582:/usr/include/c++/7/bits/random.tcc **** 	    for (size_t __j = 0; __j < __k; ++__j)
 583:/usr/include/c++/7/bits/random.tcc **** 	      {
 584:/usr/include/c++/7/bits/random.tcc **** 		__sum += __arr[__k * __i + __j] * __factor;
 585:/usr/include/c++/7/bits/random.tcc **** 		__factor *= __detail::_Shift<_UIntType, 32>::__value;
 586:/usr/include/c++/7/bits/random.tcc **** 	      }
 587:/usr/include/c++/7/bits/random.tcc **** 	    _M_x[__i] = __detail::__mod<_UIntType,
 588:/usr/include/c++/7/bits/random.tcc **** 	      __detail::_Shift<_UIntType, __w>::__value>(__sum);
 589:/usr/include/c++/7/bits/random.tcc **** 	  }
 590:/usr/include/c++/7/bits/random.tcc **** 	_M_carry = (_M_x[long_lag - 1] == 0) ? 1 : 0;
 591:/usr/include/c++/7/bits/random.tcc **** 	_M_p = 0;
 592:/usr/include/c++/7/bits/random.tcc ****       }
 593:/usr/include/c++/7/bits/random.tcc **** 
 594:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 595:/usr/include/c++/7/bits/random.tcc ****     typename subtract_with_carry_engine<_UIntType, __w, __s, __r>::
 596:/usr/include/c++/7/bits/random.tcc **** 	     result_type
 597:/usr/include/c++/7/bits/random.tcc ****     subtract_with_carry_engine<_UIntType, __w, __s, __r>::
 598:/usr/include/c++/7/bits/random.tcc ****     operator()()
 599:/usr/include/c++/7/bits/random.tcc ****     {
 600:/usr/include/c++/7/bits/random.tcc ****       // Derive short lag index from current index.
 601:/usr/include/c++/7/bits/random.tcc ****       long __ps = _M_p - short_lag;
 602:/usr/include/c++/7/bits/random.tcc ****       if (__ps < 0)
 603:/usr/include/c++/7/bits/random.tcc **** 	__ps += long_lag;
 604:/usr/include/c++/7/bits/random.tcc **** 
 605:/usr/include/c++/7/bits/random.tcc ****       // Calculate new x(i) without overflow or division.
 606:/usr/include/c++/7/bits/random.tcc ****       // NB: Thanks to the requirements for _UIntType, _M_x[_M_p] + _M_carry
 607:/usr/include/c++/7/bits/random.tcc ****       // cannot overflow.
 608:/usr/include/c++/7/bits/random.tcc ****       _UIntType __xi;
 609:/usr/include/c++/7/bits/random.tcc ****       if (_M_x[__ps] >= _M_x[_M_p] + _M_carry)
 610:/usr/include/c++/7/bits/random.tcc **** 	{
 611:/usr/include/c++/7/bits/random.tcc **** 	  __xi = _M_x[__ps] - _M_x[_M_p] - _M_carry;
 612:/usr/include/c++/7/bits/random.tcc **** 	  _M_carry = 0;
 613:/usr/include/c++/7/bits/random.tcc **** 	}
 614:/usr/include/c++/7/bits/random.tcc ****       else
 615:/usr/include/c++/7/bits/random.tcc **** 	{
 616:/usr/include/c++/7/bits/random.tcc **** 	  __xi = (__detail::_Shift<_UIntType, __w>::__value
 617:/usr/include/c++/7/bits/random.tcc **** 		  - _M_x[_M_p] - _M_carry + _M_x[__ps]);
 618:/usr/include/c++/7/bits/random.tcc **** 	  _M_carry = 1;
 619:/usr/include/c++/7/bits/random.tcc **** 	}
 620:/usr/include/c++/7/bits/random.tcc ****       _M_x[_M_p] = __xi;
 621:/usr/include/c++/7/bits/random.tcc **** 
 622:/usr/include/c++/7/bits/random.tcc ****       // Adjust current index to loop around in ring buffer.
 623:/usr/include/c++/7/bits/random.tcc ****       if (++_M_p >= long_lag)
 624:/usr/include/c++/7/bits/random.tcc **** 	_M_p = 0;
 625:/usr/include/c++/7/bits/random.tcc **** 
 626:/usr/include/c++/7/bits/random.tcc ****       return __xi;
 627:/usr/include/c++/7/bits/random.tcc ****     }
 628:/usr/include/c++/7/bits/random.tcc **** 
 629:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r,
 630:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 631:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 632:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 633:/usr/include/c++/7/bits/random.tcc **** 	       const subtract_with_carry_engine<_UIntType,
 634:/usr/include/c++/7/bits/random.tcc **** 						__w, __s, __r>& __x)
 635:/usr/include/c++/7/bits/random.tcc ****     {
 636:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 637:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 638:/usr/include/c++/7/bits/random.tcc **** 
 639:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 640:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 641:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 642:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::dec | __ios_base::fixed | __ios_base::left);
 643:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 644:/usr/include/c++/7/bits/random.tcc **** 
 645:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __r; ++__i)
 646:/usr/include/c++/7/bits/random.tcc **** 	__os << __x._M_x[__i] << __space;
 647:/usr/include/c++/7/bits/random.tcc ****       __os << __x._M_carry << __space << __x._M_p;
 648:/usr/include/c++/7/bits/random.tcc **** 
 649:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 650:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 651:/usr/include/c++/7/bits/random.tcc ****       return __os;
 652:/usr/include/c++/7/bits/random.tcc ****     }
 653:/usr/include/c++/7/bits/random.tcc **** 
 654:/usr/include/c++/7/bits/random.tcc ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r,
 655:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 656:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 657:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 658:/usr/include/c++/7/bits/random.tcc **** 	       subtract_with_carry_engine<_UIntType, __w, __s, __r>& __x)
 659:/usr/include/c++/7/bits/random.tcc ****     {
 660:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __istream_type;
 661:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 662:/usr/include/c++/7/bits/random.tcc **** 
 663:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 664:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
 665:/usr/include/c++/7/bits/random.tcc **** 
 666:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __r; ++__i)
 667:/usr/include/c++/7/bits/random.tcc **** 	__is >> __x._M_x[__i];
 668:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_carry;
 669:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_p;
 670:/usr/include/c++/7/bits/random.tcc **** 
 671:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 672:/usr/include/c++/7/bits/random.tcc ****       return __is;
 673:/usr/include/c++/7/bits/random.tcc ****     }
 674:/usr/include/c++/7/bits/random.tcc **** 
 675:/usr/include/c++/7/bits/random.tcc **** 
 676:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __p, size_t __r>
 677:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 678:/usr/include/c++/7/bits/random.tcc ****     discard_block_engine<_RandomNumberEngine, __p, __r>::block_size;
 679:/usr/include/c++/7/bits/random.tcc **** 
 680:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __p, size_t __r>
 681:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 682:/usr/include/c++/7/bits/random.tcc ****     discard_block_engine<_RandomNumberEngine, __p, __r>::used_block;
 683:/usr/include/c++/7/bits/random.tcc **** 
 684:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __p, size_t __r>
 685:/usr/include/c++/7/bits/random.tcc ****     typename discard_block_engine<_RandomNumberEngine,
 686:/usr/include/c++/7/bits/random.tcc **** 			   __p, __r>::result_type
 687:/usr/include/c++/7/bits/random.tcc ****     discard_block_engine<_RandomNumberEngine, __p, __r>::
 688:/usr/include/c++/7/bits/random.tcc ****     operator()()
 689:/usr/include/c++/7/bits/random.tcc ****     {
 690:/usr/include/c++/7/bits/random.tcc ****       if (_M_n >= used_block)
 691:/usr/include/c++/7/bits/random.tcc **** 	{
 692:/usr/include/c++/7/bits/random.tcc **** 	  _M_b.discard(block_size - _M_n);
 693:/usr/include/c++/7/bits/random.tcc **** 	  _M_n = 0;
 694:/usr/include/c++/7/bits/random.tcc **** 	}
 695:/usr/include/c++/7/bits/random.tcc ****       ++_M_n;
 696:/usr/include/c++/7/bits/random.tcc ****       return _M_b();
 697:/usr/include/c++/7/bits/random.tcc ****     }
 698:/usr/include/c++/7/bits/random.tcc **** 
 699:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __p, size_t __r,
 700:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 701:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 702:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 703:/usr/include/c++/7/bits/random.tcc **** 	       const discard_block_engine<_RandomNumberEngine,
 704:/usr/include/c++/7/bits/random.tcc **** 	       __p, __r>& __x)
 705:/usr/include/c++/7/bits/random.tcc ****     {
 706:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 707:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 708:/usr/include/c++/7/bits/random.tcc **** 
 709:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 710:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 711:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 712:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::dec | __ios_base::fixed | __ios_base::left);
 713:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 714:/usr/include/c++/7/bits/random.tcc **** 
 715:/usr/include/c++/7/bits/random.tcc ****       __os << __x.base() << __space << __x._M_n;
 716:/usr/include/c++/7/bits/random.tcc **** 
 717:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 718:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 719:/usr/include/c++/7/bits/random.tcc ****       return __os;
 720:/usr/include/c++/7/bits/random.tcc ****     }
 721:/usr/include/c++/7/bits/random.tcc **** 
 722:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __p, size_t __r,
 723:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 724:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 725:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 726:/usr/include/c++/7/bits/random.tcc **** 	       discard_block_engine<_RandomNumberEngine, __p, __r>& __x)
 727:/usr/include/c++/7/bits/random.tcc ****     {
 728:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 729:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 730:/usr/include/c++/7/bits/random.tcc **** 
 731:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 732:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
 733:/usr/include/c++/7/bits/random.tcc **** 
 734:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_b >> __x._M_n;
 735:/usr/include/c++/7/bits/random.tcc **** 
 736:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 737:/usr/include/c++/7/bits/random.tcc ****       return __is;
 738:/usr/include/c++/7/bits/random.tcc ****     }
 739:/usr/include/c++/7/bits/random.tcc **** 
 740:/usr/include/c++/7/bits/random.tcc **** 
 741:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __w, typename _UIntType>
 742:/usr/include/c++/7/bits/random.tcc ****     typename independent_bits_engine<_RandomNumberEngine, __w, _UIntType>::
 743:/usr/include/c++/7/bits/random.tcc ****       result_type
 744:/usr/include/c++/7/bits/random.tcc ****     independent_bits_engine<_RandomNumberEngine, __w, _UIntType>::
 745:/usr/include/c++/7/bits/random.tcc ****     operator()()
 746:/usr/include/c++/7/bits/random.tcc ****     {
 747:/usr/include/c++/7/bits/random.tcc ****       typedef typename _RandomNumberEngine::result_type _Eresult_type;
 748:/usr/include/c++/7/bits/random.tcc ****       const _Eresult_type __r
 749:/usr/include/c++/7/bits/random.tcc **** 	= (_M_b.max() - _M_b.min() < std::numeric_limits<_Eresult_type>::max()
 750:/usr/include/c++/7/bits/random.tcc **** 	   ? _M_b.max() - _M_b.min() + 1 : 0);
 751:/usr/include/c++/7/bits/random.tcc ****       const unsigned __edig = std::numeric_limits<_Eresult_type>::digits;
 752:/usr/include/c++/7/bits/random.tcc ****       const unsigned __m = __r ? std::__lg(__r) : __edig;
 753:/usr/include/c++/7/bits/random.tcc **** 
 754:/usr/include/c++/7/bits/random.tcc ****       typedef typename std::common_type<_Eresult_type, result_type>::type
 755:/usr/include/c++/7/bits/random.tcc **** 	__ctype;
 756:/usr/include/c++/7/bits/random.tcc ****       const unsigned __cdig = std::numeric_limits<__ctype>::digits;
 757:/usr/include/c++/7/bits/random.tcc **** 
 758:/usr/include/c++/7/bits/random.tcc ****       unsigned __n, __n0;
 759:/usr/include/c++/7/bits/random.tcc ****       __ctype __s0, __s1, __y0, __y1;
 760:/usr/include/c++/7/bits/random.tcc **** 
 761:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < 2; ++__i)
 762:/usr/include/c++/7/bits/random.tcc **** 	{
 763:/usr/include/c++/7/bits/random.tcc **** 	  __n = (__w + __m - 1) / __m + __i;
 764:/usr/include/c++/7/bits/random.tcc **** 	  __n0 = __n - __w % __n;
 765:/usr/include/c++/7/bits/random.tcc **** 	  const unsigned __w0 = __w / __n;  // __w0 <= __m
 766:/usr/include/c++/7/bits/random.tcc **** 
 767:/usr/include/c++/7/bits/random.tcc **** 	  __s0 = 0;
 768:/usr/include/c++/7/bits/random.tcc **** 	  __s1 = 0;
 769:/usr/include/c++/7/bits/random.tcc **** 	  if (__w0 < __cdig)
 770:/usr/include/c++/7/bits/random.tcc **** 	    {
 771:/usr/include/c++/7/bits/random.tcc **** 	      __s0 = __ctype(1) << __w0;
 772:/usr/include/c++/7/bits/random.tcc **** 	      __s1 = __s0 << 1;
 773:/usr/include/c++/7/bits/random.tcc **** 	    }
 774:/usr/include/c++/7/bits/random.tcc **** 
 775:/usr/include/c++/7/bits/random.tcc **** 	  __y0 = 0;
 776:/usr/include/c++/7/bits/random.tcc **** 	  __y1 = 0;
 777:/usr/include/c++/7/bits/random.tcc **** 	  if (__r)
 778:/usr/include/c++/7/bits/random.tcc **** 	    {
 779:/usr/include/c++/7/bits/random.tcc **** 	      __y0 = __s0 * (__r / __s0);
 780:/usr/include/c++/7/bits/random.tcc **** 	      if (__s1)
 781:/usr/include/c++/7/bits/random.tcc **** 		__y1 = __s1 * (__r / __s1);
 782:/usr/include/c++/7/bits/random.tcc **** 
 783:/usr/include/c++/7/bits/random.tcc **** 	      if (__r - __y0 <= __y0 / __n)
 784:/usr/include/c++/7/bits/random.tcc **** 		break;
 785:/usr/include/c++/7/bits/random.tcc **** 	    }
 786:/usr/include/c++/7/bits/random.tcc **** 	  else
 787:/usr/include/c++/7/bits/random.tcc **** 	    break;
 788:/usr/include/c++/7/bits/random.tcc **** 	}
 789:/usr/include/c++/7/bits/random.tcc **** 
 790:/usr/include/c++/7/bits/random.tcc ****       result_type __sum = 0;
 791:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = 0; __k < __n0; ++__k)
 792:/usr/include/c++/7/bits/random.tcc **** 	{
 793:/usr/include/c++/7/bits/random.tcc **** 	  __ctype __u;
 794:/usr/include/c++/7/bits/random.tcc **** 	  do
 795:/usr/include/c++/7/bits/random.tcc **** 	    __u = _M_b() - _M_b.min();
 796:/usr/include/c++/7/bits/random.tcc **** 	  while (__y0 && __u >= __y0);
 797:/usr/include/c++/7/bits/random.tcc **** 	  __sum = __s0 * __sum + (__s0 ? __u % __s0 : __u);
 798:/usr/include/c++/7/bits/random.tcc **** 	}
 799:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = __n0; __k < __n; ++__k)
 800:/usr/include/c++/7/bits/random.tcc **** 	{
 801:/usr/include/c++/7/bits/random.tcc **** 	  __ctype __u;
 802:/usr/include/c++/7/bits/random.tcc **** 	  do
 803:/usr/include/c++/7/bits/random.tcc **** 	    __u = _M_b() - _M_b.min();
 804:/usr/include/c++/7/bits/random.tcc **** 	  while (__y1 && __u >= __y1);
 805:/usr/include/c++/7/bits/random.tcc **** 	  __sum = __s1 * __sum + (__s1 ? __u % __s1 : __u);
 806:/usr/include/c++/7/bits/random.tcc **** 	}
 807:/usr/include/c++/7/bits/random.tcc ****       return __sum;
 808:/usr/include/c++/7/bits/random.tcc ****     }
 809:/usr/include/c++/7/bits/random.tcc **** 
 810:/usr/include/c++/7/bits/random.tcc **** 
 811:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __k>
 812:/usr/include/c++/7/bits/random.tcc ****     constexpr size_t
 813:/usr/include/c++/7/bits/random.tcc ****     shuffle_order_engine<_RandomNumberEngine, __k>::table_size;
 814:/usr/include/c++/7/bits/random.tcc **** 
 815:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __k>
 816:/usr/include/c++/7/bits/random.tcc ****     typename shuffle_order_engine<_RandomNumberEngine, __k>::result_type
 817:/usr/include/c++/7/bits/random.tcc ****     shuffle_order_engine<_RandomNumberEngine, __k>::
 818:/usr/include/c++/7/bits/random.tcc ****     operator()()
 819:/usr/include/c++/7/bits/random.tcc ****     {
 820:/usr/include/c++/7/bits/random.tcc ****       size_t __j = __k * ((_M_y - _M_b.min())
 821:/usr/include/c++/7/bits/random.tcc **** 			  / (_M_b.max() - _M_b.min() + 1.0L));
 822:/usr/include/c++/7/bits/random.tcc ****       _M_y = _M_v[__j];
 823:/usr/include/c++/7/bits/random.tcc ****       _M_v[__j] = _M_b();
 824:/usr/include/c++/7/bits/random.tcc **** 
 825:/usr/include/c++/7/bits/random.tcc ****       return _M_y;
 826:/usr/include/c++/7/bits/random.tcc ****     }
 827:/usr/include/c++/7/bits/random.tcc **** 
 828:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __k,
 829:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 830:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 831:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 832:/usr/include/c++/7/bits/random.tcc **** 	       const shuffle_order_engine<_RandomNumberEngine, __k>& __x)
 833:/usr/include/c++/7/bits/random.tcc ****     {
 834:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 835:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 836:/usr/include/c++/7/bits/random.tcc **** 
 837:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 838:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 839:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 840:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::dec | __ios_base::fixed | __ios_base::left);
 841:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 842:/usr/include/c++/7/bits/random.tcc **** 
 843:/usr/include/c++/7/bits/random.tcc ****       __os << __x.base();
 844:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __k; ++__i)
 845:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << __x._M_v[__i];
 846:/usr/include/c++/7/bits/random.tcc ****       __os << __space << __x._M_y;
 847:/usr/include/c++/7/bits/random.tcc **** 
 848:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 849:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 850:/usr/include/c++/7/bits/random.tcc ****       return __os;
 851:/usr/include/c++/7/bits/random.tcc ****     }
 852:/usr/include/c++/7/bits/random.tcc **** 
 853:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomNumberEngine, size_t __k,
 854:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
 855:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 856:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 857:/usr/include/c++/7/bits/random.tcc **** 	       shuffle_order_engine<_RandomNumberEngine, __k>& __x)
 858:/usr/include/c++/7/bits/random.tcc ****     {
 859:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 860:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 861:/usr/include/c++/7/bits/random.tcc **** 
 862:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 863:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
 864:/usr/include/c++/7/bits/random.tcc **** 
 865:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_b;
 866:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __k; ++__i)
 867:/usr/include/c++/7/bits/random.tcc **** 	__is >> __x._M_v[__i];
 868:/usr/include/c++/7/bits/random.tcc ****       __is >> __x._M_y;
 869:/usr/include/c++/7/bits/random.tcc **** 
 870:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 871:/usr/include/c++/7/bits/random.tcc ****       return __is;
 872:/usr/include/c++/7/bits/random.tcc ****     }
 873:/usr/include/c++/7/bits/random.tcc **** 
 874:/usr/include/c++/7/bits/random.tcc **** 
 875:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
 876:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 877:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 878:/usr/include/c++/7/bits/random.tcc **** 	       const uniform_int_distribution<_IntType>& __x)
 879:/usr/include/c++/7/bits/random.tcc ****     {
 880:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 881:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 882:/usr/include/c++/7/bits/random.tcc **** 
 883:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 884:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 885:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 886:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
 887:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 888:/usr/include/c++/7/bits/random.tcc **** 
 889:/usr/include/c++/7/bits/random.tcc ****       __os << __x.a() << __space << __x.b();
 890:/usr/include/c++/7/bits/random.tcc **** 
 891:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 892:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 893:/usr/include/c++/7/bits/random.tcc ****       return __os;
 894:/usr/include/c++/7/bits/random.tcc ****     }
 895:/usr/include/c++/7/bits/random.tcc **** 
 896:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
 897:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 898:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 899:/usr/include/c++/7/bits/random.tcc **** 	       uniform_int_distribution<_IntType>& __x)
 900:/usr/include/c++/7/bits/random.tcc ****     {
 901:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 902:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 903:/usr/include/c++/7/bits/random.tcc **** 
 904:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 905:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
 906:/usr/include/c++/7/bits/random.tcc **** 
 907:/usr/include/c++/7/bits/random.tcc ****       _IntType __a, __b;
 908:/usr/include/c++/7/bits/random.tcc ****       __is >> __a >> __b;
 909:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename uniform_int_distribution<_IntType>::
 910:/usr/include/c++/7/bits/random.tcc **** 		param_type(__a, __b));
 911:/usr/include/c++/7/bits/random.tcc **** 
 912:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 913:/usr/include/c++/7/bits/random.tcc ****       return __is;
 914:/usr/include/c++/7/bits/random.tcc ****     }
 915:/usr/include/c++/7/bits/random.tcc **** 
 916:/usr/include/c++/7/bits/random.tcc **** 
 917:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
 918:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
 919:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
 920:/usr/include/c++/7/bits/random.tcc ****       void
 921:/usr/include/c++/7/bits/random.tcc ****       uniform_real_distribution<_RealType>::
 922:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
 923:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
 924:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
 925:/usr/include/c++/7/bits/random.tcc ****       {
 926:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
 927:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
 928:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
 929:/usr/include/c++/7/bits/random.tcc **** 	auto __range = __p.b() - __p.a();
 930:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
 931:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = __aurng() * __range + __p.a();
 932:/usr/include/c++/7/bits/random.tcc ****       }
 933:/usr/include/c++/7/bits/random.tcc **** 
 934:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
 935:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 936:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 937:/usr/include/c++/7/bits/random.tcc **** 	       const uniform_real_distribution<_RealType>& __x)
 938:/usr/include/c++/7/bits/random.tcc ****     {
 939:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
 940:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
 941:/usr/include/c++/7/bits/random.tcc **** 
 942:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
 943:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
 944:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
 945:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
 946:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
 947:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
 948:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
 949:/usr/include/c++/7/bits/random.tcc **** 
 950:/usr/include/c++/7/bits/random.tcc ****       __os << __x.a() << __space << __x.b();
 951:/usr/include/c++/7/bits/random.tcc **** 
 952:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
 953:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
 954:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
 955:/usr/include/c++/7/bits/random.tcc ****       return __os;
 956:/usr/include/c++/7/bits/random.tcc ****     }
 957:/usr/include/c++/7/bits/random.tcc **** 
 958:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
 959:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
 960:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
 961:/usr/include/c++/7/bits/random.tcc **** 	       uniform_real_distribution<_RealType>& __x)
 962:/usr/include/c++/7/bits/random.tcc ****     {
 963:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
 964:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
 965:/usr/include/c++/7/bits/random.tcc **** 
 966:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
 967:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::skipws);
 968:/usr/include/c++/7/bits/random.tcc **** 
 969:/usr/include/c++/7/bits/random.tcc ****       _RealType __a, __b;
 970:/usr/include/c++/7/bits/random.tcc ****       __is >> __a >> __b;
 971:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename uniform_real_distribution<_RealType>::
 972:/usr/include/c++/7/bits/random.tcc **** 		param_type(__a, __b));
 973:/usr/include/c++/7/bits/random.tcc **** 
 974:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
 975:/usr/include/c++/7/bits/random.tcc ****       return __is;
 976:/usr/include/c++/7/bits/random.tcc ****     }
 977:/usr/include/c++/7/bits/random.tcc **** 
 978:/usr/include/c++/7/bits/random.tcc **** 
 979:/usr/include/c++/7/bits/random.tcc ****   template<typename _ForwardIterator,
 980:/usr/include/c++/7/bits/random.tcc **** 	   typename _UniformRandomNumberGenerator>
 981:/usr/include/c++/7/bits/random.tcc ****     void
 982:/usr/include/c++/7/bits/random.tcc ****     std::bernoulli_distribution::
 983:/usr/include/c++/7/bits/random.tcc ****     __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
 984:/usr/include/c++/7/bits/random.tcc **** 		    _UniformRandomNumberGenerator& __urng,
 985:/usr/include/c++/7/bits/random.tcc **** 		    const param_type& __p)
 986:/usr/include/c++/7/bits/random.tcc ****     {
 987:/usr/include/c++/7/bits/random.tcc ****       __glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
 988:/usr/include/c++/7/bits/random.tcc ****       __detail::_Adaptor<_UniformRandomNumberGenerator, double>
 989:/usr/include/c++/7/bits/random.tcc **** 	__aurng(__urng);
 990:/usr/include/c++/7/bits/random.tcc ****       auto __limit = __p.p() * (__aurng.max() - __aurng.min());
 991:/usr/include/c++/7/bits/random.tcc **** 
 992:/usr/include/c++/7/bits/random.tcc ****       while (__f != __t)
 993:/usr/include/c++/7/bits/random.tcc **** 	*__f++ = (__aurng() - __aurng.min()) < __limit;
 994:/usr/include/c++/7/bits/random.tcc ****     }
 995:/usr/include/c++/7/bits/random.tcc **** 
 996:/usr/include/c++/7/bits/random.tcc ****   template<typename _CharT, typename _Traits>
 997:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
 998:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 999:/usr/include/c++/7/bits/random.tcc **** 	       const bernoulli_distribution& __x)
1000:/usr/include/c++/7/bits/random.tcc ****     {
1001:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1002:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1003:/usr/include/c++/7/bits/random.tcc **** 
1004:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1005:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1006:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1007:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1008:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__os.widen(' '));
1009:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
1010:/usr/include/c++/7/bits/random.tcc **** 
1011:/usr/include/c++/7/bits/random.tcc ****       __os << __x.p();
1012:/usr/include/c++/7/bits/random.tcc **** 
1013:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1014:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1015:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1016:/usr/include/c++/7/bits/random.tcc ****       return __os;
1017:/usr/include/c++/7/bits/random.tcc ****     }
1018:/usr/include/c++/7/bits/random.tcc **** 
1019:/usr/include/c++/7/bits/random.tcc **** 
1020:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1021:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1022:/usr/include/c++/7/bits/random.tcc ****       typename geometric_distribution<_IntType>::result_type
1023:/usr/include/c++/7/bits/random.tcc ****       geometric_distribution<_IntType>::
1024:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
1025:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
1026:/usr/include/c++/7/bits/random.tcc ****       {
1027:/usr/include/c++/7/bits/random.tcc **** 	// About the epsilon thing see this thread:
1028:/usr/include/c++/7/bits/random.tcc **** 	// http://gcc.gnu.org/ml/gcc-patches/2006-10/msg00971.html
1029:/usr/include/c++/7/bits/random.tcc **** 	const double __naf =
1030:/usr/include/c++/7/bits/random.tcc **** 	  (1 - std::numeric_limits<double>::epsilon()) / 2;
1031:/usr/include/c++/7/bits/random.tcc **** 	// The largest _RealType convertible to _IntType.
1032:/usr/include/c++/7/bits/random.tcc **** 	const double __thr =
1033:/usr/include/c++/7/bits/random.tcc **** 	  std::numeric_limits<_IntType>::max() + __naf;
1034:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
1035:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1036:/usr/include/c++/7/bits/random.tcc **** 
1037:/usr/include/c++/7/bits/random.tcc **** 	double __cand;
1038:/usr/include/c++/7/bits/random.tcc **** 	do
1039:/usr/include/c++/7/bits/random.tcc **** 	  __cand = std::floor(std::log(1.0 - __aurng()) / __param._M_log_1_p);
1040:/usr/include/c++/7/bits/random.tcc **** 	while (__cand >= __thr);
1041:/usr/include/c++/7/bits/random.tcc **** 
1042:/usr/include/c++/7/bits/random.tcc **** 	return result_type(__cand + __naf);
1043:/usr/include/c++/7/bits/random.tcc ****       }
1044:/usr/include/c++/7/bits/random.tcc **** 
1045:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1046:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1047:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1048:/usr/include/c++/7/bits/random.tcc ****       void
1049:/usr/include/c++/7/bits/random.tcc ****       geometric_distribution<_IntType>::
1050:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1051:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1052:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
1053:/usr/include/c++/7/bits/random.tcc ****       {
1054:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1055:/usr/include/c++/7/bits/random.tcc **** 	// About the epsilon thing see this thread:
1056:/usr/include/c++/7/bits/random.tcc **** 	// http://gcc.gnu.org/ml/gcc-patches/2006-10/msg00971.html
1057:/usr/include/c++/7/bits/random.tcc **** 	const double __naf =
1058:/usr/include/c++/7/bits/random.tcc **** 	  (1 - std::numeric_limits<double>::epsilon()) / 2;
1059:/usr/include/c++/7/bits/random.tcc **** 	// The largest _RealType convertible to _IntType.
1060:/usr/include/c++/7/bits/random.tcc **** 	const double __thr =
1061:/usr/include/c++/7/bits/random.tcc **** 	  std::numeric_limits<_IntType>::max() + __naf;
1062:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
1063:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1064:/usr/include/c++/7/bits/random.tcc **** 
1065:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1066:/usr/include/c++/7/bits/random.tcc **** 	  {
1067:/usr/include/c++/7/bits/random.tcc **** 	    double __cand;
1068:/usr/include/c++/7/bits/random.tcc **** 	    do
1069:/usr/include/c++/7/bits/random.tcc **** 	      __cand = std::floor(std::log(1.0 - __aurng())
1070:/usr/include/c++/7/bits/random.tcc **** 				  / __param._M_log_1_p);
1071:/usr/include/c++/7/bits/random.tcc **** 	    while (__cand >= __thr);
1072:/usr/include/c++/7/bits/random.tcc **** 
1073:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __cand + __naf;
1074:/usr/include/c++/7/bits/random.tcc **** 	  }
1075:/usr/include/c++/7/bits/random.tcc ****       }
1076:/usr/include/c++/7/bits/random.tcc **** 
1077:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1078:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1079:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1080:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1081:/usr/include/c++/7/bits/random.tcc **** 	       const geometric_distribution<_IntType>& __x)
1082:/usr/include/c++/7/bits/random.tcc ****     {
1083:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1084:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1085:/usr/include/c++/7/bits/random.tcc **** 
1086:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1087:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1088:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1089:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1090:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__os.widen(' '));
1091:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
1092:/usr/include/c++/7/bits/random.tcc **** 
1093:/usr/include/c++/7/bits/random.tcc ****       __os << __x.p();
1094:/usr/include/c++/7/bits/random.tcc **** 
1095:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1096:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1097:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1098:/usr/include/c++/7/bits/random.tcc ****       return __os;
1099:/usr/include/c++/7/bits/random.tcc ****     }
1100:/usr/include/c++/7/bits/random.tcc **** 
1101:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1102:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1103:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1104:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1105:/usr/include/c++/7/bits/random.tcc **** 	       geometric_distribution<_IntType>& __x)
1106:/usr/include/c++/7/bits/random.tcc ****     {
1107:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1108:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1109:/usr/include/c++/7/bits/random.tcc **** 
1110:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1111:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::skipws);
1112:/usr/include/c++/7/bits/random.tcc **** 
1113:/usr/include/c++/7/bits/random.tcc ****       double __p;
1114:/usr/include/c++/7/bits/random.tcc ****       __is >> __p;
1115:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename geometric_distribution<_IntType>::param_type(__p));
1116:/usr/include/c++/7/bits/random.tcc **** 
1117:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1118:/usr/include/c++/7/bits/random.tcc ****       return __is;
1119:/usr/include/c++/7/bits/random.tcc ****     }
1120:/usr/include/c++/7/bits/random.tcc **** 
1121:/usr/include/c++/7/bits/random.tcc ****   // This is Leger's algorithm, also in Devroye, Ch. X, Example 1.5.
1122:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1123:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1124:/usr/include/c++/7/bits/random.tcc ****       typename negative_binomial_distribution<_IntType>::result_type
1125:/usr/include/c++/7/bits/random.tcc ****       negative_binomial_distribution<_IntType>::
1126:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng)
1127:/usr/include/c++/7/bits/random.tcc ****       {
1128:/usr/include/c++/7/bits/random.tcc **** 	const double __y = _M_gd(__urng);
1129:/usr/include/c++/7/bits/random.tcc **** 
1130:/usr/include/c++/7/bits/random.tcc **** 	// XXX Is the constructor too slow?
1131:/usr/include/c++/7/bits/random.tcc **** 	std::poisson_distribution<result_type> __poisson(__y);
1132:/usr/include/c++/7/bits/random.tcc **** 	return __poisson(__urng);
1133:/usr/include/c++/7/bits/random.tcc ****       }
1134:/usr/include/c++/7/bits/random.tcc **** 
1135:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1136:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1137:/usr/include/c++/7/bits/random.tcc ****       typename negative_binomial_distribution<_IntType>::result_type
1138:/usr/include/c++/7/bits/random.tcc ****       negative_binomial_distribution<_IntType>::
1139:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
1140:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __p)
1141:/usr/include/c++/7/bits/random.tcc ****       {
1142:/usr/include/c++/7/bits/random.tcc **** 	typedef typename std::gamma_distribution<double>::param_type
1143:/usr/include/c++/7/bits/random.tcc **** 	  param_type;
1144:/usr/include/c++/7/bits/random.tcc **** 	
1145:/usr/include/c++/7/bits/random.tcc **** 	const double __y =
1146:/usr/include/c++/7/bits/random.tcc **** 	  _M_gd(__urng, param_type(__p.k(), (1.0 - __p.p()) / __p.p()));
1147:/usr/include/c++/7/bits/random.tcc **** 
1148:/usr/include/c++/7/bits/random.tcc **** 	std::poisson_distribution<result_type> __poisson(__y);
1149:/usr/include/c++/7/bits/random.tcc **** 	return __poisson(__urng);
1150:/usr/include/c++/7/bits/random.tcc ****       }
1151:/usr/include/c++/7/bits/random.tcc **** 
1152:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1153:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1154:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1155:/usr/include/c++/7/bits/random.tcc ****       void
1156:/usr/include/c++/7/bits/random.tcc ****       negative_binomial_distribution<_IntType>::
1157:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1158:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng)
1159:/usr/include/c++/7/bits/random.tcc ****       {
1160:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1161:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1162:/usr/include/c++/7/bits/random.tcc **** 	  {
1163:/usr/include/c++/7/bits/random.tcc **** 	    const double __y = _M_gd(__urng);
1164:/usr/include/c++/7/bits/random.tcc **** 
1165:/usr/include/c++/7/bits/random.tcc **** 	    // XXX Is the constructor too slow?
1166:/usr/include/c++/7/bits/random.tcc **** 	    std::poisson_distribution<result_type> __poisson(__y);
1167:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __poisson(__urng);
1168:/usr/include/c++/7/bits/random.tcc **** 	  }
1169:/usr/include/c++/7/bits/random.tcc ****       }
1170:/usr/include/c++/7/bits/random.tcc **** 
1171:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1172:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1173:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1174:/usr/include/c++/7/bits/random.tcc ****       void
1175:/usr/include/c++/7/bits/random.tcc ****       negative_binomial_distribution<_IntType>::
1176:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1177:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1178:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
1179:/usr/include/c++/7/bits/random.tcc ****       {
1180:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1181:/usr/include/c++/7/bits/random.tcc **** 	typename std::gamma_distribution<result_type>::param_type
1182:/usr/include/c++/7/bits/random.tcc **** 	  __p2(__p.k(), (1.0 - __p.p()) / __p.p());
1183:/usr/include/c++/7/bits/random.tcc **** 
1184:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1185:/usr/include/c++/7/bits/random.tcc **** 	  {
1186:/usr/include/c++/7/bits/random.tcc **** 	    const double __y = _M_gd(__urng, __p2);
1187:/usr/include/c++/7/bits/random.tcc **** 
1188:/usr/include/c++/7/bits/random.tcc **** 	    std::poisson_distribution<result_type> __poisson(__y);
1189:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __poisson(__urng);
1190:/usr/include/c++/7/bits/random.tcc **** 	  }
1191:/usr/include/c++/7/bits/random.tcc ****       }
1192:/usr/include/c++/7/bits/random.tcc **** 
1193:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
1194:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1195:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1196:/usr/include/c++/7/bits/random.tcc **** 	       const negative_binomial_distribution<_IntType>& __x)
1197:/usr/include/c++/7/bits/random.tcc ****     {
1198:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1199:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1200:/usr/include/c++/7/bits/random.tcc **** 
1201:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1202:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1203:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1204:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
1205:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1206:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__os.widen(' '));
1207:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
1208:/usr/include/c++/7/bits/random.tcc **** 
1209:/usr/include/c++/7/bits/random.tcc ****       __os << __x.k() << __space << __x.p()
1210:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_gd;
1211:/usr/include/c++/7/bits/random.tcc **** 
1212:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1213:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1214:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1215:/usr/include/c++/7/bits/random.tcc ****       return __os;
1216:/usr/include/c++/7/bits/random.tcc ****     }
1217:/usr/include/c++/7/bits/random.tcc **** 
1218:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
1219:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1220:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1221:/usr/include/c++/7/bits/random.tcc **** 	       negative_binomial_distribution<_IntType>& __x)
1222:/usr/include/c++/7/bits/random.tcc ****     {
1223:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1224:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1225:/usr/include/c++/7/bits/random.tcc **** 
1226:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1227:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::skipws);
1228:/usr/include/c++/7/bits/random.tcc **** 
1229:/usr/include/c++/7/bits/random.tcc ****       _IntType __k;
1230:/usr/include/c++/7/bits/random.tcc ****       double __p;
1231:/usr/include/c++/7/bits/random.tcc ****       __is >> __k >> __p >> __x._M_gd;
1232:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename negative_binomial_distribution<_IntType>::
1233:/usr/include/c++/7/bits/random.tcc **** 		param_type(__k, __p));
1234:/usr/include/c++/7/bits/random.tcc **** 
1235:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1236:/usr/include/c++/7/bits/random.tcc ****       return __is;
1237:/usr/include/c++/7/bits/random.tcc ****     }
1238:/usr/include/c++/7/bits/random.tcc **** 
1239:/usr/include/c++/7/bits/random.tcc **** 
1240:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1241:/usr/include/c++/7/bits/random.tcc ****     void
1242:/usr/include/c++/7/bits/random.tcc ****     poisson_distribution<_IntType>::param_type::
1243:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
1244:/usr/include/c++/7/bits/random.tcc ****     {
1245:/usr/include/c++/7/bits/random.tcc **** #if _GLIBCXX_USE_C99_MATH_TR1
1246:/usr/include/c++/7/bits/random.tcc ****       if (_M_mean >= 12)
1247:/usr/include/c++/7/bits/random.tcc **** 	{
1248:/usr/include/c++/7/bits/random.tcc **** 	  const double __m = std::floor(_M_mean);
1249:/usr/include/c++/7/bits/random.tcc **** 	  _M_lm_thr = std::log(_M_mean);
1250:/usr/include/c++/7/bits/random.tcc **** 	  _M_lfm = std::lgamma(__m + 1);
1251:/usr/include/c++/7/bits/random.tcc **** 	  _M_sm = std::sqrt(__m);
1252:/usr/include/c++/7/bits/random.tcc **** 
1253:/usr/include/c++/7/bits/random.tcc **** 	  const double __pi_4 = 0.7853981633974483096156608458198757L;
1254:/usr/include/c++/7/bits/random.tcc **** 	  const double __dx = std::sqrt(2 * __m * std::log(32 * __m
1255:/usr/include/c++/7/bits/random.tcc **** 							      / __pi_4));
1256:/usr/include/c++/7/bits/random.tcc **** 	  _M_d = std::round(std::max<double>(6.0, std::min(__m, __dx)));
1257:/usr/include/c++/7/bits/random.tcc **** 	  const double __cx = 2 * __m + _M_d;
1258:/usr/include/c++/7/bits/random.tcc **** 	  _M_scx = std::sqrt(__cx / 2);
1259:/usr/include/c++/7/bits/random.tcc **** 	  _M_1cx = 1 / __cx;
1260:/usr/include/c++/7/bits/random.tcc **** 
1261:/usr/include/c++/7/bits/random.tcc **** 	  _M_c2b = std::sqrt(__pi_4 * __cx) * std::exp(_M_1cx);
1262:/usr/include/c++/7/bits/random.tcc **** 	  _M_cb = 2 * __cx * std::exp(-_M_d * _M_1cx * (1 + _M_d / 2))
1263:/usr/include/c++/7/bits/random.tcc **** 		/ _M_d;
1264:/usr/include/c++/7/bits/random.tcc **** 	}
1265:/usr/include/c++/7/bits/random.tcc ****       else
1266:/usr/include/c++/7/bits/random.tcc **** #endif
1267:/usr/include/c++/7/bits/random.tcc **** 	_M_lm_thr = std::exp(-_M_mean);
1268:/usr/include/c++/7/bits/random.tcc ****       }
1269:/usr/include/c++/7/bits/random.tcc **** 
1270:/usr/include/c++/7/bits/random.tcc ****   /**
1271:/usr/include/c++/7/bits/random.tcc ****    * A rejection algorithm when mean >= 12 and a simple method based
1272:/usr/include/c++/7/bits/random.tcc ****    * upon the multiplication of uniform random variates otherwise.
1273:/usr/include/c++/7/bits/random.tcc ****    * NB: The former is available only if _GLIBCXX_USE_C99_MATH_TR1
1274:/usr/include/c++/7/bits/random.tcc ****    * is defined.
1275:/usr/include/c++/7/bits/random.tcc ****    *
1276:/usr/include/c++/7/bits/random.tcc ****    * Reference:
1277:/usr/include/c++/7/bits/random.tcc ****    * Devroye, L. Non-Uniform Random Variates Generation. Springer-Verlag,
1278:/usr/include/c++/7/bits/random.tcc ****    * New York, 1986, Ch. X, Sects. 3.3 & 3.4 (+ Errata!).
1279:/usr/include/c++/7/bits/random.tcc ****    */
1280:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1281:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1282:/usr/include/c++/7/bits/random.tcc ****       typename poisson_distribution<_IntType>::result_type
1283:/usr/include/c++/7/bits/random.tcc ****       poisson_distribution<_IntType>::
1284:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
1285:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
1286:/usr/include/c++/7/bits/random.tcc ****       {
1287:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
1288:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1289:/usr/include/c++/7/bits/random.tcc **** #if _GLIBCXX_USE_C99_MATH_TR1
1290:/usr/include/c++/7/bits/random.tcc **** 	if (__param.mean() >= 12)
1291:/usr/include/c++/7/bits/random.tcc **** 	  {
1292:/usr/include/c++/7/bits/random.tcc **** 	    double __x;
1293:/usr/include/c++/7/bits/random.tcc **** 
1294:/usr/include/c++/7/bits/random.tcc **** 	    // See comments above...
1295:/usr/include/c++/7/bits/random.tcc **** 	    const double __naf =
1296:/usr/include/c++/7/bits/random.tcc **** 	      (1 - std::numeric_limits<double>::epsilon()) / 2;
1297:/usr/include/c++/7/bits/random.tcc **** 	    const double __thr =
1298:/usr/include/c++/7/bits/random.tcc **** 	      std::numeric_limits<_IntType>::max() + __naf;
1299:/usr/include/c++/7/bits/random.tcc **** 
1300:/usr/include/c++/7/bits/random.tcc **** 	    const double __m = std::floor(__param.mean());
1301:/usr/include/c++/7/bits/random.tcc **** 	    // sqrt(pi / 2)
1302:/usr/include/c++/7/bits/random.tcc **** 	    const double __spi_2 = 1.2533141373155002512078826424055226L;
1303:/usr/include/c++/7/bits/random.tcc **** 	    const double __c1 = __param._M_sm * __spi_2;
1304:/usr/include/c++/7/bits/random.tcc **** 	    const double __c2 = __param._M_c2b + __c1;
1305:/usr/include/c++/7/bits/random.tcc **** 	    const double __c3 = __c2 + 1;
1306:/usr/include/c++/7/bits/random.tcc **** 	    const double __c4 = __c3 + 1;
1307:/usr/include/c++/7/bits/random.tcc **** 	    // e^(1 / 78)
1308:/usr/include/c++/7/bits/random.tcc **** 	    const double __e178 = 1.0129030479320018583185514777512983L;
1309:/usr/include/c++/7/bits/random.tcc **** 	    const double __c5 = __c4 + __e178;
1310:/usr/include/c++/7/bits/random.tcc **** 	    const double __c = __param._M_cb + __c5;
1311:/usr/include/c++/7/bits/random.tcc **** 	    const double __2cx = 2 * (2 * __m + __param._M_d);
1312:/usr/include/c++/7/bits/random.tcc **** 
1313:/usr/include/c++/7/bits/random.tcc **** 	    bool __reject = true;
1314:/usr/include/c++/7/bits/random.tcc **** 	    do
1315:/usr/include/c++/7/bits/random.tcc **** 	      {
1316:/usr/include/c++/7/bits/random.tcc **** 		const double __u = __c * __aurng();
1317:/usr/include/c++/7/bits/random.tcc **** 		const double __e = -std::log(1.0 - __aurng());
1318:/usr/include/c++/7/bits/random.tcc **** 
1319:/usr/include/c++/7/bits/random.tcc **** 		double __w = 0.0;
1320:/usr/include/c++/7/bits/random.tcc **** 
1321:/usr/include/c++/7/bits/random.tcc **** 		if (__u <= __c1)
1322:/usr/include/c++/7/bits/random.tcc **** 		  {
1323:/usr/include/c++/7/bits/random.tcc **** 		    const double __n = _M_nd(__urng);
1324:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = -std::abs(__n) * __param._M_sm - 1;
1325:/usr/include/c++/7/bits/random.tcc **** 		    __x = std::floor(__y);
1326:/usr/include/c++/7/bits/random.tcc **** 		    __w = -__n * __n / 2;
1327:/usr/include/c++/7/bits/random.tcc **** 		    if (__x < -__m)
1328:/usr/include/c++/7/bits/random.tcc **** 		      continue;
1329:/usr/include/c++/7/bits/random.tcc **** 		  }
1330:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __c2)
1331:/usr/include/c++/7/bits/random.tcc **** 		  {
1332:/usr/include/c++/7/bits/random.tcc **** 		    const double __n = _M_nd(__urng);
1333:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = 1 + std::abs(__n) * __param._M_scx;
1334:/usr/include/c++/7/bits/random.tcc **** 		    __x = std::ceil(__y);
1335:/usr/include/c++/7/bits/random.tcc **** 		    __w = __y * (2 - __y) * __param._M_1cx;
1336:/usr/include/c++/7/bits/random.tcc **** 		    if (__x > __param._M_d)
1337:/usr/include/c++/7/bits/random.tcc **** 		      continue;
1338:/usr/include/c++/7/bits/random.tcc **** 		  }
1339:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __c3)
1340:/usr/include/c++/7/bits/random.tcc **** 		  // NB: This case not in the book, nor in the Errata,
1341:/usr/include/c++/7/bits/random.tcc **** 		  // but should be ok...
1342:/usr/include/c++/7/bits/random.tcc **** 		  __x = -1;
1343:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __c4)
1344:/usr/include/c++/7/bits/random.tcc **** 		  __x = 0;
1345:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __c5)
1346:/usr/include/c++/7/bits/random.tcc **** 		  __x = 1;
1347:/usr/include/c++/7/bits/random.tcc **** 		else
1348:/usr/include/c++/7/bits/random.tcc **** 		  {
1349:/usr/include/c++/7/bits/random.tcc **** 		    const double __v = -std::log(1.0 - __aurng());
1350:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = __param._M_d
1351:/usr/include/c++/7/bits/random.tcc **** 				     + __v * __2cx / __param._M_d;
1352:/usr/include/c++/7/bits/random.tcc **** 		    __x = std::ceil(__y);
1353:/usr/include/c++/7/bits/random.tcc **** 		    __w = -__param._M_d * __param._M_1cx * (1 + __y / 2);
1354:/usr/include/c++/7/bits/random.tcc **** 		  }
1355:/usr/include/c++/7/bits/random.tcc **** 
1356:/usr/include/c++/7/bits/random.tcc **** 		__reject = (__w - __e - __x * __param._M_lm_thr
1357:/usr/include/c++/7/bits/random.tcc **** 			    > __param._M_lfm - std::lgamma(__x + __m + 1));
1358:/usr/include/c++/7/bits/random.tcc **** 
1359:/usr/include/c++/7/bits/random.tcc **** 		__reject |= __x + __m >= __thr;
1360:/usr/include/c++/7/bits/random.tcc **** 
1361:/usr/include/c++/7/bits/random.tcc **** 	      } while (__reject);
1362:/usr/include/c++/7/bits/random.tcc **** 
1363:/usr/include/c++/7/bits/random.tcc **** 	    return result_type(__x + __m + __naf);
1364:/usr/include/c++/7/bits/random.tcc **** 	  }
1365:/usr/include/c++/7/bits/random.tcc **** 	else
1366:/usr/include/c++/7/bits/random.tcc **** #endif
1367:/usr/include/c++/7/bits/random.tcc **** 	  {
1368:/usr/include/c++/7/bits/random.tcc **** 	    _IntType     __x = 0;
1369:/usr/include/c++/7/bits/random.tcc **** 	    double __prod = 1.0;
1370:/usr/include/c++/7/bits/random.tcc **** 
1371:/usr/include/c++/7/bits/random.tcc **** 	    do
1372:/usr/include/c++/7/bits/random.tcc **** 	      {
1373:/usr/include/c++/7/bits/random.tcc **** 		__prod *= __aurng();
1374:/usr/include/c++/7/bits/random.tcc **** 		__x += 1;
1375:/usr/include/c++/7/bits/random.tcc **** 	      }
1376:/usr/include/c++/7/bits/random.tcc **** 	    while (__prod > __param._M_lm_thr);
1377:/usr/include/c++/7/bits/random.tcc **** 
1378:/usr/include/c++/7/bits/random.tcc **** 	    return __x - 1;
1379:/usr/include/c++/7/bits/random.tcc **** 	  }
1380:/usr/include/c++/7/bits/random.tcc ****       }
1381:/usr/include/c++/7/bits/random.tcc **** 
1382:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1383:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1384:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1385:/usr/include/c++/7/bits/random.tcc ****       void
1386:/usr/include/c++/7/bits/random.tcc ****       poisson_distribution<_IntType>::
1387:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1388:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1389:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
1390:/usr/include/c++/7/bits/random.tcc ****       {
1391:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1392:/usr/include/c++/7/bits/random.tcc **** 	// We could duplicate everything from operator()...
1393:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1394:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = this->operator()(__urng, __param);
1395:/usr/include/c++/7/bits/random.tcc ****       }
1396:/usr/include/c++/7/bits/random.tcc **** 
1397:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1398:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1399:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1400:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1401:/usr/include/c++/7/bits/random.tcc **** 	       const poisson_distribution<_IntType>& __x)
1402:/usr/include/c++/7/bits/random.tcc ****     {
1403:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1404:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1405:/usr/include/c++/7/bits/random.tcc **** 
1406:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1407:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1408:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1409:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
1410:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1411:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
1412:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
1413:/usr/include/c++/7/bits/random.tcc **** 
1414:/usr/include/c++/7/bits/random.tcc ****       __os << __x.mean() << __space << __x._M_nd;
1415:/usr/include/c++/7/bits/random.tcc **** 
1416:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1417:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1418:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1419:/usr/include/c++/7/bits/random.tcc ****       return __os;
1420:/usr/include/c++/7/bits/random.tcc ****     }
1421:/usr/include/c++/7/bits/random.tcc **** 
1422:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1423:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1424:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1425:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1426:/usr/include/c++/7/bits/random.tcc **** 	       poisson_distribution<_IntType>& __x)
1427:/usr/include/c++/7/bits/random.tcc ****     {
1428:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1429:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1430:/usr/include/c++/7/bits/random.tcc **** 
1431:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1432:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::skipws);
1433:/usr/include/c++/7/bits/random.tcc **** 
1434:/usr/include/c++/7/bits/random.tcc ****       double __mean;
1435:/usr/include/c++/7/bits/random.tcc ****       __is >> __mean >> __x._M_nd;
1436:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename poisson_distribution<_IntType>::param_type(__mean));
1437:/usr/include/c++/7/bits/random.tcc **** 
1438:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1439:/usr/include/c++/7/bits/random.tcc ****       return __is;
1440:/usr/include/c++/7/bits/random.tcc ****     }
1441:/usr/include/c++/7/bits/random.tcc **** 
1442:/usr/include/c++/7/bits/random.tcc **** 
1443:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1444:/usr/include/c++/7/bits/random.tcc ****     void
1445:/usr/include/c++/7/bits/random.tcc ****     binomial_distribution<_IntType>::param_type::
1446:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
1447:/usr/include/c++/7/bits/random.tcc ****     {
1448:/usr/include/c++/7/bits/random.tcc ****       const double __p12 = _M_p <= 0.5 ? _M_p : 1.0 - _M_p;
1449:/usr/include/c++/7/bits/random.tcc **** 
1450:/usr/include/c++/7/bits/random.tcc ****       _M_easy = true;
1451:/usr/include/c++/7/bits/random.tcc **** 
1452:/usr/include/c++/7/bits/random.tcc **** #if _GLIBCXX_USE_C99_MATH_TR1
1453:/usr/include/c++/7/bits/random.tcc ****       if (_M_t * __p12 >= 8)
1454:/usr/include/c++/7/bits/random.tcc **** 	{
1455:/usr/include/c++/7/bits/random.tcc **** 	  _M_easy = false;
1456:/usr/include/c++/7/bits/random.tcc **** 	  const double __np = std::floor(_M_t * __p12);
1457:/usr/include/c++/7/bits/random.tcc **** 	  const double __pa = __np / _M_t;
1458:/usr/include/c++/7/bits/random.tcc **** 	  const double __1p = 1 - __pa;
1459:/usr/include/c++/7/bits/random.tcc **** 
1460:/usr/include/c++/7/bits/random.tcc **** 	  const double __pi_4 = 0.7853981633974483096156608458198757L;
1461:/usr/include/c++/7/bits/random.tcc **** 	  const double __d1x =
1462:/usr/include/c++/7/bits/random.tcc **** 	    std::sqrt(__np * __1p * std::log(32 * __np
1463:/usr/include/c++/7/bits/random.tcc **** 					     / (81 * __pi_4 * __1p)));
1464:/usr/include/c++/7/bits/random.tcc **** 	  _M_d1 = std::round(std::max<double>(1.0, __d1x));
1465:/usr/include/c++/7/bits/random.tcc **** 	  const double __d2x =
1466:/usr/include/c++/7/bits/random.tcc **** 	    std::sqrt(__np * __1p * std::log(32 * _M_t * __1p
1467:/usr/include/c++/7/bits/random.tcc **** 					     / (__pi_4 * __pa)));
1468:/usr/include/c++/7/bits/random.tcc **** 	  _M_d2 = std::round(std::max<double>(1.0, __d2x));
1469:/usr/include/c++/7/bits/random.tcc **** 
1470:/usr/include/c++/7/bits/random.tcc **** 	  // sqrt(pi / 2)
1471:/usr/include/c++/7/bits/random.tcc **** 	  const double __spi_2 = 1.2533141373155002512078826424055226L;
1472:/usr/include/c++/7/bits/random.tcc **** 	  _M_s1 = std::sqrt(__np * __1p) * (1 + _M_d1 / (4 * __np));
1473:/usr/include/c++/7/bits/random.tcc **** 	  _M_s2 = std::sqrt(__np * __1p) * (1 + _M_d2 / (4 * _M_t * __1p));
1474:/usr/include/c++/7/bits/random.tcc **** 	  _M_c = 2 * _M_d1 / __np;
1475:/usr/include/c++/7/bits/random.tcc **** 	  _M_a1 = std::exp(_M_c) * _M_s1 * __spi_2;
1476:/usr/include/c++/7/bits/random.tcc **** 	  const double __a12 = _M_a1 + _M_s2 * __spi_2;
1477:/usr/include/c++/7/bits/random.tcc **** 	  const double __s1s = _M_s1 * _M_s1;
1478:/usr/include/c++/7/bits/random.tcc **** 	  _M_a123 = __a12 + (std::exp(_M_d1 / (_M_t * __1p))
1479:/usr/include/c++/7/bits/random.tcc **** 			     * 2 * __s1s / _M_d1
1480:/usr/include/c++/7/bits/random.tcc **** 			     * std::exp(-_M_d1 * _M_d1 / (2 * __s1s)));
1481:/usr/include/c++/7/bits/random.tcc **** 	  const double __s2s = _M_s2 * _M_s2;
1482:/usr/include/c++/7/bits/random.tcc **** 	  _M_s = (_M_a123 + 2 * __s2s / _M_d2
1483:/usr/include/c++/7/bits/random.tcc **** 		  * std::exp(-_M_d2 * _M_d2 / (2 * __s2s)));
1484:/usr/include/c++/7/bits/random.tcc **** 	  _M_lf = (std::lgamma(__np + 1)
1485:/usr/include/c++/7/bits/random.tcc **** 		   + std::lgamma(_M_t - __np + 1));
1486:/usr/include/c++/7/bits/random.tcc **** 	  _M_lp1p = std::log(__pa / __1p);
1487:/usr/include/c++/7/bits/random.tcc **** 
1488:/usr/include/c++/7/bits/random.tcc **** 	  _M_q = -std::log(1 - (__p12 - __pa) / __1p);
1489:/usr/include/c++/7/bits/random.tcc **** 	}
1490:/usr/include/c++/7/bits/random.tcc ****       else
1491:/usr/include/c++/7/bits/random.tcc **** #endif
1492:/usr/include/c++/7/bits/random.tcc **** 	_M_q = -std::log(1 - __p12);
1493:/usr/include/c++/7/bits/random.tcc ****     }
1494:/usr/include/c++/7/bits/random.tcc **** 
1495:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1496:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1497:/usr/include/c++/7/bits/random.tcc ****       typename binomial_distribution<_IntType>::result_type
1498:/usr/include/c++/7/bits/random.tcc ****       binomial_distribution<_IntType>::
1499:/usr/include/c++/7/bits/random.tcc ****       _M_waiting(_UniformRandomNumberGenerator& __urng,
1500:/usr/include/c++/7/bits/random.tcc **** 		 _IntType __t, double __q)
1501:/usr/include/c++/7/bits/random.tcc ****       {
1502:/usr/include/c++/7/bits/random.tcc **** 	_IntType __x = 0;
1503:/usr/include/c++/7/bits/random.tcc **** 	double __sum = 0.0;
1504:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
1505:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1506:/usr/include/c++/7/bits/random.tcc **** 
1507:/usr/include/c++/7/bits/random.tcc **** 	do
1508:/usr/include/c++/7/bits/random.tcc **** 	  {
1509:/usr/include/c++/7/bits/random.tcc **** 	    if (__t == __x)
1510:/usr/include/c++/7/bits/random.tcc **** 	      return __x;
1511:/usr/include/c++/7/bits/random.tcc **** 	    const double __e = -std::log(1.0 - __aurng());
1512:/usr/include/c++/7/bits/random.tcc **** 	    __sum += __e / (__t - __x);
1513:/usr/include/c++/7/bits/random.tcc **** 	    __x += 1;
1514:/usr/include/c++/7/bits/random.tcc **** 	  }
1515:/usr/include/c++/7/bits/random.tcc **** 	while (__sum <= __q);
1516:/usr/include/c++/7/bits/random.tcc **** 
1517:/usr/include/c++/7/bits/random.tcc **** 	return __x - 1;
1518:/usr/include/c++/7/bits/random.tcc ****       }
1519:/usr/include/c++/7/bits/random.tcc **** 
1520:/usr/include/c++/7/bits/random.tcc ****   /**
1521:/usr/include/c++/7/bits/random.tcc ****    * A rejection algorithm when t * p >= 8 and a simple waiting time
1522:/usr/include/c++/7/bits/random.tcc ****    * method - the second in the referenced book - otherwise.
1523:/usr/include/c++/7/bits/random.tcc ****    * NB: The former is available only if _GLIBCXX_USE_C99_MATH_TR1
1524:/usr/include/c++/7/bits/random.tcc ****    * is defined.
1525:/usr/include/c++/7/bits/random.tcc ****    *
1526:/usr/include/c++/7/bits/random.tcc ****    * Reference:
1527:/usr/include/c++/7/bits/random.tcc ****    * Devroye, L. Non-Uniform Random Variates Generation. Springer-Verlag,
1528:/usr/include/c++/7/bits/random.tcc ****    * New York, 1986, Ch. X, Sect. 4 (+ Errata!).
1529:/usr/include/c++/7/bits/random.tcc ****    */
1530:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1531:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1532:/usr/include/c++/7/bits/random.tcc ****       typename binomial_distribution<_IntType>::result_type
1533:/usr/include/c++/7/bits/random.tcc ****       binomial_distribution<_IntType>::
1534:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
1535:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
1536:/usr/include/c++/7/bits/random.tcc ****       {
1537:/usr/include/c++/7/bits/random.tcc **** 	result_type __ret;
1538:/usr/include/c++/7/bits/random.tcc **** 	const _IntType __t = __param.t();
1539:/usr/include/c++/7/bits/random.tcc **** 	const double __p = __param.p();
1540:/usr/include/c++/7/bits/random.tcc **** 	const double __p12 = __p <= 0.5 ? __p : 1.0 - __p;
1541:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
1542:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1543:/usr/include/c++/7/bits/random.tcc **** 
1544:/usr/include/c++/7/bits/random.tcc **** #if _GLIBCXX_USE_C99_MATH_TR1
1545:/usr/include/c++/7/bits/random.tcc **** 	if (!__param._M_easy)
1546:/usr/include/c++/7/bits/random.tcc **** 	  {
1547:/usr/include/c++/7/bits/random.tcc **** 	    double __x;
1548:/usr/include/c++/7/bits/random.tcc **** 
1549:/usr/include/c++/7/bits/random.tcc **** 	    // See comments above...
1550:/usr/include/c++/7/bits/random.tcc **** 	    const double __naf =
1551:/usr/include/c++/7/bits/random.tcc **** 	      (1 - std::numeric_limits<double>::epsilon()) / 2;
1552:/usr/include/c++/7/bits/random.tcc **** 	    const double __thr =
1553:/usr/include/c++/7/bits/random.tcc **** 	      std::numeric_limits<_IntType>::max() + __naf;
1554:/usr/include/c++/7/bits/random.tcc **** 
1555:/usr/include/c++/7/bits/random.tcc **** 	    const double __np = std::floor(__t * __p12);
1556:/usr/include/c++/7/bits/random.tcc **** 
1557:/usr/include/c++/7/bits/random.tcc **** 	    // sqrt(pi / 2)
1558:/usr/include/c++/7/bits/random.tcc **** 	    const double __spi_2 = 1.2533141373155002512078826424055226L;
1559:/usr/include/c++/7/bits/random.tcc **** 	    const double __a1 = __param._M_a1;
1560:/usr/include/c++/7/bits/random.tcc **** 	    const double __a12 = __a1 + __param._M_s2 * __spi_2;
1561:/usr/include/c++/7/bits/random.tcc **** 	    const double __a123 = __param._M_a123;
1562:/usr/include/c++/7/bits/random.tcc **** 	    const double __s1s = __param._M_s1 * __param._M_s1;
1563:/usr/include/c++/7/bits/random.tcc **** 	    const double __s2s = __param._M_s2 * __param._M_s2;
1564:/usr/include/c++/7/bits/random.tcc **** 
1565:/usr/include/c++/7/bits/random.tcc **** 	    bool __reject;
1566:/usr/include/c++/7/bits/random.tcc **** 	    do
1567:/usr/include/c++/7/bits/random.tcc **** 	      {
1568:/usr/include/c++/7/bits/random.tcc **** 		const double __u = __param._M_s * __aurng();
1569:/usr/include/c++/7/bits/random.tcc **** 
1570:/usr/include/c++/7/bits/random.tcc **** 		double __v;
1571:/usr/include/c++/7/bits/random.tcc **** 
1572:/usr/include/c++/7/bits/random.tcc **** 		if (__u <= __a1)
1573:/usr/include/c++/7/bits/random.tcc **** 		  {
1574:/usr/include/c++/7/bits/random.tcc **** 		    const double __n = _M_nd(__urng);
1575:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = __param._M_s1 * std::abs(__n);
1576:/usr/include/c++/7/bits/random.tcc **** 		    __reject = __y >= __param._M_d1;
1577:/usr/include/c++/7/bits/random.tcc **** 		    if (!__reject)
1578:/usr/include/c++/7/bits/random.tcc **** 		      {
1579:/usr/include/c++/7/bits/random.tcc **** 			const double __e = -std::log(1.0 - __aurng());
1580:/usr/include/c++/7/bits/random.tcc **** 			__x = std::floor(__y);
1581:/usr/include/c++/7/bits/random.tcc **** 			__v = -__e - __n * __n / 2 + __param._M_c;
1582:/usr/include/c++/7/bits/random.tcc **** 		      }
1583:/usr/include/c++/7/bits/random.tcc **** 		  }
1584:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __a12)
1585:/usr/include/c++/7/bits/random.tcc **** 		  {
1586:/usr/include/c++/7/bits/random.tcc **** 		    const double __n = _M_nd(__urng);
1587:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = __param._M_s2 * std::abs(__n);
1588:/usr/include/c++/7/bits/random.tcc **** 		    __reject = __y >= __param._M_d2;
1589:/usr/include/c++/7/bits/random.tcc **** 		    if (!__reject)
1590:/usr/include/c++/7/bits/random.tcc **** 		      {
1591:/usr/include/c++/7/bits/random.tcc **** 			const double __e = -std::log(1.0 - __aurng());
1592:/usr/include/c++/7/bits/random.tcc **** 			__x = std::floor(-__y);
1593:/usr/include/c++/7/bits/random.tcc **** 			__v = -__e - __n * __n / 2;
1594:/usr/include/c++/7/bits/random.tcc **** 		      }
1595:/usr/include/c++/7/bits/random.tcc **** 		  }
1596:/usr/include/c++/7/bits/random.tcc **** 		else if (__u <= __a123)
1597:/usr/include/c++/7/bits/random.tcc **** 		  {
1598:/usr/include/c++/7/bits/random.tcc **** 		    const double __e1 = -std::log(1.0 - __aurng());
1599:/usr/include/c++/7/bits/random.tcc **** 		    const double __e2 = -std::log(1.0 - __aurng());
1600:/usr/include/c++/7/bits/random.tcc **** 
1601:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = __param._M_d1
1602:/usr/include/c++/7/bits/random.tcc **** 				     + 2 * __s1s * __e1 / __param._M_d1;
1603:/usr/include/c++/7/bits/random.tcc **** 		    __x = std::floor(__y);
1604:/usr/include/c++/7/bits/random.tcc **** 		    __v = (-__e2 + __param._M_d1 * (1 / (__t - __np)
1605:/usr/include/c++/7/bits/random.tcc **** 						    -__y / (2 * __s1s)));
1606:/usr/include/c++/7/bits/random.tcc **** 		    __reject = false;
1607:/usr/include/c++/7/bits/random.tcc **** 		  }
1608:/usr/include/c++/7/bits/random.tcc **** 		else
1609:/usr/include/c++/7/bits/random.tcc **** 		  {
1610:/usr/include/c++/7/bits/random.tcc **** 		    const double __e1 = -std::log(1.0 - __aurng());
1611:/usr/include/c++/7/bits/random.tcc **** 		    const double __e2 = -std::log(1.0 - __aurng());
1612:/usr/include/c++/7/bits/random.tcc **** 
1613:/usr/include/c++/7/bits/random.tcc **** 		    const double __y = __param._M_d2
1614:/usr/include/c++/7/bits/random.tcc **** 				     + 2 * __s2s * __e1 / __param._M_d2;
1615:/usr/include/c++/7/bits/random.tcc **** 		    __x = std::floor(-__y);
1616:/usr/include/c++/7/bits/random.tcc **** 		    __v = -__e2 - __param._M_d2 * __y / (2 * __s2s);
1617:/usr/include/c++/7/bits/random.tcc **** 		    __reject = false;
1618:/usr/include/c++/7/bits/random.tcc **** 		  }
1619:/usr/include/c++/7/bits/random.tcc **** 
1620:/usr/include/c++/7/bits/random.tcc **** 		__reject = __reject || __x < -__np || __x > __t - __np;
1621:/usr/include/c++/7/bits/random.tcc **** 		if (!__reject)
1622:/usr/include/c++/7/bits/random.tcc **** 		  {
1623:/usr/include/c++/7/bits/random.tcc **** 		    const double __lfx =
1624:/usr/include/c++/7/bits/random.tcc **** 		      std::lgamma(__np + __x + 1)
1625:/usr/include/c++/7/bits/random.tcc **** 		      + std::lgamma(__t - (__np + __x) + 1);
1626:/usr/include/c++/7/bits/random.tcc **** 		    __reject = __v > __param._M_lf - __lfx
1627:/usr/include/c++/7/bits/random.tcc **** 			     + __x * __param._M_lp1p;
1628:/usr/include/c++/7/bits/random.tcc **** 		  }
1629:/usr/include/c++/7/bits/random.tcc **** 
1630:/usr/include/c++/7/bits/random.tcc **** 		__reject |= __x + __np >= __thr;
1631:/usr/include/c++/7/bits/random.tcc **** 	      }
1632:/usr/include/c++/7/bits/random.tcc **** 	    while (__reject);
1633:/usr/include/c++/7/bits/random.tcc **** 
1634:/usr/include/c++/7/bits/random.tcc **** 	    __x += __np + __naf;
1635:/usr/include/c++/7/bits/random.tcc **** 
1636:/usr/include/c++/7/bits/random.tcc **** 	    const _IntType __z = _M_waiting(__urng, __t - _IntType(__x),
1637:/usr/include/c++/7/bits/random.tcc **** 					    __param._M_q);
1638:/usr/include/c++/7/bits/random.tcc **** 	    __ret = _IntType(__x) + __z;
1639:/usr/include/c++/7/bits/random.tcc **** 	  }
1640:/usr/include/c++/7/bits/random.tcc **** 	else
1641:/usr/include/c++/7/bits/random.tcc **** #endif
1642:/usr/include/c++/7/bits/random.tcc **** 	  __ret = _M_waiting(__urng, __t, __param._M_q);
1643:/usr/include/c++/7/bits/random.tcc **** 
1644:/usr/include/c++/7/bits/random.tcc **** 	if (__p12 != __p)
1645:/usr/include/c++/7/bits/random.tcc **** 	  __ret = __t - __ret;
1646:/usr/include/c++/7/bits/random.tcc **** 	return __ret;
1647:/usr/include/c++/7/bits/random.tcc ****       }
1648:/usr/include/c++/7/bits/random.tcc **** 
1649:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
1650:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1651:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1652:/usr/include/c++/7/bits/random.tcc ****       void
1653:/usr/include/c++/7/bits/random.tcc ****       binomial_distribution<_IntType>::
1654:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1655:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1656:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
1657:/usr/include/c++/7/bits/random.tcc ****       {
1658:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1659:/usr/include/c++/7/bits/random.tcc **** 	// We could duplicate everything from operator()...
1660:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1661:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = this->operator()(__urng, __param);
1662:/usr/include/c++/7/bits/random.tcc ****       }
1663:/usr/include/c++/7/bits/random.tcc **** 
1664:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1665:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1666:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1667:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1668:/usr/include/c++/7/bits/random.tcc **** 	       const binomial_distribution<_IntType>& __x)
1669:/usr/include/c++/7/bits/random.tcc ****     {
1670:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1671:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1672:/usr/include/c++/7/bits/random.tcc **** 
1673:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1674:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1675:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1676:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
1677:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1678:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
1679:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
1680:/usr/include/c++/7/bits/random.tcc **** 
1681:/usr/include/c++/7/bits/random.tcc ****       __os << __x.t() << __space << __x.p()
1682:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_nd;
1683:/usr/include/c++/7/bits/random.tcc **** 
1684:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1685:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1686:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1687:/usr/include/c++/7/bits/random.tcc ****       return __os;
1688:/usr/include/c++/7/bits/random.tcc ****     }
1689:/usr/include/c++/7/bits/random.tcc **** 
1690:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType,
1691:/usr/include/c++/7/bits/random.tcc **** 	   typename _CharT, typename _Traits>
1692:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1693:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1694:/usr/include/c++/7/bits/random.tcc **** 	       binomial_distribution<_IntType>& __x)
1695:/usr/include/c++/7/bits/random.tcc ****     {
1696:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1697:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1698:/usr/include/c++/7/bits/random.tcc **** 
1699:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1700:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
1701:/usr/include/c++/7/bits/random.tcc **** 
1702:/usr/include/c++/7/bits/random.tcc ****       _IntType __t;
1703:/usr/include/c++/7/bits/random.tcc ****       double __p;
1704:/usr/include/c++/7/bits/random.tcc ****       __is >> __t >> __p >> __x._M_nd;
1705:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename binomial_distribution<_IntType>::
1706:/usr/include/c++/7/bits/random.tcc **** 		param_type(__t, __p));
1707:/usr/include/c++/7/bits/random.tcc **** 
1708:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1709:/usr/include/c++/7/bits/random.tcc ****       return __is;
1710:/usr/include/c++/7/bits/random.tcc ****     }
1711:/usr/include/c++/7/bits/random.tcc **** 
1712:/usr/include/c++/7/bits/random.tcc **** 
1713:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
1714:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1715:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1716:/usr/include/c++/7/bits/random.tcc ****       void
1717:/usr/include/c++/7/bits/random.tcc ****       std::exponential_distribution<_RealType>::
1718:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1719:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1720:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
1721:/usr/include/c++/7/bits/random.tcc ****       {
1722:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1723:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
1724:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1725:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
1726:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = -std::log(result_type(1) - __aurng()) / __p.lambda();
1727:/usr/include/c++/7/bits/random.tcc ****       }
1728:/usr/include/c++/7/bits/random.tcc **** 
1729:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1730:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1731:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1732:/usr/include/c++/7/bits/random.tcc **** 	       const exponential_distribution<_RealType>& __x)
1733:/usr/include/c++/7/bits/random.tcc ****     {
1734:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1735:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1736:/usr/include/c++/7/bits/random.tcc **** 
1737:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1738:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1739:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1740:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1741:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__os.widen(' '));
1742:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
1743:/usr/include/c++/7/bits/random.tcc **** 
1744:/usr/include/c++/7/bits/random.tcc ****       __os << __x.lambda();
1745:/usr/include/c++/7/bits/random.tcc **** 
1746:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1747:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1748:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1749:/usr/include/c++/7/bits/random.tcc ****       return __os;
1750:/usr/include/c++/7/bits/random.tcc ****     }
1751:/usr/include/c++/7/bits/random.tcc **** 
1752:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1753:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1754:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1755:/usr/include/c++/7/bits/random.tcc **** 	       exponential_distribution<_RealType>& __x)
1756:/usr/include/c++/7/bits/random.tcc ****     {
1757:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1758:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1759:/usr/include/c++/7/bits/random.tcc **** 
1760:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1761:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
1762:/usr/include/c++/7/bits/random.tcc **** 
1763:/usr/include/c++/7/bits/random.tcc ****       _RealType __lambda;
1764:/usr/include/c++/7/bits/random.tcc ****       __is >> __lambda;
1765:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename exponential_distribution<_RealType>::
1766:/usr/include/c++/7/bits/random.tcc **** 		param_type(__lambda));
1767:/usr/include/c++/7/bits/random.tcc **** 
1768:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1769:/usr/include/c++/7/bits/random.tcc ****       return __is;
1770:/usr/include/c++/7/bits/random.tcc ****     }
1771:/usr/include/c++/7/bits/random.tcc **** 
1772:/usr/include/c++/7/bits/random.tcc **** 
1773:/usr/include/c++/7/bits/random.tcc ****   /**
1774:/usr/include/c++/7/bits/random.tcc ****    * Polar method due to Marsaglia.
1775:/usr/include/c++/7/bits/random.tcc ****    *
1776:/usr/include/c++/7/bits/random.tcc ****    * Devroye, L. Non-Uniform Random Variates Generation. Springer-Verlag,
1777:/usr/include/c++/7/bits/random.tcc ****    * New York, 1986, Ch. V, Sect. 4.4.
1778:/usr/include/c++/7/bits/random.tcc ****    */
1779:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
1780:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
1781:/usr/include/c++/7/bits/random.tcc ****       typename normal_distribution<_RealType>::result_type
1782:/usr/include/c++/7/bits/random.tcc ****       normal_distribution<_RealType>::
1783:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
1784:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
1785:/usr/include/c++/7/bits/random.tcc ****       {
1786:/usr/include/c++/7/bits/random.tcc **** 	result_type __ret;
1787:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
1788:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1789:/usr/include/c++/7/bits/random.tcc **** 
1790:/usr/include/c++/7/bits/random.tcc **** 	if (_M_saved_available)
1791:/usr/include/c++/7/bits/random.tcc **** 	  {
1792:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved_available = false;
1793:/usr/include/c++/7/bits/random.tcc **** 	    __ret = _M_saved;
1794:/usr/include/c++/7/bits/random.tcc **** 	  }
1795:/usr/include/c++/7/bits/random.tcc **** 	else
1796:/usr/include/c++/7/bits/random.tcc **** 	  {
1797:/usr/include/c++/7/bits/random.tcc **** 	    result_type __x, __y, __r2;
1798:/usr/include/c++/7/bits/random.tcc **** 	    do
1799:/usr/include/c++/7/bits/random.tcc **** 	      {
1800:/usr/include/c++/7/bits/random.tcc **** 		__x = result_type(2.0) * __aurng() - 1.0;
1801:/usr/include/c++/7/bits/random.tcc **** 		__y = result_type(2.0) * __aurng() - 1.0;
1802:/usr/include/c++/7/bits/random.tcc **** 		__r2 = __x * __x + __y * __y;
1803:/usr/include/c++/7/bits/random.tcc **** 	      }
1804:/usr/include/c++/7/bits/random.tcc **** 	    while (__r2 > 1.0 || __r2 == 0.0);
1805:/usr/include/c++/7/bits/random.tcc **** 
1806:/usr/include/c++/7/bits/random.tcc **** 	    const result_type __mult = std::sqrt(-2 * std::log(__r2) / __r2);
1807:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved = __x * __mult;
1808:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved_available = true;
1809:/usr/include/c++/7/bits/random.tcc **** 	    __ret = __y * __mult;
1810:/usr/include/c++/7/bits/random.tcc **** 	  }
1811:/usr/include/c++/7/bits/random.tcc **** 
1812:/usr/include/c++/7/bits/random.tcc **** 	__ret = __ret * __param.stddev() + __param.mean();
1813:/usr/include/c++/7/bits/random.tcc **** 	return __ret;
1814:/usr/include/c++/7/bits/random.tcc ****       }
1815:/usr/include/c++/7/bits/random.tcc **** 
1816:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
1817:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1818:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1819:/usr/include/c++/7/bits/random.tcc ****       void
1820:/usr/include/c++/7/bits/random.tcc ****       normal_distribution<_RealType>::
1821:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1822:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1823:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
1824:/usr/include/c++/7/bits/random.tcc ****       {
1825:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1826:/usr/include/c++/7/bits/random.tcc **** 
1827:/usr/include/c++/7/bits/random.tcc **** 	if (__f == __t)
1828:/usr/include/c++/7/bits/random.tcc **** 	  return;
1829:/usr/include/c++/7/bits/random.tcc **** 
1830:/usr/include/c++/7/bits/random.tcc **** 	if (_M_saved_available)
1831:/usr/include/c++/7/bits/random.tcc **** 	  {
1832:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved_available = false;
1833:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = _M_saved * __param.stddev() + __param.mean();
1834:/usr/include/c++/7/bits/random.tcc **** 
1835:/usr/include/c++/7/bits/random.tcc **** 	    if (__f == __t)
1836:/usr/include/c++/7/bits/random.tcc **** 	      return;
1837:/usr/include/c++/7/bits/random.tcc **** 	  }
1838:/usr/include/c++/7/bits/random.tcc **** 
1839:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
1840:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
1841:/usr/include/c++/7/bits/random.tcc **** 
1842:/usr/include/c++/7/bits/random.tcc **** 	while (__f + 1 < __t)
1843:/usr/include/c++/7/bits/random.tcc **** 	  {
1844:/usr/include/c++/7/bits/random.tcc **** 	    result_type __x, __y, __r2;
1845:/usr/include/c++/7/bits/random.tcc **** 	    do
1846:/usr/include/c++/7/bits/random.tcc **** 	      {
1847:/usr/include/c++/7/bits/random.tcc **** 		__x = result_type(2.0) * __aurng() - 1.0;
1848:/usr/include/c++/7/bits/random.tcc **** 		__y = result_type(2.0) * __aurng() - 1.0;
1849:/usr/include/c++/7/bits/random.tcc **** 		__r2 = __x * __x + __y * __y;
1850:/usr/include/c++/7/bits/random.tcc **** 	      }
1851:/usr/include/c++/7/bits/random.tcc **** 	    while (__r2 > 1.0 || __r2 == 0.0);
1852:/usr/include/c++/7/bits/random.tcc **** 
1853:/usr/include/c++/7/bits/random.tcc **** 	    const result_type __mult = std::sqrt(-2 * std::log(__r2) / __r2);
1854:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __y * __mult * __param.stddev() + __param.mean();
1855:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __x * __mult * __param.stddev() + __param.mean();
1856:/usr/include/c++/7/bits/random.tcc **** 	  }
1857:/usr/include/c++/7/bits/random.tcc **** 
1858:/usr/include/c++/7/bits/random.tcc **** 	if (__f != __t)
1859:/usr/include/c++/7/bits/random.tcc **** 	  {
1860:/usr/include/c++/7/bits/random.tcc **** 	    result_type __x, __y, __r2;
1861:/usr/include/c++/7/bits/random.tcc **** 	    do
1862:/usr/include/c++/7/bits/random.tcc **** 	      {
1863:/usr/include/c++/7/bits/random.tcc **** 		__x = result_type(2.0) * __aurng() - 1.0;
1864:/usr/include/c++/7/bits/random.tcc **** 		__y = result_type(2.0) * __aurng() - 1.0;
1865:/usr/include/c++/7/bits/random.tcc **** 		__r2 = __x * __x + __y * __y;
1866:/usr/include/c++/7/bits/random.tcc **** 	      }
1867:/usr/include/c++/7/bits/random.tcc **** 	    while (__r2 > 1.0 || __r2 == 0.0);
1868:/usr/include/c++/7/bits/random.tcc **** 
1869:/usr/include/c++/7/bits/random.tcc **** 	    const result_type __mult = std::sqrt(-2 * std::log(__r2) / __r2);
1870:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved = __x * __mult;
1871:/usr/include/c++/7/bits/random.tcc **** 	    _M_saved_available = true;
1872:/usr/include/c++/7/bits/random.tcc **** 	    *__f = __y * __mult * __param.stddev() + __param.mean();
1873:/usr/include/c++/7/bits/random.tcc **** 	  }
1874:/usr/include/c++/7/bits/random.tcc ****       }
1875:/usr/include/c++/7/bits/random.tcc **** 
1876:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
1877:/usr/include/c++/7/bits/random.tcc ****     bool
1878:/usr/include/c++/7/bits/random.tcc ****     operator==(const std::normal_distribution<_RealType>& __d1,
1879:/usr/include/c++/7/bits/random.tcc **** 	       const std::normal_distribution<_RealType>& __d2)
1880:/usr/include/c++/7/bits/random.tcc ****     {
1881:/usr/include/c++/7/bits/random.tcc ****       if (__d1._M_param == __d2._M_param
1882:/usr/include/c++/7/bits/random.tcc **** 	  && __d1._M_saved_available == __d2._M_saved_available)
1883:/usr/include/c++/7/bits/random.tcc **** 	{
1884:/usr/include/c++/7/bits/random.tcc **** 	  if (__d1._M_saved_available
1885:/usr/include/c++/7/bits/random.tcc **** 	      && __d1._M_saved == __d2._M_saved)
1886:/usr/include/c++/7/bits/random.tcc **** 	    return true;
1887:/usr/include/c++/7/bits/random.tcc **** 	  else if(!__d1._M_saved_available)
1888:/usr/include/c++/7/bits/random.tcc **** 	    return true;
1889:/usr/include/c++/7/bits/random.tcc **** 	  else
1890:/usr/include/c++/7/bits/random.tcc **** 	    return false;
1891:/usr/include/c++/7/bits/random.tcc **** 	}
1892:/usr/include/c++/7/bits/random.tcc ****       else
1893:/usr/include/c++/7/bits/random.tcc **** 	return false;
1894:/usr/include/c++/7/bits/random.tcc ****     }
1895:/usr/include/c++/7/bits/random.tcc **** 
1896:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1897:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1898:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1899:/usr/include/c++/7/bits/random.tcc **** 	       const normal_distribution<_RealType>& __x)
1900:/usr/include/c++/7/bits/random.tcc ****     {
1901:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1902:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1903:/usr/include/c++/7/bits/random.tcc **** 
1904:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1905:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1906:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1907:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
1908:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1909:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
1910:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
1911:/usr/include/c++/7/bits/random.tcc **** 
1912:/usr/include/c++/7/bits/random.tcc ****       __os << __x.mean() << __space << __x.stddev()
1913:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_saved_available;
1914:/usr/include/c++/7/bits/random.tcc ****       if (__x._M_saved_available)
1915:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << __x._M_saved;
1916:/usr/include/c++/7/bits/random.tcc **** 
1917:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1918:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1919:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1920:/usr/include/c++/7/bits/random.tcc ****       return __os;
1921:/usr/include/c++/7/bits/random.tcc ****     }
1922:/usr/include/c++/7/bits/random.tcc **** 
1923:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1924:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1925:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1926:/usr/include/c++/7/bits/random.tcc **** 	       normal_distribution<_RealType>& __x)
1927:/usr/include/c++/7/bits/random.tcc ****     {
1928:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1929:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1930:/usr/include/c++/7/bits/random.tcc **** 
1931:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1932:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
1933:/usr/include/c++/7/bits/random.tcc **** 
1934:/usr/include/c++/7/bits/random.tcc ****       double __mean, __stddev;
1935:/usr/include/c++/7/bits/random.tcc ****       __is >> __mean >> __stddev
1936:/usr/include/c++/7/bits/random.tcc **** 	   >> __x._M_saved_available;
1937:/usr/include/c++/7/bits/random.tcc ****       if (__x._M_saved_available)
1938:/usr/include/c++/7/bits/random.tcc **** 	__is >> __x._M_saved;
1939:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename normal_distribution<_RealType>::
1940:/usr/include/c++/7/bits/random.tcc **** 		param_type(__mean, __stddev));
1941:/usr/include/c++/7/bits/random.tcc **** 
1942:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
1943:/usr/include/c++/7/bits/random.tcc ****       return __is;
1944:/usr/include/c++/7/bits/random.tcc ****     }
1945:/usr/include/c++/7/bits/random.tcc **** 
1946:/usr/include/c++/7/bits/random.tcc **** 
1947:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
1948:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
1949:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
1950:/usr/include/c++/7/bits/random.tcc ****       void
1951:/usr/include/c++/7/bits/random.tcc ****       lognormal_distribution<_RealType>::
1952:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
1953:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
1954:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
1955:/usr/include/c++/7/bits/random.tcc ****       {
1956:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
1957:/usr/include/c++/7/bits/random.tcc **** 	  while (__f != __t)
1958:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = std::exp(__p.s() * _M_nd(__urng) + __p.m());
1959:/usr/include/c++/7/bits/random.tcc ****       }
1960:/usr/include/c++/7/bits/random.tcc **** 
1961:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1962:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
1963:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1964:/usr/include/c++/7/bits/random.tcc **** 	       const lognormal_distribution<_RealType>& __x)
1965:/usr/include/c++/7/bits/random.tcc ****     {
1966:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
1967:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
1968:/usr/include/c++/7/bits/random.tcc **** 
1969:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
1970:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
1971:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
1972:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
1973:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
1974:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
1975:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
1976:/usr/include/c++/7/bits/random.tcc **** 
1977:/usr/include/c++/7/bits/random.tcc ****       __os << __x.m() << __space << __x.s()
1978:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_nd;
1979:/usr/include/c++/7/bits/random.tcc **** 
1980:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
1981:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
1982:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
1983:/usr/include/c++/7/bits/random.tcc ****       return __os;
1984:/usr/include/c++/7/bits/random.tcc ****     }
1985:/usr/include/c++/7/bits/random.tcc **** 
1986:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
1987:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
1988:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
1989:/usr/include/c++/7/bits/random.tcc **** 	       lognormal_distribution<_RealType>& __x)
1990:/usr/include/c++/7/bits/random.tcc ****     {
1991:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
1992:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
1993:/usr/include/c++/7/bits/random.tcc **** 
1994:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
1995:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
1996:/usr/include/c++/7/bits/random.tcc **** 
1997:/usr/include/c++/7/bits/random.tcc ****       _RealType __m, __s;
1998:/usr/include/c++/7/bits/random.tcc ****       __is >> __m >> __s >> __x._M_nd;
1999:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename lognormal_distribution<_RealType>::
2000:/usr/include/c++/7/bits/random.tcc **** 		param_type(__m, __s));
2001:/usr/include/c++/7/bits/random.tcc **** 
2002:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2003:/usr/include/c++/7/bits/random.tcc ****       return __is;
2004:/usr/include/c++/7/bits/random.tcc ****     }
2005:/usr/include/c++/7/bits/random.tcc **** 
2006:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2007:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2008:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2009:/usr/include/c++/7/bits/random.tcc ****       void
2010:/usr/include/c++/7/bits/random.tcc ****       std::chi_squared_distribution<_RealType>::
2011:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2012:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng)
2013:/usr/include/c++/7/bits/random.tcc ****       {
2014:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2015:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2016:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = 2 * _M_gd(__urng);
2017:/usr/include/c++/7/bits/random.tcc ****       }
2018:/usr/include/c++/7/bits/random.tcc **** 
2019:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2020:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2021:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2022:/usr/include/c++/7/bits/random.tcc ****       void
2023:/usr/include/c++/7/bits/random.tcc ****       std::chi_squared_distribution<_RealType>::
2024:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2025:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2026:/usr/include/c++/7/bits/random.tcc **** 		      const typename
2027:/usr/include/c++/7/bits/random.tcc **** 		      std::gamma_distribution<result_type>::param_type& __p)
2028:/usr/include/c++/7/bits/random.tcc ****       {
2029:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2030:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2031:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = 2 * _M_gd(__urng, __p);
2032:/usr/include/c++/7/bits/random.tcc ****       }
2033:/usr/include/c++/7/bits/random.tcc **** 
2034:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2035:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2036:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2037:/usr/include/c++/7/bits/random.tcc **** 	       const chi_squared_distribution<_RealType>& __x)
2038:/usr/include/c++/7/bits/random.tcc ****     {
2039:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2040:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2041:/usr/include/c++/7/bits/random.tcc **** 
2042:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2043:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2044:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2045:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2046:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2047:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2048:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2049:/usr/include/c++/7/bits/random.tcc **** 
2050:/usr/include/c++/7/bits/random.tcc ****       __os << __x.n() << __space << __x._M_gd;
2051:/usr/include/c++/7/bits/random.tcc **** 
2052:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2053:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2054:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2055:/usr/include/c++/7/bits/random.tcc ****       return __os;
2056:/usr/include/c++/7/bits/random.tcc ****     }
2057:/usr/include/c++/7/bits/random.tcc **** 
2058:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2059:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2060:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2061:/usr/include/c++/7/bits/random.tcc **** 	       chi_squared_distribution<_RealType>& __x)
2062:/usr/include/c++/7/bits/random.tcc ****     {
2063:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2064:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2065:/usr/include/c++/7/bits/random.tcc **** 
2066:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2067:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2068:/usr/include/c++/7/bits/random.tcc **** 
2069:/usr/include/c++/7/bits/random.tcc ****       _RealType __n;
2070:/usr/include/c++/7/bits/random.tcc ****       __is >> __n >> __x._M_gd;
2071:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename chi_squared_distribution<_RealType>::
2072:/usr/include/c++/7/bits/random.tcc **** 		param_type(__n));
2073:/usr/include/c++/7/bits/random.tcc **** 
2074:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2075:/usr/include/c++/7/bits/random.tcc ****       return __is;
2076:/usr/include/c++/7/bits/random.tcc ****     }
2077:/usr/include/c++/7/bits/random.tcc **** 
2078:/usr/include/c++/7/bits/random.tcc **** 
2079:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2080:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2081:/usr/include/c++/7/bits/random.tcc ****       typename cauchy_distribution<_RealType>::result_type
2082:/usr/include/c++/7/bits/random.tcc ****       cauchy_distribution<_RealType>::
2083:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2084:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __p)
2085:/usr/include/c++/7/bits/random.tcc ****       {
2086:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2087:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2088:/usr/include/c++/7/bits/random.tcc **** 	_RealType __u;
2089:/usr/include/c++/7/bits/random.tcc **** 	do
2090:/usr/include/c++/7/bits/random.tcc **** 	  __u = __aurng();
2091:/usr/include/c++/7/bits/random.tcc **** 	while (__u == 0.5);
2092:/usr/include/c++/7/bits/random.tcc **** 
2093:/usr/include/c++/7/bits/random.tcc **** 	const _RealType __pi = 3.1415926535897932384626433832795029L;
2094:/usr/include/c++/7/bits/random.tcc **** 	return __p.a() + __p.b() * std::tan(__pi * __u);
2095:/usr/include/c++/7/bits/random.tcc ****       }
2096:/usr/include/c++/7/bits/random.tcc **** 
2097:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2098:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2099:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2100:/usr/include/c++/7/bits/random.tcc ****       void
2101:/usr/include/c++/7/bits/random.tcc ****       cauchy_distribution<_RealType>::
2102:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2103:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2104:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
2105:/usr/include/c++/7/bits/random.tcc ****       {
2106:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2107:/usr/include/c++/7/bits/random.tcc **** 	const _RealType __pi = 3.1415926535897932384626433832795029L;
2108:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2109:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2110:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2111:/usr/include/c++/7/bits/random.tcc **** 	  {
2112:/usr/include/c++/7/bits/random.tcc **** 	    _RealType __u;
2113:/usr/include/c++/7/bits/random.tcc **** 	    do
2114:/usr/include/c++/7/bits/random.tcc **** 	      __u = __aurng();
2115:/usr/include/c++/7/bits/random.tcc **** 	    while (__u == 0.5);
2116:/usr/include/c++/7/bits/random.tcc **** 
2117:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __p.a() + __p.b() * std::tan(__pi * __u);
2118:/usr/include/c++/7/bits/random.tcc **** 	  }
2119:/usr/include/c++/7/bits/random.tcc ****       }
2120:/usr/include/c++/7/bits/random.tcc **** 
2121:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2122:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2123:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2124:/usr/include/c++/7/bits/random.tcc **** 	       const cauchy_distribution<_RealType>& __x)
2125:/usr/include/c++/7/bits/random.tcc ****     {
2126:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2127:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2128:/usr/include/c++/7/bits/random.tcc **** 
2129:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2130:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2131:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2132:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2133:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2134:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2135:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2136:/usr/include/c++/7/bits/random.tcc **** 
2137:/usr/include/c++/7/bits/random.tcc ****       __os << __x.a() << __space << __x.b();
2138:/usr/include/c++/7/bits/random.tcc **** 
2139:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2140:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2141:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2142:/usr/include/c++/7/bits/random.tcc ****       return __os;
2143:/usr/include/c++/7/bits/random.tcc ****     }
2144:/usr/include/c++/7/bits/random.tcc **** 
2145:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2146:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2147:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2148:/usr/include/c++/7/bits/random.tcc **** 	       cauchy_distribution<_RealType>& __x)
2149:/usr/include/c++/7/bits/random.tcc ****     {
2150:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2151:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2152:/usr/include/c++/7/bits/random.tcc **** 
2153:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2154:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2155:/usr/include/c++/7/bits/random.tcc **** 
2156:/usr/include/c++/7/bits/random.tcc ****       _RealType __a, __b;
2157:/usr/include/c++/7/bits/random.tcc ****       __is >> __a >> __b;
2158:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename cauchy_distribution<_RealType>::
2159:/usr/include/c++/7/bits/random.tcc **** 		param_type(__a, __b));
2160:/usr/include/c++/7/bits/random.tcc **** 
2161:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2162:/usr/include/c++/7/bits/random.tcc ****       return __is;
2163:/usr/include/c++/7/bits/random.tcc ****     }
2164:/usr/include/c++/7/bits/random.tcc **** 
2165:/usr/include/c++/7/bits/random.tcc **** 
2166:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2167:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2168:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2169:/usr/include/c++/7/bits/random.tcc ****       void
2170:/usr/include/c++/7/bits/random.tcc ****       std::fisher_f_distribution<_RealType>::
2171:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2172:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng)
2173:/usr/include/c++/7/bits/random.tcc ****       {
2174:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2175:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2176:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = ((_M_gd_x(__urng) * n()) / (_M_gd_y(__urng) * m()));
2177:/usr/include/c++/7/bits/random.tcc ****       }
2178:/usr/include/c++/7/bits/random.tcc **** 
2179:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2180:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2181:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2182:/usr/include/c++/7/bits/random.tcc ****       void
2183:/usr/include/c++/7/bits/random.tcc ****       std::fisher_f_distribution<_RealType>::
2184:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2185:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2186:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
2187:/usr/include/c++/7/bits/random.tcc ****       {
2188:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2189:/usr/include/c++/7/bits/random.tcc **** 	typedef typename std::gamma_distribution<result_type>::param_type
2190:/usr/include/c++/7/bits/random.tcc **** 	  param_type;
2191:/usr/include/c++/7/bits/random.tcc **** 	param_type __p1(__p.m() / 2);
2192:/usr/include/c++/7/bits/random.tcc **** 	param_type __p2(__p.n() / 2);
2193:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2194:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = ((_M_gd_x(__urng, __p1) * n())
2195:/usr/include/c++/7/bits/random.tcc **** 		    / (_M_gd_y(__urng, __p2) * m()));
2196:/usr/include/c++/7/bits/random.tcc ****       }
2197:/usr/include/c++/7/bits/random.tcc **** 
2198:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2199:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2200:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2201:/usr/include/c++/7/bits/random.tcc **** 	       const fisher_f_distribution<_RealType>& __x)
2202:/usr/include/c++/7/bits/random.tcc ****     {
2203:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2204:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2205:/usr/include/c++/7/bits/random.tcc **** 
2206:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2207:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2208:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2209:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2210:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2211:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2212:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2213:/usr/include/c++/7/bits/random.tcc **** 
2214:/usr/include/c++/7/bits/random.tcc ****       __os << __x.m() << __space << __x.n()
2215:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_gd_x << __space << __x._M_gd_y;
2216:/usr/include/c++/7/bits/random.tcc **** 
2217:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2218:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2219:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2220:/usr/include/c++/7/bits/random.tcc ****       return __os;
2221:/usr/include/c++/7/bits/random.tcc ****     }
2222:/usr/include/c++/7/bits/random.tcc **** 
2223:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2224:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2225:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2226:/usr/include/c++/7/bits/random.tcc **** 	       fisher_f_distribution<_RealType>& __x)
2227:/usr/include/c++/7/bits/random.tcc ****     {
2228:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2229:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2230:/usr/include/c++/7/bits/random.tcc **** 
2231:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2232:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2233:/usr/include/c++/7/bits/random.tcc **** 
2234:/usr/include/c++/7/bits/random.tcc ****       _RealType __m, __n;
2235:/usr/include/c++/7/bits/random.tcc ****       __is >> __m >> __n >> __x._M_gd_x >> __x._M_gd_y;
2236:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename fisher_f_distribution<_RealType>::
2237:/usr/include/c++/7/bits/random.tcc **** 		param_type(__m, __n));
2238:/usr/include/c++/7/bits/random.tcc **** 
2239:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2240:/usr/include/c++/7/bits/random.tcc ****       return __is;
2241:/usr/include/c++/7/bits/random.tcc ****     }
2242:/usr/include/c++/7/bits/random.tcc **** 
2243:/usr/include/c++/7/bits/random.tcc **** 
2244:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2245:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2246:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2247:/usr/include/c++/7/bits/random.tcc ****       void
2248:/usr/include/c++/7/bits/random.tcc ****       std::student_t_distribution<_RealType>::
2249:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2250:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng)
2251:/usr/include/c++/7/bits/random.tcc ****       {
2252:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2253:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2254:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = _M_nd(__urng) * std::sqrt(n() / _M_gd(__urng));
2255:/usr/include/c++/7/bits/random.tcc ****       }
2256:/usr/include/c++/7/bits/random.tcc **** 
2257:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2258:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2259:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2260:/usr/include/c++/7/bits/random.tcc ****       void
2261:/usr/include/c++/7/bits/random.tcc ****       std::student_t_distribution<_RealType>::
2262:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2263:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2264:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
2265:/usr/include/c++/7/bits/random.tcc ****       {
2266:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2267:/usr/include/c++/7/bits/random.tcc **** 	typename std::gamma_distribution<result_type>::param_type
2268:/usr/include/c++/7/bits/random.tcc **** 	  __p2(__p.n() / 2, 2);
2269:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2270:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ =  _M_nd(__urng) * std::sqrt(__p.n() / _M_gd(__urng, __p2));
2271:/usr/include/c++/7/bits/random.tcc ****       }
2272:/usr/include/c++/7/bits/random.tcc **** 
2273:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2274:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2275:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2276:/usr/include/c++/7/bits/random.tcc **** 	       const student_t_distribution<_RealType>& __x)
2277:/usr/include/c++/7/bits/random.tcc ****     {
2278:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2279:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2280:/usr/include/c++/7/bits/random.tcc **** 
2281:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2282:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2283:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2284:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2285:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2286:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2287:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2288:/usr/include/c++/7/bits/random.tcc **** 
2289:/usr/include/c++/7/bits/random.tcc ****       __os << __x.n() << __space << __x._M_nd << __space << __x._M_gd;
2290:/usr/include/c++/7/bits/random.tcc **** 
2291:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2292:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2293:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2294:/usr/include/c++/7/bits/random.tcc ****       return __os;
2295:/usr/include/c++/7/bits/random.tcc ****     }
2296:/usr/include/c++/7/bits/random.tcc **** 
2297:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2298:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2299:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2300:/usr/include/c++/7/bits/random.tcc **** 	       student_t_distribution<_RealType>& __x)
2301:/usr/include/c++/7/bits/random.tcc ****     {
2302:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2303:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2304:/usr/include/c++/7/bits/random.tcc **** 
2305:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2306:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2307:/usr/include/c++/7/bits/random.tcc **** 
2308:/usr/include/c++/7/bits/random.tcc ****       _RealType __n;
2309:/usr/include/c++/7/bits/random.tcc ****       __is >> __n >> __x._M_nd >> __x._M_gd;
2310:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename student_t_distribution<_RealType>::param_type(__n));
2311:/usr/include/c++/7/bits/random.tcc **** 
2312:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2313:/usr/include/c++/7/bits/random.tcc ****       return __is;
2314:/usr/include/c++/7/bits/random.tcc ****     }
2315:/usr/include/c++/7/bits/random.tcc **** 
2316:/usr/include/c++/7/bits/random.tcc **** 
2317:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2318:/usr/include/c++/7/bits/random.tcc ****     void
2319:/usr/include/c++/7/bits/random.tcc ****     gamma_distribution<_RealType>::param_type::
2320:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
2321:/usr/include/c++/7/bits/random.tcc ****     {
2322:/usr/include/c++/7/bits/random.tcc ****       _M_malpha = _M_alpha < 1.0 ? _M_alpha + _RealType(1.0) : _M_alpha;
2323:/usr/include/c++/7/bits/random.tcc **** 
2324:/usr/include/c++/7/bits/random.tcc ****       const _RealType __a1 = _M_malpha - _RealType(1.0) / _RealType(3.0);
2325:/usr/include/c++/7/bits/random.tcc ****       _M_a2 = _RealType(1.0) / std::sqrt(_RealType(9.0) * __a1);
2326:/usr/include/c++/7/bits/random.tcc ****     }
2327:/usr/include/c++/7/bits/random.tcc **** 
2328:/usr/include/c++/7/bits/random.tcc ****   /**
2329:/usr/include/c++/7/bits/random.tcc ****    * Marsaglia, G. and Tsang, W. W.
2330:/usr/include/c++/7/bits/random.tcc ****    * "A Simple Method for Generating Gamma Variables"
2331:/usr/include/c++/7/bits/random.tcc ****    * ACM Transactions on Mathematical Software, 26, 3, 363-372, 2000.
2332:/usr/include/c++/7/bits/random.tcc ****    */
2333:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2334:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2335:/usr/include/c++/7/bits/random.tcc ****       typename gamma_distribution<_RealType>::result_type
2336:/usr/include/c++/7/bits/random.tcc ****       gamma_distribution<_RealType>::
2337:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2338:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
2339:/usr/include/c++/7/bits/random.tcc ****       {
2340:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2341:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2342:/usr/include/c++/7/bits/random.tcc **** 
2343:/usr/include/c++/7/bits/random.tcc **** 	result_type __u, __v, __n;
2344:/usr/include/c++/7/bits/random.tcc **** 	const result_type __a1 = (__param._M_malpha
2345:/usr/include/c++/7/bits/random.tcc **** 				  - _RealType(1.0) / _RealType(3.0));
2346:/usr/include/c++/7/bits/random.tcc **** 
2347:/usr/include/c++/7/bits/random.tcc **** 	do
2348:/usr/include/c++/7/bits/random.tcc **** 	  {
2349:/usr/include/c++/7/bits/random.tcc **** 	    do
2350:/usr/include/c++/7/bits/random.tcc **** 	      {
2351:/usr/include/c++/7/bits/random.tcc **** 		__n = _M_nd(__urng);
2352:/usr/include/c++/7/bits/random.tcc **** 		__v = result_type(1.0) + __param._M_a2 * __n; 
2353:/usr/include/c++/7/bits/random.tcc **** 	      }
2354:/usr/include/c++/7/bits/random.tcc **** 	    while (__v <= 0.0);
2355:/usr/include/c++/7/bits/random.tcc **** 
2356:/usr/include/c++/7/bits/random.tcc **** 	    __v = __v * __v * __v;
2357:/usr/include/c++/7/bits/random.tcc **** 	    __u = __aurng();
2358:/usr/include/c++/7/bits/random.tcc **** 	  }
2359:/usr/include/c++/7/bits/random.tcc **** 	while (__u > result_type(1.0) - 0.331 * __n * __n * __n * __n
2360:/usr/include/c++/7/bits/random.tcc **** 	       && (std::log(__u) > (0.5 * __n * __n + __a1
2361:/usr/include/c++/7/bits/random.tcc **** 				    * (1.0 - __v + std::log(__v)))));
2362:/usr/include/c++/7/bits/random.tcc **** 
2363:/usr/include/c++/7/bits/random.tcc **** 	if (__param.alpha() == __param._M_malpha)
2364:/usr/include/c++/7/bits/random.tcc **** 	  return __a1 * __v * __param.beta();
2365:/usr/include/c++/7/bits/random.tcc **** 	else
2366:/usr/include/c++/7/bits/random.tcc **** 	  {
2367:/usr/include/c++/7/bits/random.tcc **** 	    do
2368:/usr/include/c++/7/bits/random.tcc **** 	      __u = __aurng();
2369:/usr/include/c++/7/bits/random.tcc **** 	    while (__u == 0.0);
2370:/usr/include/c++/7/bits/random.tcc **** 	    
2371:/usr/include/c++/7/bits/random.tcc **** 	    return (std::pow(__u, result_type(1.0) / __param.alpha())
2372:/usr/include/c++/7/bits/random.tcc **** 		    * __a1 * __v * __param.beta());
2373:/usr/include/c++/7/bits/random.tcc **** 	  }
2374:/usr/include/c++/7/bits/random.tcc ****       }
2375:/usr/include/c++/7/bits/random.tcc **** 
2376:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2377:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2378:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2379:/usr/include/c++/7/bits/random.tcc ****       void
2380:/usr/include/c++/7/bits/random.tcc ****       gamma_distribution<_RealType>::
2381:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2382:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2383:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
2384:/usr/include/c++/7/bits/random.tcc ****       {
2385:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2386:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2387:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2388:/usr/include/c++/7/bits/random.tcc **** 
2389:/usr/include/c++/7/bits/random.tcc **** 	result_type __u, __v, __n;
2390:/usr/include/c++/7/bits/random.tcc **** 	const result_type __a1 = (__param._M_malpha
2391:/usr/include/c++/7/bits/random.tcc **** 				  - _RealType(1.0) / _RealType(3.0));
2392:/usr/include/c++/7/bits/random.tcc **** 
2393:/usr/include/c++/7/bits/random.tcc **** 	if (__param.alpha() == __param._M_malpha)
2394:/usr/include/c++/7/bits/random.tcc **** 	  while (__f != __t)
2395:/usr/include/c++/7/bits/random.tcc **** 	    {
2396:/usr/include/c++/7/bits/random.tcc **** 	      do
2397:/usr/include/c++/7/bits/random.tcc **** 		{
2398:/usr/include/c++/7/bits/random.tcc **** 		  do
2399:/usr/include/c++/7/bits/random.tcc **** 		    {
2400:/usr/include/c++/7/bits/random.tcc **** 		      __n = _M_nd(__urng);
2401:/usr/include/c++/7/bits/random.tcc **** 		      __v = result_type(1.0) + __param._M_a2 * __n;
2402:/usr/include/c++/7/bits/random.tcc **** 		    }
2403:/usr/include/c++/7/bits/random.tcc **** 		  while (__v <= 0.0);
2404:/usr/include/c++/7/bits/random.tcc **** 
2405:/usr/include/c++/7/bits/random.tcc **** 		  __v = __v * __v * __v;
2406:/usr/include/c++/7/bits/random.tcc **** 		  __u = __aurng();
2407:/usr/include/c++/7/bits/random.tcc **** 		}
2408:/usr/include/c++/7/bits/random.tcc **** 	      while (__u > result_type(1.0) - 0.331 * __n * __n * __n * __n
2409:/usr/include/c++/7/bits/random.tcc **** 		     && (std::log(__u) > (0.5 * __n * __n + __a1
2410:/usr/include/c++/7/bits/random.tcc **** 					  * (1.0 - __v + std::log(__v)))));
2411:/usr/include/c++/7/bits/random.tcc **** 
2412:/usr/include/c++/7/bits/random.tcc **** 	      *__f++ = __a1 * __v * __param.beta();
2413:/usr/include/c++/7/bits/random.tcc **** 	    }
2414:/usr/include/c++/7/bits/random.tcc **** 	else
2415:/usr/include/c++/7/bits/random.tcc **** 	  while (__f != __t)
2416:/usr/include/c++/7/bits/random.tcc **** 	    {
2417:/usr/include/c++/7/bits/random.tcc **** 	      do
2418:/usr/include/c++/7/bits/random.tcc **** 		{
2419:/usr/include/c++/7/bits/random.tcc **** 		  do
2420:/usr/include/c++/7/bits/random.tcc **** 		    {
2421:/usr/include/c++/7/bits/random.tcc **** 		      __n = _M_nd(__urng);
2422:/usr/include/c++/7/bits/random.tcc **** 		      __v = result_type(1.0) + __param._M_a2 * __n;
2423:/usr/include/c++/7/bits/random.tcc **** 		    }
2424:/usr/include/c++/7/bits/random.tcc **** 		  while (__v <= 0.0);
2425:/usr/include/c++/7/bits/random.tcc **** 
2426:/usr/include/c++/7/bits/random.tcc **** 		  __v = __v * __v * __v;
2427:/usr/include/c++/7/bits/random.tcc **** 		  __u = __aurng();
2428:/usr/include/c++/7/bits/random.tcc **** 		}
2429:/usr/include/c++/7/bits/random.tcc **** 	      while (__u > result_type(1.0) - 0.331 * __n * __n * __n * __n
2430:/usr/include/c++/7/bits/random.tcc **** 		     && (std::log(__u) > (0.5 * __n * __n + __a1
2431:/usr/include/c++/7/bits/random.tcc **** 					  * (1.0 - __v + std::log(__v)))));
2432:/usr/include/c++/7/bits/random.tcc **** 
2433:/usr/include/c++/7/bits/random.tcc **** 	      do
2434:/usr/include/c++/7/bits/random.tcc **** 		__u = __aurng();
2435:/usr/include/c++/7/bits/random.tcc **** 	      while (__u == 0.0);
2436:/usr/include/c++/7/bits/random.tcc **** 
2437:/usr/include/c++/7/bits/random.tcc **** 	      *__f++ = (std::pow(__u, result_type(1.0) / __param.alpha())
2438:/usr/include/c++/7/bits/random.tcc **** 			* __a1 * __v * __param.beta());
2439:/usr/include/c++/7/bits/random.tcc **** 	    }
2440:/usr/include/c++/7/bits/random.tcc ****       }
2441:/usr/include/c++/7/bits/random.tcc **** 
2442:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2443:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2444:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2445:/usr/include/c++/7/bits/random.tcc **** 	       const gamma_distribution<_RealType>& __x)
2446:/usr/include/c++/7/bits/random.tcc ****     {
2447:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2448:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2449:/usr/include/c++/7/bits/random.tcc **** 
2450:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2451:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2452:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2453:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2454:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2455:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2456:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2457:/usr/include/c++/7/bits/random.tcc **** 
2458:/usr/include/c++/7/bits/random.tcc ****       __os << __x.alpha() << __space << __x.beta()
2459:/usr/include/c++/7/bits/random.tcc **** 	   << __space << __x._M_nd;
2460:/usr/include/c++/7/bits/random.tcc **** 
2461:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2462:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2463:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2464:/usr/include/c++/7/bits/random.tcc ****       return __os;
2465:/usr/include/c++/7/bits/random.tcc ****     }
2466:/usr/include/c++/7/bits/random.tcc **** 
2467:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2468:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2469:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2470:/usr/include/c++/7/bits/random.tcc **** 	       gamma_distribution<_RealType>& __x)
2471:/usr/include/c++/7/bits/random.tcc ****     {
2472:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2473:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2474:/usr/include/c++/7/bits/random.tcc **** 
2475:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2476:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2477:/usr/include/c++/7/bits/random.tcc **** 
2478:/usr/include/c++/7/bits/random.tcc ****       _RealType __alpha_val, __beta_val;
2479:/usr/include/c++/7/bits/random.tcc ****       __is >> __alpha_val >> __beta_val >> __x._M_nd;
2480:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename gamma_distribution<_RealType>::
2481:/usr/include/c++/7/bits/random.tcc **** 		param_type(__alpha_val, __beta_val));
2482:/usr/include/c++/7/bits/random.tcc **** 
2483:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2484:/usr/include/c++/7/bits/random.tcc ****       return __is;
2485:/usr/include/c++/7/bits/random.tcc ****     }
2486:/usr/include/c++/7/bits/random.tcc **** 
2487:/usr/include/c++/7/bits/random.tcc **** 
2488:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2489:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2490:/usr/include/c++/7/bits/random.tcc ****       typename weibull_distribution<_RealType>::result_type
2491:/usr/include/c++/7/bits/random.tcc ****       weibull_distribution<_RealType>::
2492:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2493:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __p)
2494:/usr/include/c++/7/bits/random.tcc ****       {
2495:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2496:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2497:/usr/include/c++/7/bits/random.tcc **** 	return __p.b() * std::pow(-std::log(result_type(1) - __aurng()),
2498:/usr/include/c++/7/bits/random.tcc **** 				  result_type(1) / __p.a());
2499:/usr/include/c++/7/bits/random.tcc ****       }
2500:/usr/include/c++/7/bits/random.tcc **** 
2501:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2502:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2503:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2504:/usr/include/c++/7/bits/random.tcc ****       void
2505:/usr/include/c++/7/bits/random.tcc ****       weibull_distribution<_RealType>::
2506:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2507:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2508:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
2509:/usr/include/c++/7/bits/random.tcc ****       {
2510:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2511:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2512:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2513:/usr/include/c++/7/bits/random.tcc **** 	auto __inv_a = result_type(1) / __p.a();
2514:/usr/include/c++/7/bits/random.tcc **** 
2515:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2516:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = __p.b() * std::pow(-std::log(result_type(1) - __aurng()),
2517:/usr/include/c++/7/bits/random.tcc **** 				      __inv_a);
2518:/usr/include/c++/7/bits/random.tcc ****       }
2519:/usr/include/c++/7/bits/random.tcc **** 
2520:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2521:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2522:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2523:/usr/include/c++/7/bits/random.tcc **** 	       const weibull_distribution<_RealType>& __x)
2524:/usr/include/c++/7/bits/random.tcc ****     {
2525:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2526:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2527:/usr/include/c++/7/bits/random.tcc **** 
2528:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2529:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2530:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2531:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2532:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2533:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2534:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2535:/usr/include/c++/7/bits/random.tcc **** 
2536:/usr/include/c++/7/bits/random.tcc ****       __os << __x.a() << __space << __x.b();
2537:/usr/include/c++/7/bits/random.tcc **** 
2538:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2539:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2540:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2541:/usr/include/c++/7/bits/random.tcc ****       return __os;
2542:/usr/include/c++/7/bits/random.tcc ****     }
2543:/usr/include/c++/7/bits/random.tcc **** 
2544:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2545:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2546:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2547:/usr/include/c++/7/bits/random.tcc **** 	       weibull_distribution<_RealType>& __x)
2548:/usr/include/c++/7/bits/random.tcc ****     {
2549:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2550:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2551:/usr/include/c++/7/bits/random.tcc **** 
2552:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2553:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2554:/usr/include/c++/7/bits/random.tcc **** 
2555:/usr/include/c++/7/bits/random.tcc ****       _RealType __a, __b;
2556:/usr/include/c++/7/bits/random.tcc ****       __is >> __a >> __b;
2557:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename weibull_distribution<_RealType>::
2558:/usr/include/c++/7/bits/random.tcc **** 		param_type(__a, __b));
2559:/usr/include/c++/7/bits/random.tcc **** 
2560:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2561:/usr/include/c++/7/bits/random.tcc ****       return __is;
2562:/usr/include/c++/7/bits/random.tcc ****     }
2563:/usr/include/c++/7/bits/random.tcc **** 
2564:/usr/include/c++/7/bits/random.tcc **** 
2565:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2566:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2567:/usr/include/c++/7/bits/random.tcc ****       typename extreme_value_distribution<_RealType>::result_type
2568:/usr/include/c++/7/bits/random.tcc ****       extreme_value_distribution<_RealType>::
2569:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2570:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __p)
2571:/usr/include/c++/7/bits/random.tcc ****       {
2572:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2573:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2574:/usr/include/c++/7/bits/random.tcc **** 	return __p.a() - __p.b() * std::log(-std::log(result_type(1)
2575:/usr/include/c++/7/bits/random.tcc **** 						      - __aurng()));
2576:/usr/include/c++/7/bits/random.tcc ****       }
2577:/usr/include/c++/7/bits/random.tcc **** 
2578:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2579:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2580:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2581:/usr/include/c++/7/bits/random.tcc ****       void
2582:/usr/include/c++/7/bits/random.tcc ****       extreme_value_distribution<_RealType>::
2583:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2584:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2585:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __p)
2586:/usr/include/c++/7/bits/random.tcc ****       {
2587:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2588:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
2589:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2590:/usr/include/c++/7/bits/random.tcc **** 
2591:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2592:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = __p.a() - __p.b() * std::log(-std::log(result_type(1)
2593:/usr/include/c++/7/bits/random.tcc **** 							  - __aurng()));
2594:/usr/include/c++/7/bits/random.tcc ****       }
2595:/usr/include/c++/7/bits/random.tcc **** 
2596:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2597:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2598:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2599:/usr/include/c++/7/bits/random.tcc **** 	       const extreme_value_distribution<_RealType>& __x)
2600:/usr/include/c++/7/bits/random.tcc ****     {
2601:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2602:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2603:/usr/include/c++/7/bits/random.tcc **** 
2604:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2605:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2606:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2607:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2608:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2609:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2610:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2611:/usr/include/c++/7/bits/random.tcc **** 
2612:/usr/include/c++/7/bits/random.tcc ****       __os << __x.a() << __space << __x.b();
2613:/usr/include/c++/7/bits/random.tcc **** 
2614:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2615:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2616:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2617:/usr/include/c++/7/bits/random.tcc ****       return __os;
2618:/usr/include/c++/7/bits/random.tcc ****     }
2619:/usr/include/c++/7/bits/random.tcc **** 
2620:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2621:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2622:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2623:/usr/include/c++/7/bits/random.tcc **** 	       extreme_value_distribution<_RealType>& __x)
2624:/usr/include/c++/7/bits/random.tcc ****     {
2625:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2626:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2627:/usr/include/c++/7/bits/random.tcc **** 
2628:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2629:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2630:/usr/include/c++/7/bits/random.tcc **** 
2631:/usr/include/c++/7/bits/random.tcc ****       _RealType __a, __b;
2632:/usr/include/c++/7/bits/random.tcc ****       __is >> __a >> __b;
2633:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename extreme_value_distribution<_RealType>::
2634:/usr/include/c++/7/bits/random.tcc **** 		param_type(__a, __b));
2635:/usr/include/c++/7/bits/random.tcc **** 
2636:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2637:/usr/include/c++/7/bits/random.tcc ****       return __is;
2638:/usr/include/c++/7/bits/random.tcc ****     }
2639:/usr/include/c++/7/bits/random.tcc **** 
2640:/usr/include/c++/7/bits/random.tcc **** 
2641:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
2642:/usr/include/c++/7/bits/random.tcc ****     void
2643:/usr/include/c++/7/bits/random.tcc ****     discrete_distribution<_IntType>::param_type::
2644:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
2645:/usr/include/c++/7/bits/random.tcc ****     {
2646:/usr/include/c++/7/bits/random.tcc ****       if (_M_prob.size() < 2)
2647:/usr/include/c++/7/bits/random.tcc **** 	{
2648:/usr/include/c++/7/bits/random.tcc **** 	  _M_prob.clear();
2649:/usr/include/c++/7/bits/random.tcc **** 	  return;
2650:/usr/include/c++/7/bits/random.tcc **** 	}
2651:/usr/include/c++/7/bits/random.tcc **** 
2652:/usr/include/c++/7/bits/random.tcc ****       const double __sum = std::accumulate(_M_prob.begin(),
2653:/usr/include/c++/7/bits/random.tcc **** 					   _M_prob.end(), 0.0);
2654:/usr/include/c++/7/bits/random.tcc ****       // Now normalize the probabilites.
2655:/usr/include/c++/7/bits/random.tcc ****       __detail::__normalize(_M_prob.begin(), _M_prob.end(), _M_prob.begin(),
2656:/usr/include/c++/7/bits/random.tcc **** 			    __sum);
2657:/usr/include/c++/7/bits/random.tcc ****       // Accumulate partial sums.
2658:/usr/include/c++/7/bits/random.tcc ****       _M_cp.reserve(_M_prob.size());
2659:/usr/include/c++/7/bits/random.tcc ****       std::partial_sum(_M_prob.begin(), _M_prob.end(),
2660:/usr/include/c++/7/bits/random.tcc **** 		       std::back_inserter(_M_cp));
2661:/usr/include/c++/7/bits/random.tcc ****       // Make sure the last cumulative probability is one.
2662:/usr/include/c++/7/bits/random.tcc ****       _M_cp[_M_cp.size() - 1] = 1.0;
2663:/usr/include/c++/7/bits/random.tcc ****     }
2664:/usr/include/c++/7/bits/random.tcc **** 
2665:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
2666:/usr/include/c++/7/bits/random.tcc ****     template<typename _Func>
2667:/usr/include/c++/7/bits/random.tcc ****       discrete_distribution<_IntType>::param_type::
2668:/usr/include/c++/7/bits/random.tcc ****       param_type(size_t __nw, double __xmin, double __xmax, _Func __fw)
2669:/usr/include/c++/7/bits/random.tcc ****       : _M_prob(), _M_cp()
2670:/usr/include/c++/7/bits/random.tcc ****       {
2671:/usr/include/c++/7/bits/random.tcc **** 	const size_t __n = __nw == 0 ? 1 : __nw;
2672:/usr/include/c++/7/bits/random.tcc **** 	const double __delta = (__xmax - __xmin) / __n;
2673:/usr/include/c++/7/bits/random.tcc **** 
2674:/usr/include/c++/7/bits/random.tcc **** 	_M_prob.reserve(__n);
2675:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __k = 0; __k < __nw; ++__k)
2676:/usr/include/c++/7/bits/random.tcc **** 	  _M_prob.push_back(__fw(__xmin + __k * __delta + 0.5 * __delta));
2677:/usr/include/c++/7/bits/random.tcc **** 
2678:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
2679:/usr/include/c++/7/bits/random.tcc ****       }
2680:/usr/include/c++/7/bits/random.tcc **** 
2681:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
2682:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2683:/usr/include/c++/7/bits/random.tcc ****       typename discrete_distribution<_IntType>::result_type
2684:/usr/include/c++/7/bits/random.tcc ****       discrete_distribution<_IntType>::
2685:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2686:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
2687:/usr/include/c++/7/bits/random.tcc ****       {
2688:/usr/include/c++/7/bits/random.tcc **** 	if (__param._M_cp.empty())
2689:/usr/include/c++/7/bits/random.tcc **** 	  return result_type(0);
2690:/usr/include/c++/7/bits/random.tcc **** 
2691:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
2692:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2693:/usr/include/c++/7/bits/random.tcc **** 
2694:/usr/include/c++/7/bits/random.tcc **** 	const double __p = __aurng();
2695:/usr/include/c++/7/bits/random.tcc **** 	auto __pos = std::lower_bound(__param._M_cp.begin(),
2696:/usr/include/c++/7/bits/random.tcc **** 				      __param._M_cp.end(), __p);
2697:/usr/include/c++/7/bits/random.tcc **** 
2698:/usr/include/c++/7/bits/random.tcc **** 	return __pos - __param._M_cp.begin();
2699:/usr/include/c++/7/bits/random.tcc ****       }
2700:/usr/include/c++/7/bits/random.tcc **** 
2701:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
2702:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2703:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2704:/usr/include/c++/7/bits/random.tcc ****       void
2705:/usr/include/c++/7/bits/random.tcc ****       discrete_distribution<_IntType>::
2706:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2707:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2708:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
2709:/usr/include/c++/7/bits/random.tcc ****       {
2710:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2711:/usr/include/c++/7/bits/random.tcc **** 
2712:/usr/include/c++/7/bits/random.tcc **** 	if (__param._M_cp.empty())
2713:/usr/include/c++/7/bits/random.tcc **** 	  {
2714:/usr/include/c++/7/bits/random.tcc **** 	    while (__f != __t)
2715:/usr/include/c++/7/bits/random.tcc **** 	      *__f++ = result_type(0);
2716:/usr/include/c++/7/bits/random.tcc **** 	    return;
2717:/usr/include/c++/7/bits/random.tcc **** 	  }
2718:/usr/include/c++/7/bits/random.tcc **** 
2719:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
2720:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2721:/usr/include/c++/7/bits/random.tcc **** 
2722:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2723:/usr/include/c++/7/bits/random.tcc **** 	  {
2724:/usr/include/c++/7/bits/random.tcc **** 	    const double __p = __aurng();
2725:/usr/include/c++/7/bits/random.tcc **** 	    auto __pos = std::lower_bound(__param._M_cp.begin(),
2726:/usr/include/c++/7/bits/random.tcc **** 					  __param._M_cp.end(), __p);
2727:/usr/include/c++/7/bits/random.tcc **** 
2728:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = __pos - __param._M_cp.begin();
2729:/usr/include/c++/7/bits/random.tcc **** 	  }
2730:/usr/include/c++/7/bits/random.tcc ****       }
2731:/usr/include/c++/7/bits/random.tcc **** 
2732:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
2733:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2734:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2735:/usr/include/c++/7/bits/random.tcc **** 	       const discrete_distribution<_IntType>& __x)
2736:/usr/include/c++/7/bits/random.tcc ****     {
2737:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2738:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2739:/usr/include/c++/7/bits/random.tcc **** 
2740:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2741:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2742:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2743:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2744:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2745:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2746:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<double>::max_digits10);
2747:/usr/include/c++/7/bits/random.tcc **** 
2748:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __prob = __x.probabilities();
2749:/usr/include/c++/7/bits/random.tcc ****       __os << __prob.size();
2750:/usr/include/c++/7/bits/random.tcc ****       for (auto __dit = __prob.begin(); __dit != __prob.end(); ++__dit)
2751:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << *__dit;
2752:/usr/include/c++/7/bits/random.tcc **** 
2753:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2754:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2755:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2756:/usr/include/c++/7/bits/random.tcc ****       return __os;
2757:/usr/include/c++/7/bits/random.tcc ****     }
2758:/usr/include/c++/7/bits/random.tcc **** 
2759:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType, typename _CharT, typename _Traits>
2760:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2761:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2762:/usr/include/c++/7/bits/random.tcc **** 	       discrete_distribution<_IntType>& __x)
2763:/usr/include/c++/7/bits/random.tcc ****     {
2764:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2765:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2766:/usr/include/c++/7/bits/random.tcc **** 
2767:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2768:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2769:/usr/include/c++/7/bits/random.tcc **** 
2770:/usr/include/c++/7/bits/random.tcc ****       size_t __n;
2771:/usr/include/c++/7/bits/random.tcc ****       __is >> __n;
2772:/usr/include/c++/7/bits/random.tcc **** 
2773:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __prob_vec;
2774:/usr/include/c++/7/bits/random.tcc ****       __prob_vec.reserve(__n);
2775:/usr/include/c++/7/bits/random.tcc ****       for (; __n != 0; --__n)
2776:/usr/include/c++/7/bits/random.tcc **** 	{
2777:/usr/include/c++/7/bits/random.tcc **** 	  double __prob;
2778:/usr/include/c++/7/bits/random.tcc **** 	  __is >> __prob;
2779:/usr/include/c++/7/bits/random.tcc **** 	  __prob_vec.push_back(__prob);
2780:/usr/include/c++/7/bits/random.tcc **** 	}
2781:/usr/include/c++/7/bits/random.tcc **** 
2782:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename discrete_distribution<_IntType>::
2783:/usr/include/c++/7/bits/random.tcc **** 		param_type(__prob_vec.begin(), __prob_vec.end()));
2784:/usr/include/c++/7/bits/random.tcc **** 
2785:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
2786:/usr/include/c++/7/bits/random.tcc ****       return __is;
2787:/usr/include/c++/7/bits/random.tcc ****     }
2788:/usr/include/c++/7/bits/random.tcc **** 
2789:/usr/include/c++/7/bits/random.tcc **** 
2790:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2791:/usr/include/c++/7/bits/random.tcc ****     void
2792:/usr/include/c++/7/bits/random.tcc ****     piecewise_constant_distribution<_RealType>::param_type::
2793:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
2794:/usr/include/c++/7/bits/random.tcc ****     {
2795:/usr/include/c++/7/bits/random.tcc ****       if (_M_int.size() < 2
2796:/usr/include/c++/7/bits/random.tcc **** 	  || (_M_int.size() == 2
2797:/usr/include/c++/7/bits/random.tcc **** 	      && _M_int[0] == _RealType(0)
2798:/usr/include/c++/7/bits/random.tcc **** 	      && _M_int[1] == _RealType(1)))
2799:/usr/include/c++/7/bits/random.tcc **** 	{
2800:/usr/include/c++/7/bits/random.tcc **** 	  _M_int.clear();
2801:/usr/include/c++/7/bits/random.tcc **** 	  _M_den.clear();
2802:/usr/include/c++/7/bits/random.tcc **** 	  return;
2803:/usr/include/c++/7/bits/random.tcc **** 	}
2804:/usr/include/c++/7/bits/random.tcc **** 
2805:/usr/include/c++/7/bits/random.tcc ****       const double __sum = std::accumulate(_M_den.begin(),
2806:/usr/include/c++/7/bits/random.tcc **** 					   _M_den.end(), 0.0);
2807:/usr/include/c++/7/bits/random.tcc **** 
2808:/usr/include/c++/7/bits/random.tcc ****       __detail::__normalize(_M_den.begin(), _M_den.end(), _M_den.begin(),
2809:/usr/include/c++/7/bits/random.tcc **** 			    __sum);
2810:/usr/include/c++/7/bits/random.tcc **** 
2811:/usr/include/c++/7/bits/random.tcc ****       _M_cp.reserve(_M_den.size());
2812:/usr/include/c++/7/bits/random.tcc ****       std::partial_sum(_M_den.begin(), _M_den.end(),
2813:/usr/include/c++/7/bits/random.tcc **** 		       std::back_inserter(_M_cp));
2814:/usr/include/c++/7/bits/random.tcc **** 
2815:/usr/include/c++/7/bits/random.tcc ****       // Make sure the last cumulative probability is one.
2816:/usr/include/c++/7/bits/random.tcc ****       _M_cp[_M_cp.size() - 1] = 1.0;
2817:/usr/include/c++/7/bits/random.tcc **** 
2818:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = 0; __k < _M_den.size(); ++__k)
2819:/usr/include/c++/7/bits/random.tcc **** 	_M_den[__k] /= _M_int[__k + 1] - _M_int[__k];
2820:/usr/include/c++/7/bits/random.tcc ****     }
2821:/usr/include/c++/7/bits/random.tcc **** 
2822:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2823:/usr/include/c++/7/bits/random.tcc ****     template<typename _InputIteratorB, typename _InputIteratorW>
2824:/usr/include/c++/7/bits/random.tcc ****       piecewise_constant_distribution<_RealType>::param_type::
2825:/usr/include/c++/7/bits/random.tcc ****       param_type(_InputIteratorB __bbegin,
2826:/usr/include/c++/7/bits/random.tcc **** 		 _InputIteratorB __bend,
2827:/usr/include/c++/7/bits/random.tcc **** 		 _InputIteratorW __wbegin)
2828:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp()
2829:/usr/include/c++/7/bits/random.tcc ****       {
2830:/usr/include/c++/7/bits/random.tcc **** 	if (__bbegin != __bend)
2831:/usr/include/c++/7/bits/random.tcc **** 	  {
2832:/usr/include/c++/7/bits/random.tcc **** 	    for (;;)
2833:/usr/include/c++/7/bits/random.tcc **** 	      {
2834:/usr/include/c++/7/bits/random.tcc **** 		_M_int.push_back(*__bbegin);
2835:/usr/include/c++/7/bits/random.tcc **** 		++__bbegin;
2836:/usr/include/c++/7/bits/random.tcc **** 		if (__bbegin == __bend)
2837:/usr/include/c++/7/bits/random.tcc **** 		  break;
2838:/usr/include/c++/7/bits/random.tcc **** 
2839:/usr/include/c++/7/bits/random.tcc **** 		_M_den.push_back(*__wbegin);
2840:/usr/include/c++/7/bits/random.tcc **** 		++__wbegin;
2841:/usr/include/c++/7/bits/random.tcc **** 	      }
2842:/usr/include/c++/7/bits/random.tcc **** 	  }
2843:/usr/include/c++/7/bits/random.tcc **** 
2844:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
2845:/usr/include/c++/7/bits/random.tcc ****       }
2846:/usr/include/c++/7/bits/random.tcc **** 
2847:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2848:/usr/include/c++/7/bits/random.tcc ****     template<typename _Func>
2849:/usr/include/c++/7/bits/random.tcc ****       piecewise_constant_distribution<_RealType>::param_type::
2850:/usr/include/c++/7/bits/random.tcc ****       param_type(initializer_list<_RealType> __bl, _Func __fw)
2851:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp()
2852:/usr/include/c++/7/bits/random.tcc ****       {
2853:/usr/include/c++/7/bits/random.tcc **** 	_M_int.reserve(__bl.size());
2854:/usr/include/c++/7/bits/random.tcc **** 	for (auto __biter = __bl.begin(); __biter != __bl.end(); ++__biter)
2855:/usr/include/c++/7/bits/random.tcc **** 	  _M_int.push_back(*__biter);
2856:/usr/include/c++/7/bits/random.tcc **** 
2857:/usr/include/c++/7/bits/random.tcc **** 	_M_den.reserve(_M_int.size() - 1);
2858:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __k = 0; __k < _M_int.size() - 1; ++__k)
2859:/usr/include/c++/7/bits/random.tcc **** 	  _M_den.push_back(__fw(0.5 * (_M_int[__k + 1] + _M_int[__k])));
2860:/usr/include/c++/7/bits/random.tcc **** 
2861:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
2862:/usr/include/c++/7/bits/random.tcc ****       }
2863:/usr/include/c++/7/bits/random.tcc **** 
2864:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2865:/usr/include/c++/7/bits/random.tcc ****     template<typename _Func>
2866:/usr/include/c++/7/bits/random.tcc ****       piecewise_constant_distribution<_RealType>::param_type::
2867:/usr/include/c++/7/bits/random.tcc ****       param_type(size_t __nw, _RealType __xmin, _RealType __xmax, _Func __fw)
2868:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp()
2869:/usr/include/c++/7/bits/random.tcc ****       {
2870:/usr/include/c++/7/bits/random.tcc **** 	const size_t __n = __nw == 0 ? 1 : __nw;
2871:/usr/include/c++/7/bits/random.tcc **** 	const _RealType __delta = (__xmax - __xmin) / __n;
2872:/usr/include/c++/7/bits/random.tcc **** 
2873:/usr/include/c++/7/bits/random.tcc **** 	_M_int.reserve(__n + 1);
2874:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __k = 0; __k <= __nw; ++__k)
2875:/usr/include/c++/7/bits/random.tcc **** 	  _M_int.push_back(__xmin + __k * __delta);
2876:/usr/include/c++/7/bits/random.tcc **** 
2877:/usr/include/c++/7/bits/random.tcc **** 	_M_den.reserve(__n);
2878:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __k = 0; __k < __nw; ++__k)
2879:/usr/include/c++/7/bits/random.tcc **** 	  _M_den.push_back(__fw(_M_int[__k] + 0.5 * __delta));
2880:/usr/include/c++/7/bits/random.tcc **** 
2881:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
2882:/usr/include/c++/7/bits/random.tcc ****       }
2883:/usr/include/c++/7/bits/random.tcc **** 
2884:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2885:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
2886:/usr/include/c++/7/bits/random.tcc ****       typename piecewise_constant_distribution<_RealType>::result_type
2887:/usr/include/c++/7/bits/random.tcc ****       piecewise_constant_distribution<_RealType>::
2888:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
2889:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
2890:/usr/include/c++/7/bits/random.tcc ****       {
2891:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
2892:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2893:/usr/include/c++/7/bits/random.tcc **** 
2894:/usr/include/c++/7/bits/random.tcc **** 	const double __p = __aurng();
2895:/usr/include/c++/7/bits/random.tcc **** 	if (__param._M_cp.empty())
2896:/usr/include/c++/7/bits/random.tcc **** 	  return __p;
2897:/usr/include/c++/7/bits/random.tcc **** 
2898:/usr/include/c++/7/bits/random.tcc **** 	auto __pos = std::lower_bound(__param._M_cp.begin(),
2899:/usr/include/c++/7/bits/random.tcc **** 				      __param._M_cp.end(), __p);
2900:/usr/include/c++/7/bits/random.tcc **** 	const size_t __i = __pos - __param._M_cp.begin();
2901:/usr/include/c++/7/bits/random.tcc **** 
2902:/usr/include/c++/7/bits/random.tcc **** 	const double __pref = __i > 0 ? __param._M_cp[__i - 1] : 0.0;
2903:/usr/include/c++/7/bits/random.tcc **** 
2904:/usr/include/c++/7/bits/random.tcc **** 	return __param._M_int[__i] + (__p - __pref) / __param._M_den[__i];
2905:/usr/include/c++/7/bits/random.tcc ****       }
2906:/usr/include/c++/7/bits/random.tcc **** 
2907:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
2908:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
2909:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
2910:/usr/include/c++/7/bits/random.tcc ****       void
2911:/usr/include/c++/7/bits/random.tcc ****       piecewise_constant_distribution<_RealType>::
2912:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
2913:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
2914:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
2915:/usr/include/c++/7/bits/random.tcc ****       {
2916:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
2917:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
2918:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
2919:/usr/include/c++/7/bits/random.tcc **** 
2920:/usr/include/c++/7/bits/random.tcc **** 	if (__param._M_cp.empty())
2921:/usr/include/c++/7/bits/random.tcc **** 	  {
2922:/usr/include/c++/7/bits/random.tcc **** 	    while (__f != __t)
2923:/usr/include/c++/7/bits/random.tcc **** 	      *__f++ = __aurng();
2924:/usr/include/c++/7/bits/random.tcc **** 	    return;
2925:/usr/include/c++/7/bits/random.tcc **** 	  }
2926:/usr/include/c++/7/bits/random.tcc **** 
2927:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
2928:/usr/include/c++/7/bits/random.tcc **** 	  {
2929:/usr/include/c++/7/bits/random.tcc **** 	    const double __p = __aurng();
2930:/usr/include/c++/7/bits/random.tcc **** 
2931:/usr/include/c++/7/bits/random.tcc **** 	    auto __pos = std::lower_bound(__param._M_cp.begin(),
2932:/usr/include/c++/7/bits/random.tcc **** 					  __param._M_cp.end(), __p);
2933:/usr/include/c++/7/bits/random.tcc **** 	    const size_t __i = __pos - __param._M_cp.begin();
2934:/usr/include/c++/7/bits/random.tcc **** 
2935:/usr/include/c++/7/bits/random.tcc **** 	    const double __pref = __i > 0 ? __param._M_cp[__i - 1] : 0.0;
2936:/usr/include/c++/7/bits/random.tcc **** 
2937:/usr/include/c++/7/bits/random.tcc **** 	    *__f++ = (__param._M_int[__i]
2938:/usr/include/c++/7/bits/random.tcc **** 		      + (__p - __pref) / __param._M_den[__i]);
2939:/usr/include/c++/7/bits/random.tcc **** 	  }
2940:/usr/include/c++/7/bits/random.tcc ****       }
2941:/usr/include/c++/7/bits/random.tcc **** 
2942:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2943:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
2944:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
2945:/usr/include/c++/7/bits/random.tcc **** 	       const piecewise_constant_distribution<_RealType>& __x)
2946:/usr/include/c++/7/bits/random.tcc ****     {
2947:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
2948:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
2949:/usr/include/c++/7/bits/random.tcc **** 
2950:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
2951:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
2952:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
2953:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
2954:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
2955:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
2956:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
2957:/usr/include/c++/7/bits/random.tcc **** 
2958:/usr/include/c++/7/bits/random.tcc ****       std::vector<_RealType> __int = __x.intervals();
2959:/usr/include/c++/7/bits/random.tcc ****       __os << __int.size() - 1;
2960:/usr/include/c++/7/bits/random.tcc **** 
2961:/usr/include/c++/7/bits/random.tcc ****       for (auto __xit = __int.begin(); __xit != __int.end(); ++__xit)
2962:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << *__xit;
2963:/usr/include/c++/7/bits/random.tcc **** 
2964:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __den = __x.densities();
2965:/usr/include/c++/7/bits/random.tcc ****       for (auto __dit = __den.begin(); __dit != __den.end(); ++__dit)
2966:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << *__dit;
2967:/usr/include/c++/7/bits/random.tcc **** 
2968:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
2969:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
2970:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
2971:/usr/include/c++/7/bits/random.tcc ****       return __os;
2972:/usr/include/c++/7/bits/random.tcc ****     }
2973:/usr/include/c++/7/bits/random.tcc **** 
2974:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
2975:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
2976:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
2977:/usr/include/c++/7/bits/random.tcc **** 	       piecewise_constant_distribution<_RealType>& __x)
2978:/usr/include/c++/7/bits/random.tcc ****     {
2979:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
2980:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
2981:/usr/include/c++/7/bits/random.tcc **** 
2982:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
2983:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
2984:/usr/include/c++/7/bits/random.tcc **** 
2985:/usr/include/c++/7/bits/random.tcc ****       size_t __n;
2986:/usr/include/c++/7/bits/random.tcc ****       __is >> __n;
2987:/usr/include/c++/7/bits/random.tcc **** 
2988:/usr/include/c++/7/bits/random.tcc ****       std::vector<_RealType> __int_vec;
2989:/usr/include/c++/7/bits/random.tcc ****       __int_vec.reserve(__n + 1);
2990:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i <= __n; ++__i)
2991:/usr/include/c++/7/bits/random.tcc **** 	{
2992:/usr/include/c++/7/bits/random.tcc **** 	  _RealType __int;
2993:/usr/include/c++/7/bits/random.tcc **** 	  __is >> __int;
2994:/usr/include/c++/7/bits/random.tcc **** 	  __int_vec.push_back(__int);
2995:/usr/include/c++/7/bits/random.tcc **** 	}
2996:/usr/include/c++/7/bits/random.tcc **** 
2997:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __den_vec;
2998:/usr/include/c++/7/bits/random.tcc ****       __den_vec.reserve(__n);
2999:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i < __n; ++__i)
3000:/usr/include/c++/7/bits/random.tcc **** 	{
3001:/usr/include/c++/7/bits/random.tcc **** 	  double __den;
3002:/usr/include/c++/7/bits/random.tcc **** 	  __is >> __den;
3003:/usr/include/c++/7/bits/random.tcc **** 	  __den_vec.push_back(__den);
3004:/usr/include/c++/7/bits/random.tcc **** 	}
3005:/usr/include/c++/7/bits/random.tcc **** 
3006:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename piecewise_constant_distribution<_RealType>::
3007:/usr/include/c++/7/bits/random.tcc **** 	  param_type(__int_vec.begin(), __int_vec.end(), __den_vec.begin()));
3008:/usr/include/c++/7/bits/random.tcc **** 
3009:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
3010:/usr/include/c++/7/bits/random.tcc ****       return __is;
3011:/usr/include/c++/7/bits/random.tcc ****     }
3012:/usr/include/c++/7/bits/random.tcc **** 
3013:/usr/include/c++/7/bits/random.tcc **** 
3014:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3015:/usr/include/c++/7/bits/random.tcc ****     void
3016:/usr/include/c++/7/bits/random.tcc ****     piecewise_linear_distribution<_RealType>::param_type::
3017:/usr/include/c++/7/bits/random.tcc ****     _M_initialize()
3018:/usr/include/c++/7/bits/random.tcc ****     {
3019:/usr/include/c++/7/bits/random.tcc ****       if (_M_int.size() < 2
3020:/usr/include/c++/7/bits/random.tcc **** 	  || (_M_int.size() == 2
3021:/usr/include/c++/7/bits/random.tcc **** 	      && _M_int[0] == _RealType(0)
3022:/usr/include/c++/7/bits/random.tcc **** 	      && _M_int[1] == _RealType(1)
3023:/usr/include/c++/7/bits/random.tcc **** 	      && _M_den[0] == _M_den[1]))
3024:/usr/include/c++/7/bits/random.tcc **** 	{
3025:/usr/include/c++/7/bits/random.tcc **** 	  _M_int.clear();
3026:/usr/include/c++/7/bits/random.tcc **** 	  _M_den.clear();
3027:/usr/include/c++/7/bits/random.tcc **** 	  return;
3028:/usr/include/c++/7/bits/random.tcc **** 	}
3029:/usr/include/c++/7/bits/random.tcc **** 
3030:/usr/include/c++/7/bits/random.tcc ****       double __sum = 0.0;
3031:/usr/include/c++/7/bits/random.tcc ****       _M_cp.reserve(_M_int.size() - 1);
3032:/usr/include/c++/7/bits/random.tcc ****       _M_m.reserve(_M_int.size() - 1);
3033:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = 0; __k < _M_int.size() - 1; ++__k)
3034:/usr/include/c++/7/bits/random.tcc **** 	{
3035:/usr/include/c++/7/bits/random.tcc **** 	  const _RealType __delta = _M_int[__k + 1] - _M_int[__k];
3036:/usr/include/c++/7/bits/random.tcc **** 	  __sum += 0.5 * (_M_den[__k + 1] + _M_den[__k]) * __delta;
3037:/usr/include/c++/7/bits/random.tcc **** 	  _M_cp.push_back(__sum);
3038:/usr/include/c++/7/bits/random.tcc **** 	  _M_m.push_back((_M_den[__k + 1] - _M_den[__k]) / __delta);
3039:/usr/include/c++/7/bits/random.tcc **** 	}
3040:/usr/include/c++/7/bits/random.tcc **** 
3041:/usr/include/c++/7/bits/random.tcc ****       //  Now normalize the densities...
3042:/usr/include/c++/7/bits/random.tcc ****       __detail::__normalize(_M_den.begin(), _M_den.end(), _M_den.begin(),
3043:/usr/include/c++/7/bits/random.tcc **** 			    __sum);
3044:/usr/include/c++/7/bits/random.tcc ****       //  ... and partial sums... 
3045:/usr/include/c++/7/bits/random.tcc ****       __detail::__normalize(_M_cp.begin(), _M_cp.end(), _M_cp.begin(), __sum);
3046:/usr/include/c++/7/bits/random.tcc ****       //  ... and slopes.
3047:/usr/include/c++/7/bits/random.tcc ****       __detail::__normalize(_M_m.begin(), _M_m.end(), _M_m.begin(), __sum);
3048:/usr/include/c++/7/bits/random.tcc **** 
3049:/usr/include/c++/7/bits/random.tcc ****       //  Make sure the last cumulative probablility is one.
3050:/usr/include/c++/7/bits/random.tcc ****       _M_cp[_M_cp.size() - 1] = 1.0;
3051:/usr/include/c++/7/bits/random.tcc ****      }
3052:/usr/include/c++/7/bits/random.tcc **** 
3053:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3054:/usr/include/c++/7/bits/random.tcc ****     template<typename _InputIteratorB, typename _InputIteratorW>
3055:/usr/include/c++/7/bits/random.tcc ****       piecewise_linear_distribution<_RealType>::param_type::
3056:/usr/include/c++/7/bits/random.tcc ****       param_type(_InputIteratorB __bbegin,
3057:/usr/include/c++/7/bits/random.tcc **** 		 _InputIteratorB __bend,
3058:/usr/include/c++/7/bits/random.tcc **** 		 _InputIteratorW __wbegin)
3059:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp(), _M_m()
3060:/usr/include/c++/7/bits/random.tcc ****       {
3061:/usr/include/c++/7/bits/random.tcc **** 	for (; __bbegin != __bend; ++__bbegin, ++__wbegin)
3062:/usr/include/c++/7/bits/random.tcc **** 	  {
3063:/usr/include/c++/7/bits/random.tcc **** 	    _M_int.push_back(*__bbegin);
3064:/usr/include/c++/7/bits/random.tcc **** 	    _M_den.push_back(*__wbegin);
3065:/usr/include/c++/7/bits/random.tcc **** 	  }
3066:/usr/include/c++/7/bits/random.tcc **** 
3067:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
3068:/usr/include/c++/7/bits/random.tcc ****       }
3069:/usr/include/c++/7/bits/random.tcc **** 
3070:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3071:/usr/include/c++/7/bits/random.tcc ****     template<typename _Func>
3072:/usr/include/c++/7/bits/random.tcc ****       piecewise_linear_distribution<_RealType>::param_type::
3073:/usr/include/c++/7/bits/random.tcc ****       param_type(initializer_list<_RealType> __bl, _Func __fw)
3074:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp(), _M_m()
3075:/usr/include/c++/7/bits/random.tcc ****       {
3076:/usr/include/c++/7/bits/random.tcc **** 	_M_int.reserve(__bl.size());
3077:/usr/include/c++/7/bits/random.tcc **** 	_M_den.reserve(__bl.size());
3078:/usr/include/c++/7/bits/random.tcc **** 	for (auto __biter = __bl.begin(); __biter != __bl.end(); ++__biter)
3079:/usr/include/c++/7/bits/random.tcc **** 	  {
3080:/usr/include/c++/7/bits/random.tcc **** 	    _M_int.push_back(*__biter);
3081:/usr/include/c++/7/bits/random.tcc **** 	    _M_den.push_back(__fw(*__biter));
3082:/usr/include/c++/7/bits/random.tcc **** 	  }
3083:/usr/include/c++/7/bits/random.tcc **** 
3084:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
3085:/usr/include/c++/7/bits/random.tcc ****       }
3086:/usr/include/c++/7/bits/random.tcc **** 
3087:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3088:/usr/include/c++/7/bits/random.tcc ****     template<typename _Func>
3089:/usr/include/c++/7/bits/random.tcc ****       piecewise_linear_distribution<_RealType>::param_type::
3090:/usr/include/c++/7/bits/random.tcc ****       param_type(size_t __nw, _RealType __xmin, _RealType __xmax, _Func __fw)
3091:/usr/include/c++/7/bits/random.tcc ****       : _M_int(), _M_den(), _M_cp(), _M_m()
3092:/usr/include/c++/7/bits/random.tcc ****       {
3093:/usr/include/c++/7/bits/random.tcc **** 	const size_t __n = __nw == 0 ? 1 : __nw;
3094:/usr/include/c++/7/bits/random.tcc **** 	const _RealType __delta = (__xmax - __xmin) / __n;
3095:/usr/include/c++/7/bits/random.tcc **** 
3096:/usr/include/c++/7/bits/random.tcc **** 	_M_int.reserve(__n + 1);
3097:/usr/include/c++/7/bits/random.tcc **** 	_M_den.reserve(__n + 1);
3098:/usr/include/c++/7/bits/random.tcc **** 	for (size_t __k = 0; __k <= __nw; ++__k)
3099:/usr/include/c++/7/bits/random.tcc **** 	  {
3100:/usr/include/c++/7/bits/random.tcc **** 	    _M_int.push_back(__xmin + __k * __delta);
3101:/usr/include/c++/7/bits/random.tcc **** 	    _M_den.push_back(__fw(_M_int[__k] + __delta));
3102:/usr/include/c++/7/bits/random.tcc **** 	  }
3103:/usr/include/c++/7/bits/random.tcc **** 
3104:/usr/include/c++/7/bits/random.tcc **** 	_M_initialize();
3105:/usr/include/c++/7/bits/random.tcc ****       }
3106:/usr/include/c++/7/bits/random.tcc **** 
3107:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3108:/usr/include/c++/7/bits/random.tcc ****     template<typename _UniformRandomNumberGenerator>
3109:/usr/include/c++/7/bits/random.tcc ****       typename piecewise_linear_distribution<_RealType>::result_type
3110:/usr/include/c++/7/bits/random.tcc ****       piecewise_linear_distribution<_RealType>::
3111:/usr/include/c++/7/bits/random.tcc ****       operator()(_UniformRandomNumberGenerator& __urng,
3112:/usr/include/c++/7/bits/random.tcc **** 		 const param_type& __param)
3113:/usr/include/c++/7/bits/random.tcc ****       {
3114:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Adaptor<_UniformRandomNumberGenerator, double>
3115:/usr/include/c++/7/bits/random.tcc **** 	  __aurng(__urng);
3116:/usr/include/c++/7/bits/random.tcc **** 
3117:/usr/include/c++/7/bits/random.tcc **** 	const double __p = __aurng();
3118:/usr/include/c++/7/bits/random.tcc **** 	if (__param._M_cp.empty())
3119:/usr/include/c++/7/bits/random.tcc **** 	  return __p;
3120:/usr/include/c++/7/bits/random.tcc **** 
3121:/usr/include/c++/7/bits/random.tcc **** 	auto __pos = std::lower_bound(__param._M_cp.begin(),
3122:/usr/include/c++/7/bits/random.tcc **** 				      __param._M_cp.end(), __p);
3123:/usr/include/c++/7/bits/random.tcc **** 	const size_t __i = __pos - __param._M_cp.begin();
3124:/usr/include/c++/7/bits/random.tcc **** 
3125:/usr/include/c++/7/bits/random.tcc **** 	const double __pref = __i > 0 ? __param._M_cp[__i - 1] : 0.0;
3126:/usr/include/c++/7/bits/random.tcc **** 
3127:/usr/include/c++/7/bits/random.tcc **** 	const double __a = 0.5 * __param._M_m[__i];
3128:/usr/include/c++/7/bits/random.tcc **** 	const double __b = __param._M_den[__i];
3129:/usr/include/c++/7/bits/random.tcc **** 	const double __cm = __p - __pref;
3130:/usr/include/c++/7/bits/random.tcc **** 
3131:/usr/include/c++/7/bits/random.tcc **** 	_RealType __x = __param._M_int[__i];
3132:/usr/include/c++/7/bits/random.tcc **** 	if (__a == 0)
3133:/usr/include/c++/7/bits/random.tcc **** 	  __x += __cm / __b;
3134:/usr/include/c++/7/bits/random.tcc **** 	else
3135:/usr/include/c++/7/bits/random.tcc **** 	  {
3136:/usr/include/c++/7/bits/random.tcc **** 	    const double __d = __b * __b + 4.0 * __a * __cm;
3137:/usr/include/c++/7/bits/random.tcc **** 	    __x += 0.5 * (std::sqrt(__d) - __b) / __a;
3138:/usr/include/c++/7/bits/random.tcc ****           }
3139:/usr/include/c++/7/bits/random.tcc **** 
3140:/usr/include/c++/7/bits/random.tcc ****         return __x;
3141:/usr/include/c++/7/bits/random.tcc ****       }
3142:/usr/include/c++/7/bits/random.tcc **** 
3143:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType>
3144:/usr/include/c++/7/bits/random.tcc ****     template<typename _ForwardIterator,
3145:/usr/include/c++/7/bits/random.tcc **** 	     typename _UniformRandomNumberGenerator>
3146:/usr/include/c++/7/bits/random.tcc ****       void
3147:/usr/include/c++/7/bits/random.tcc ****       piecewise_linear_distribution<_RealType>::
3148:/usr/include/c++/7/bits/random.tcc ****       __generate_impl(_ForwardIterator __f, _ForwardIterator __t,
3149:/usr/include/c++/7/bits/random.tcc **** 		      _UniformRandomNumberGenerator& __urng,
3150:/usr/include/c++/7/bits/random.tcc **** 		      const param_type& __param)
3151:/usr/include/c++/7/bits/random.tcc ****       {
3152:/usr/include/c++/7/bits/random.tcc **** 	__glibcxx_function_requires(_ForwardIteratorConcept<_ForwardIterator>)
3153:/usr/include/c++/7/bits/random.tcc **** 	// We could duplicate everything from operator()...
3154:/usr/include/c++/7/bits/random.tcc **** 	while (__f != __t)
3155:/usr/include/c++/7/bits/random.tcc **** 	  *__f++ = this->operator()(__urng, __param);
3156:/usr/include/c++/7/bits/random.tcc ****       }
3157:/usr/include/c++/7/bits/random.tcc **** 
3158:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
3159:/usr/include/c++/7/bits/random.tcc ****     std::basic_ostream<_CharT, _Traits>&
3160:/usr/include/c++/7/bits/random.tcc ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
3161:/usr/include/c++/7/bits/random.tcc **** 	       const piecewise_linear_distribution<_RealType>& __x)
3162:/usr/include/c++/7/bits/random.tcc ****     {
3163:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_ostream<_CharT, _Traits>  __ostream_type;
3164:/usr/include/c++/7/bits/random.tcc ****       typedef typename __ostream_type::ios_base    __ios_base;
3165:/usr/include/c++/7/bits/random.tcc **** 
3166:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __os.flags();
3167:/usr/include/c++/7/bits/random.tcc ****       const _CharT __fill = __os.fill();
3168:/usr/include/c++/7/bits/random.tcc ****       const std::streamsize __precision = __os.precision();
3169:/usr/include/c++/7/bits/random.tcc ****       const _CharT __space = __os.widen(' ');
3170:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__ios_base::scientific | __ios_base::left);
3171:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__space);
3172:/usr/include/c++/7/bits/random.tcc ****       __os.precision(std::numeric_limits<_RealType>::max_digits10);
3173:/usr/include/c++/7/bits/random.tcc **** 
3174:/usr/include/c++/7/bits/random.tcc ****       std::vector<_RealType> __int = __x.intervals();
3175:/usr/include/c++/7/bits/random.tcc ****       __os << __int.size() - 1;
3176:/usr/include/c++/7/bits/random.tcc **** 
3177:/usr/include/c++/7/bits/random.tcc ****       for (auto __xit = __int.begin(); __xit != __int.end(); ++__xit)
3178:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << *__xit;
3179:/usr/include/c++/7/bits/random.tcc **** 
3180:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __den = __x.densities();
3181:/usr/include/c++/7/bits/random.tcc ****       for (auto __dit = __den.begin(); __dit != __den.end(); ++__dit)
3182:/usr/include/c++/7/bits/random.tcc **** 	__os << __space << *__dit;
3183:/usr/include/c++/7/bits/random.tcc **** 
3184:/usr/include/c++/7/bits/random.tcc ****       __os.flags(__flags);
3185:/usr/include/c++/7/bits/random.tcc ****       __os.fill(__fill);
3186:/usr/include/c++/7/bits/random.tcc ****       __os.precision(__precision);
3187:/usr/include/c++/7/bits/random.tcc ****       return __os;
3188:/usr/include/c++/7/bits/random.tcc ****     }
3189:/usr/include/c++/7/bits/random.tcc **** 
3190:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, typename _CharT, typename _Traits>
3191:/usr/include/c++/7/bits/random.tcc ****     std::basic_istream<_CharT, _Traits>&
3192:/usr/include/c++/7/bits/random.tcc ****     operator>>(std::basic_istream<_CharT, _Traits>& __is,
3193:/usr/include/c++/7/bits/random.tcc **** 	       piecewise_linear_distribution<_RealType>& __x)
3194:/usr/include/c++/7/bits/random.tcc ****     {
3195:/usr/include/c++/7/bits/random.tcc ****       typedef std::basic_istream<_CharT, _Traits>  __istream_type;
3196:/usr/include/c++/7/bits/random.tcc ****       typedef typename __istream_type::ios_base    __ios_base;
3197:/usr/include/c++/7/bits/random.tcc **** 
3198:/usr/include/c++/7/bits/random.tcc ****       const typename __ios_base::fmtflags __flags = __is.flags();
3199:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__ios_base::dec | __ios_base::skipws);
3200:/usr/include/c++/7/bits/random.tcc **** 
3201:/usr/include/c++/7/bits/random.tcc ****       size_t __n;
3202:/usr/include/c++/7/bits/random.tcc ****       __is >> __n;
3203:/usr/include/c++/7/bits/random.tcc **** 
3204:/usr/include/c++/7/bits/random.tcc ****       std::vector<_RealType> __int_vec;
3205:/usr/include/c++/7/bits/random.tcc ****       __int_vec.reserve(__n + 1);
3206:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i <= __n; ++__i)
3207:/usr/include/c++/7/bits/random.tcc **** 	{
3208:/usr/include/c++/7/bits/random.tcc **** 	  _RealType __int;
3209:/usr/include/c++/7/bits/random.tcc **** 	  __is >> __int;
3210:/usr/include/c++/7/bits/random.tcc **** 	  __int_vec.push_back(__int);
3211:/usr/include/c++/7/bits/random.tcc **** 	}
3212:/usr/include/c++/7/bits/random.tcc **** 
3213:/usr/include/c++/7/bits/random.tcc ****       std::vector<double> __den_vec;
3214:/usr/include/c++/7/bits/random.tcc ****       __den_vec.reserve(__n + 1);
3215:/usr/include/c++/7/bits/random.tcc ****       for (size_t __i = 0; __i <= __n; ++__i)
3216:/usr/include/c++/7/bits/random.tcc **** 	{
3217:/usr/include/c++/7/bits/random.tcc **** 	  double __den;
3218:/usr/include/c++/7/bits/random.tcc **** 	  __is >> __den;
3219:/usr/include/c++/7/bits/random.tcc **** 	  __den_vec.push_back(__den);
3220:/usr/include/c++/7/bits/random.tcc **** 	}
3221:/usr/include/c++/7/bits/random.tcc **** 
3222:/usr/include/c++/7/bits/random.tcc ****       __x.param(typename piecewise_linear_distribution<_RealType>::
3223:/usr/include/c++/7/bits/random.tcc **** 	  param_type(__int_vec.begin(), __int_vec.end(), __den_vec.begin()));
3224:/usr/include/c++/7/bits/random.tcc **** 
3225:/usr/include/c++/7/bits/random.tcc ****       __is.flags(__flags);
3226:/usr/include/c++/7/bits/random.tcc ****       return __is;
3227:/usr/include/c++/7/bits/random.tcc ****     }
3228:/usr/include/c++/7/bits/random.tcc **** 
3229:/usr/include/c++/7/bits/random.tcc **** 
3230:/usr/include/c++/7/bits/random.tcc ****   template<typename _IntType>
3231:/usr/include/c++/7/bits/random.tcc ****     seed_seq::seed_seq(std::initializer_list<_IntType> __il)
3232:/usr/include/c++/7/bits/random.tcc ****     {
3233:/usr/include/c++/7/bits/random.tcc ****       for (auto __iter = __il.begin(); __iter != __il.end(); ++__iter)
3234:/usr/include/c++/7/bits/random.tcc **** 	_M_v.push_back(__detail::__mod<result_type,
3235:/usr/include/c++/7/bits/random.tcc **** 		       __detail::_Shift<result_type, 32>::__value>(*__iter));
3236:/usr/include/c++/7/bits/random.tcc ****     }
3237:/usr/include/c++/7/bits/random.tcc **** 
3238:/usr/include/c++/7/bits/random.tcc ****   template<typename _InputIterator>
3239:/usr/include/c++/7/bits/random.tcc ****     seed_seq::seed_seq(_InputIterator __begin, _InputIterator __end)
3240:/usr/include/c++/7/bits/random.tcc ****     {
3241:/usr/include/c++/7/bits/random.tcc ****       for (_InputIterator __iter = __begin; __iter != __end; ++__iter)
3242:/usr/include/c++/7/bits/random.tcc **** 	_M_v.push_back(__detail::__mod<result_type,
3243:/usr/include/c++/7/bits/random.tcc **** 		       __detail::_Shift<result_type, 32>::__value>(*__iter));
3244:/usr/include/c++/7/bits/random.tcc ****     }
3245:/usr/include/c++/7/bits/random.tcc **** 
3246:/usr/include/c++/7/bits/random.tcc ****   template<typename _RandomAccessIterator>
3247:/usr/include/c++/7/bits/random.tcc ****     void
3248:/usr/include/c++/7/bits/random.tcc ****     seed_seq::generate(_RandomAccessIterator __begin,
3249:/usr/include/c++/7/bits/random.tcc **** 		       _RandomAccessIterator __end)
3250:/usr/include/c++/7/bits/random.tcc ****     {
3251:/usr/include/c++/7/bits/random.tcc ****       typedef typename iterator_traits<_RandomAccessIterator>::value_type
3252:/usr/include/c++/7/bits/random.tcc ****         _Type;
3253:/usr/include/c++/7/bits/random.tcc **** 
3254:/usr/include/c++/7/bits/random.tcc ****       if (__begin == __end)
3255:/usr/include/c++/7/bits/random.tcc **** 	return;
3256:/usr/include/c++/7/bits/random.tcc **** 
3257:/usr/include/c++/7/bits/random.tcc ****       std::fill(__begin, __end, _Type(0x8b8b8b8bu));
3258:/usr/include/c++/7/bits/random.tcc **** 
3259:/usr/include/c++/7/bits/random.tcc ****       const size_t __n = __end - __begin;
3260:/usr/include/c++/7/bits/random.tcc ****       const size_t __s = _M_v.size();
3261:/usr/include/c++/7/bits/random.tcc ****       const size_t __t = (__n >= 623) ? 11
3262:/usr/include/c++/7/bits/random.tcc **** 		       : (__n >=  68) ? 7
3263:/usr/include/c++/7/bits/random.tcc **** 		       : (__n >=  39) ? 5
3264:/usr/include/c++/7/bits/random.tcc **** 		       : (__n >=   7) ? 3
3265:/usr/include/c++/7/bits/random.tcc **** 		       : (__n - 1) / 2;
3266:/usr/include/c++/7/bits/random.tcc ****       const size_t __p = (__n - __t) / 2;
3267:/usr/include/c++/7/bits/random.tcc ****       const size_t __q = __p + __t;
3268:/usr/include/c++/7/bits/random.tcc ****       const size_t __m = std::max(size_t(__s + 1), __n);
3269:/usr/include/c++/7/bits/random.tcc **** 
3270:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = 0; __k < __m; ++__k)
3271:/usr/include/c++/7/bits/random.tcc **** 	{
3272:/usr/include/c++/7/bits/random.tcc **** 	  _Type __arg = (__begin[__k % __n]
3273:/usr/include/c++/7/bits/random.tcc **** 			 ^ __begin[(__k + __p) % __n]
3274:/usr/include/c++/7/bits/random.tcc **** 			 ^ __begin[(__k - 1) % __n]);
3275:/usr/include/c++/7/bits/random.tcc **** 	  _Type __r1 = __arg ^ (__arg >> 27);
3276:/usr/include/c++/7/bits/random.tcc **** 	  __r1 = __detail::__mod<_Type,
3277:/usr/include/c++/7/bits/random.tcc **** 		    __detail::_Shift<_Type, 32>::__value>(1664525u * __r1);
3278:/usr/include/c++/7/bits/random.tcc **** 	  _Type __r2 = __r1;
3279:/usr/include/c++/7/bits/random.tcc **** 	  if (__k == 0)
3280:/usr/include/c++/7/bits/random.tcc **** 	    __r2 += __s;
3281:/usr/include/c++/7/bits/random.tcc **** 	  else if (__k <= __s)
3282:/usr/include/c++/7/bits/random.tcc **** 	    __r2 += __k % __n + _M_v[__k - 1];
3283:/usr/include/c++/7/bits/random.tcc **** 	  else
3284:/usr/include/c++/7/bits/random.tcc **** 	    __r2 += __k % __n;
3285:/usr/include/c++/7/bits/random.tcc **** 	  __r2 = __detail::__mod<_Type,
3286:/usr/include/c++/7/bits/random.tcc **** 	           __detail::_Shift<_Type, 32>::__value>(__r2);
3287:/usr/include/c++/7/bits/random.tcc **** 	  __begin[(__k + __p) % __n] += __r1;
3288:/usr/include/c++/7/bits/random.tcc **** 	  __begin[(__k + __q) % __n] += __r2;
3289:/usr/include/c++/7/bits/random.tcc **** 	  __begin[__k % __n] = __r2;
3290:/usr/include/c++/7/bits/random.tcc **** 	}
3291:/usr/include/c++/7/bits/random.tcc **** 
3292:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = __m; __k < __m + __n; ++__k)
3293:/usr/include/c++/7/bits/random.tcc **** 	{
3294:/usr/include/c++/7/bits/random.tcc **** 	  _Type __arg = (__begin[__k % __n]
3295:/usr/include/c++/7/bits/random.tcc **** 			 + __begin[(__k + __p) % __n]
3296:/usr/include/c++/7/bits/random.tcc **** 			 + __begin[(__k - 1) % __n]);
3297:/usr/include/c++/7/bits/random.tcc **** 	  _Type __r3 = __arg ^ (__arg >> 27);
3298:/usr/include/c++/7/bits/random.tcc **** 	  __r3 = __detail::__mod<_Type,
3299:/usr/include/c++/7/bits/random.tcc **** 		   __detail::_Shift<_Type, 32>::__value>(1566083941u * __r3);
3300:/usr/include/c++/7/bits/random.tcc **** 	  _Type __r4 = __r3 - __k % __n;
3301:/usr/include/c++/7/bits/random.tcc **** 	  __r4 = __detail::__mod<_Type,
3302:/usr/include/c++/7/bits/random.tcc **** 	           __detail::_Shift<_Type, 32>::__value>(__r4);
3303:/usr/include/c++/7/bits/random.tcc **** 	  __begin[(__k + __p) % __n] ^= __r3;
3304:/usr/include/c++/7/bits/random.tcc **** 	  __begin[(__k + __q) % __n] ^= __r4;
3305:/usr/include/c++/7/bits/random.tcc **** 	  __begin[__k % __n] = __r4;
3306:/usr/include/c++/7/bits/random.tcc **** 	}
3307:/usr/include/c++/7/bits/random.tcc ****     }
3308:/usr/include/c++/7/bits/random.tcc **** 
3309:/usr/include/c++/7/bits/random.tcc ****   template<typename _RealType, size_t __bits,
3310:/usr/include/c++/7/bits/random.tcc **** 	   typename _UniformRandomNumberGenerator>
3311:/usr/include/c++/7/bits/random.tcc ****     _RealType
3312:/usr/include/c++/7/bits/random.tcc ****     generate_canonical(_UniformRandomNumberGenerator& __urng)
 616              		.loc 5 3312 0
 617              		.cfi_startproc
 618              	.LVL58:
 619 0000 488B9780 		movq	4992(%rdi), %rdx
 619      130000
 620 0007 53       		pushq	%rbx
 621              		.cfi_def_cfa_offset 16
 622              		.cfi_offset 3, -16
 623              	.LBB635:
 624 0008 41BA0200 		movl	$2, %r10d
 624      0000
 625              	.LBE635:
3313:/usr/include/c++/7/bits/random.tcc ****     {
3314:/usr/include/c++/7/bits/random.tcc ****       static_assert(std::is_floating_point<_RealType>::value,
3315:/usr/include/c++/7/bits/random.tcc **** 		    "template argument must be a floating point type");
3316:/usr/include/c++/7/bits/random.tcc **** 
3317:/usr/include/c++/7/bits/random.tcc ****       const size_t __b
3318:/usr/include/c++/7/bits/random.tcc **** 	= std::min(static_cast<size_t>(std::numeric_limits<_RealType>::digits),
3319:/usr/include/c++/7/bits/random.tcc ****                    __bits);
3320:/usr/include/c++/7/bits/random.tcc ****       const long double __r = static_cast<long double>(__urng.max())
3321:/usr/include/c++/7/bits/random.tcc **** 			    - static_cast<long double>(__urng.min()) + 1.0L;
3322:/usr/include/c++/7/bits/random.tcc ****       const size_t __log2r = std::log(__r) / std::log(2.0L);
3323:/usr/include/c++/7/bits/random.tcc ****       const size_t __m = std::max<size_t>(1UL,
3324:/usr/include/c++/7/bits/random.tcc **** 					  (__b + __log2r - 1UL) / __log2r);
3325:/usr/include/c++/7/bits/random.tcc ****       _RealType __ret;
3326:/usr/include/c++/7/bits/random.tcc ****       _RealType __sum = _RealType(0);
3327:/usr/include/c++/7/bits/random.tcc ****       _RealType __tmp = _RealType(1);
 626              		.loc 5 3327 0
 627 000e F20F1015 		movsd	.LC7(%rip), %xmm2
 627      00000000 
 628 0016 4C8D8F18 		leaq	1816(%rdi), %r9
 628      070000
3326:/usr/include/c++/7/bits/random.tcc ****       _RealType __tmp = _RealType(1);
 629              		.loc 5 3326 0
 630 001d 660FEFC0 		pxor	%xmm0, %xmm0
 631              	.LBB662:
 632              	.LBB636:
 633              	.LBB637:
 634              	.LBB638:
 635              	.LBB639:
 636              	.LBB640:
 637              	.LBB641:
 408:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 638              		.loc 5 408 0
 639 0021 BEDFB008 		movl	$2567483615, %esi
 639      99
 640              	.LBE641:
 641              	.LBE640:
 642              	.LBE639:
 643              	.LBE638:
 458:/usr/include/c++/7/bits/random.tcc **** 	_M_gen_rand();
 644              		.loc 5 458 0
 645 0026 4881FA6F 		cmpq	$623, %rdx
 645      020000
 646              	.LBE637:
 647              	.LBE636:
 648              	.LBE662:
 649              		.loc 5 3327 0
 650 002d F20F1154 		movsd	%xmm2, -16(%rsp)
 650      24F0
 651 0033 4C8D8760 		leaq	3168(%rdi), %r8
 651      0C0000
 652              	.LVL59:
 653              	.LBB663:
 654              	.LBB658:
 655              	.LBB654:
 458:/usr/include/c++/7/bits/random.tcc **** 	_M_gen_rand();
 656              		.loc 5 458 0
 657 003a 0F87A300 		ja	.L31
 657      0000
 658              	.LVL60:
 659              	.L55:
 660 0040 4889D0   		movq	%rdx, %rax
 661 0043 4883C201 		addq	$1, %rdx
 662              	.L32:
 462:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z >> __u) & __d;
 663              		.loc 5 462 0
 664 0047 488B04C7 		movq	(%rdi,%rax,8), %rax
 665              	.LVL61:
 666 004b 48899780 		movq	%rdx, 4992(%rdi)
 666      130000
 463:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z << __s) & __b;
 667              		.loc 5 463 0
 668 0052 4889C1   		movq	%rax, %rcx
 669 0055 48C1E90B 		shrq	$11, %rcx
 670 0059 89C9     		movl	%ecx, %ecx
 671 005b 4831C8   		xorq	%rcx, %rax
 672              	.LVL62:
 464:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z << __t) & __c;
 673              		.loc 5 464 0
 674 005e 4889C1   		movq	%rax, %rcx
 675 0061 48C1E107 		salq	$7, %rcx
 676 0065 81E18056 		andl	$2636928640, %ecx
 676      2C9D
 677 006b 4831C8   		xorq	%rcx, %rax
 678              	.LVL63:
 465:/usr/include/c++/7/bits/random.tcc ****       __z ^= (__z >> __l);
 679              		.loc 5 465 0
 680 006e 4889C1   		movq	%rax, %rcx
 681 0071 48C1E10F 		salq	$15, %rcx
 682 0075 81E10000 		andl	$4022730752, %ecx
 682      C6EF
 683 007b 4831C8   		xorq	%rcx, %rax
 684              	.LVL64:
 466:/usr/include/c++/7/bits/random.tcc **** 
 685              		.loc 5 466 0
 686 007e 4889C1   		movq	%rax, %rcx
 687 0081 48C1E912 		shrq	$18, %rcx
 688              	.LVL65:
 689              	.LBE654:
 690              	.LBE658:
3328:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = __m; __k != 0; --__k)
3329:/usr/include/c++/7/bits/random.tcc **** 	{
3330:/usr/include/c++/7/bits/random.tcc **** 	  __sum += _RealType(__urng() - __urng.min()) * __tmp;
 691              		.loc 5 3330 0
 692 0085 4831C8   		xorq	%rcx, %rax
 693 0088 0F886701 		js	.L42
 693      0000
 694 008e 660FEFC9 		pxor	%xmm1, %xmm1
 695 0092 F2480F2A 		cvtsi2sdq	%rax, %xmm1
 695      C8
 696              	.L43:
3331:/usr/include/c++/7/bits/random.tcc **** 	  __tmp *= __r;
 697              		.loc 5 3331 0
 698 0097 D9050000 		flds	.LC8(%rip)
 698      0000
3330:/usr/include/c++/7/bits/random.tcc **** 	  __tmp *= __r;
 699              		.loc 5 3330 0
 700 009d F20F594C 		mulsd	-16(%rsp), %xmm1
 700      24F0
3328:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = __m; __k != 0; --__k)
 701              		.loc 5 3328 0
 702 00a3 4183FA01 		cmpl	$1, %r10d
 703              		.loc 5 3331 0
 704 00a7 DC4C24F0 		fmull	-16(%rsp)
3330:/usr/include/c++/7/bits/random.tcc **** 	  __tmp *= __r;
 705              		.loc 5 3330 0
 706 00ab F20F58C1 		addsd	%xmm1, %xmm0
 707              	.LVL66:
 708              		.loc 5 3331 0
 709 00af DD5C24F0 		fstpl	-16(%rsp)
 710              	.LVL67:
3328:/usr/include/c++/7/bits/random.tcc ****       for (size_t __k = __m; __k != 0; --__k)
 711              		.loc 5 3328 0
 712 00b3 751B     		jne	.L47
 713              	.LBE663:
3332:/usr/include/c++/7/bits/random.tcc **** 	}
3333:/usr/include/c++/7/bits/random.tcc ****       __ret = __sum / __tmp;
 714              		.loc 5 3333 0
 715 00b5 F20F5E44 		divsd	-16(%rsp), %xmm0
 715      24F0
 716              	.LVL68:
3334:/usr/include/c++/7/bits/random.tcc ****       if (__builtin_expect(__ret >= _RealType(1), 0))
 717              		.loc 5 3334 0
 718 00bb 660F2EC2 		ucomisd	%xmm2, %xmm0
 719 00bf 0F836401 		jnb	.L54
 719      0000
3335:/usr/include/c++/7/bits/random.tcc **** 	{
3336:/usr/include/c++/7/bits/random.tcc **** #if _GLIBCXX_USE_C99_MATH_TR1
3337:/usr/include/c++/7/bits/random.tcc **** 	  __ret = std::nextafter(_RealType(1), _RealType(0));
3338:/usr/include/c++/7/bits/random.tcc **** #else
3339:/usr/include/c++/7/bits/random.tcc **** 	  __ret = _RealType(1)
3340:/usr/include/c++/7/bits/random.tcc **** 	    - std::numeric_limits<_RealType>::epsilon() / _RealType(2);
3341:/usr/include/c++/7/bits/random.tcc **** #endif
3342:/usr/include/c++/7/bits/random.tcc **** 	}
3343:/usr/include/c++/7/bits/random.tcc ****       return __ret;
3344:/usr/include/c++/7/bits/random.tcc ****     }
 720              		.loc 5 3344 0
 721 00c5 5B       		popq	%rbx
 722              		.cfi_remember_state
 723              		.cfi_def_cfa_offset 8
 724 00c6 C3       		ret
 725              	.LVL69:
 726 00c7 660F1F84 		.p2align 4,,10
 726      00000000 
 726      00
 727              		.p2align 3
 728              	.L47:
 729              		.cfi_restore_state
 730              	.LBB664:
 731              	.LBB659:
 732              	.LBB655:
 458:/usr/include/c++/7/bits/random.tcc **** 	_M_gen_rand();
 733              		.loc 5 458 0
 734 00d0 4881FA6F 		cmpq	$623, %rdx
 734      020000
 735              	.LBE655:
 736              	.LBE659:
 737 00d7 41BA0100 		movl	$1, %r10d
 737      0000
 738              	.LVL70:
 739              	.LBB660:
 740              	.LBB656:
 741 00dd 0F865DFF 		jbe	.L55
 741      FFFF
 742              	.L31:
 743 00e3 488B1F   		movq	(%rdi), %rbx
 744 00e6 4889F8   		movq	%rdi, %rax
 745 00e9 4889FA   		movq	%rdi, %rdx
 746              	.LVL71:
 747 00ec 0F1F4000 		.p2align 4,,10
 748              		.p2align 3
 749              	.L33:
 750              	.LBB652:
 751              	.LBB650:
 752              	.LBB644:
 753              	.LBB642:
 406:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 754              		.loc 5 406 0
 755 00f0 4881E300 		andq	$-2147483648, %rbx
 755      000080
 756 00f7 4889D9   		movq	%rbx, %rcx
 407:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__k] = (_M_x[__k + __m] ^ (__y >> 1)
 757              		.loc 5 407 0
 758 00fa 488B5A08 		movq	8(%rdx), %rbx
 759 00fe 4989DB   		movq	%rbx, %r11
 760 0101 4181E3FF 		andl	$2147483647, %r11d
 760      FFFF7F
 406:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 761              		.loc 5 406 0
 762 0108 4909CB   		orq	%rcx, %r11
 763              	.LVL72:
 408:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 764              		.loc 5 408 0
 765 010b 4C89D9   		movq	%r11, %rcx
 766 010e 48D1E9   		shrq	%rcx
 767 0111 48338A68 		xorq	3176(%rdx), %rcx
 767      0C0000
 409:/usr/include/c++/7/bits/random.tcc ****         }
 768              		.loc 5 409 0
 769 0118 4183E301 		andl	$1, %r11d
 770              	.LVL73:
 771 011c 0F84BE00 		je	.L34
 771      0000
 408:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 772              		.loc 5 408 0
 773 0122 4831F1   		xorq	%rsi, %rcx
 774 0125 4883C208 		addq	$8, %rdx
 775 0129 48894AF8 		movq	%rcx, -8(%rdx)
 776              	.LVL74:
 777              	.LBE642:
 404:/usr/include/c++/7/bits/random.tcc ****         {
 778              		.loc 5 404 0
 779 012d 4939D1   		cmpq	%rdx, %r9
 780 0130 75BE     		jne	.L33
 781              	.L35:
 782 0132 4C8B9F18 		movq	1816(%rdi), %r11
 782      070000
 783              	.LVL75:
 784 0139 0F1F8000 		.p2align 4,,10
 784      000000
 785              		.p2align 3
 786              	.L37:
 787              	.LBE644:
 788              	.LBB645:
 789              	.LBB646:
 414:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 790              		.loc 5 414 0
 791 0140 4C89DA   		movq	%r11, %rdx
 415:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
 792              		.loc 5 415 0
 793 0143 4C8B9820 		movq	1824(%rax), %r11
 793      070000
 414:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 794              		.loc 5 414 0
 795 014a 4881E200 		andq	$-2147483648, %rdx
 795      000080
 415:/usr/include/c++/7/bits/random.tcc **** 	  _M_x[__k] = (_M_x[__k + (__m - __n)] ^ (__y >> 1)
 796              		.loc 5 415 0
 797 0151 4C89D9   		movq	%r11, %rcx
 798 0154 81E1FFFF 		andl	$2147483647, %ecx
 798      FF7F
 414:/usr/include/c++/7/bits/random.tcc **** 			   | (_M_x[__k + 1] & __lower_mask));
 799              		.loc 5 414 0
 800 015a 4809D1   		orq	%rdx, %rcx
 801              	.LVL76:
 416:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 802              		.loc 5 416 0
 803 015d 4889CA   		movq	%rcx, %rdx
 804 0160 48D1EA   		shrq	%rdx
 805 0163 483310   		xorq	(%rax), %rdx
 417:/usr/include/c++/7/bits/random.tcc **** 	}
 806              		.loc 5 417 0
 807 0166 83E101   		andl	$1, %ecx
 808              	.LVL77:
 809 0169 7455     		je	.L38
 416:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 810              		.loc 5 416 0
 811 016b 4831F2   		xorq	%rsi, %rdx
 812 016e 4883C008 		addq	$8, %rax
 813 0172 48899010 		movq	%rdx, 1808(%rax)
 813      070000
 814              	.LVL78:
 815              	.LBE646:
 412:/usr/include/c++/7/bits/random.tcc **** 	{
 816              		.loc 5 412 0
 817 0179 4C39C0   		cmpq	%r8, %rax
 818 017c 75C2     		jne	.L37
 819              	.L39:
 820              	.LBE645:
 420:/usr/include/c++/7/bits/random.tcc **** 		       | (_M_x[0] & __lower_mask));
 821              		.loc 5 420 0
 822 017e 488B8778 		movq	4984(%rdi), %rax
 822      130000
 421:/usr/include/c++/7/bits/random.tcc ****       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
 823              		.loc 5 421 0
 824 0185 488B17   		movq	(%rdi), %rdx
 420:/usr/include/c++/7/bits/random.tcc **** 		       | (_M_x[0] & __lower_mask));
 825              		.loc 5 420 0
 826 0188 48250000 		andq	$-2147483648, %rax
 826      0080
 421:/usr/include/c++/7/bits/random.tcc ****       _M_x[__n - 1] = (_M_x[__m - 1] ^ (__y >> 1)
 827              		.loc 5 421 0
 828 018e 81E2FFFF 		andl	$2147483647, %edx
 828      FF7F
 420:/usr/include/c++/7/bits/random.tcc **** 		       | (_M_x[0] & __lower_mask));
 829              		.loc 5 420 0
 830 0194 4809D0   		orq	%rdx, %rax
 831              	.LVL79:
 422:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 832              		.loc 5 422 0
 833 0197 4889C2   		movq	%rax, %rdx
 834 019a 48D1EA   		shrq	%rdx
 835 019d 48339760 		xorq	3168(%rdi), %rdx
 835      0C0000
 423:/usr/include/c++/7/bits/random.tcc ****       _M_p = 0;
 836              		.loc 5 423 0
 837 01a4 A801     		testb	$1, %al
 838 01a6 756B     		jne	.L56
 422:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 839              		.loc 5 422 0
 840 01a8 48899778 		movq	%rdx, 4984(%rdi)
 840      130000
 841 01af 31C0     		xorl	%eax, %eax
 842              	.LVL80:
 843 01b1 BA010000 		movl	$1, %edx
 843      00
 844 01b6 E98CFEFF 		jmp	.L32
 844      FF
 845 01bb 0F1F4400 		.p2align 4,,10
 845      00
 846              		.p2align 3
 847              	.L38:
 848              	.LBB648:
 849              	.LBB647:
 416:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 850              		.loc 5 416 0
 851 01c0 48899018 		movq	%rdx, 1816(%rax)
 851      070000
 852 01c7 4883C008 		addq	$8, %rax
 853              	.LBE647:
 412:/usr/include/c++/7/bits/random.tcc **** 	{
 854              		.loc 5 412 0
 855 01cb 4939C0   		cmpq	%rax, %r8
 856 01ce 0F856CFF 		jne	.L37
 856      FFFF
 857 01d4 EBA8     		jmp	.L39
 858              	.LVL81:
 859 01d6 662E0F1F 		.p2align 4,,10
 859      84000000 
 859      0000
 860              		.p2align 3
 861              	.L34:
 862              	.LBE648:
 863              	.LBB649:
 864              	.LBB643:
 408:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 865              		.loc 5 408 0
 866 01e0 48890A   		movq	%rcx, (%rdx)
 867 01e3 4883C208 		addq	$8, %rdx
 868              	.LBE643:
 404:/usr/include/c++/7/bits/random.tcc ****         {
 869              		.loc 5 404 0
 870 01e7 4C39CA   		cmpq	%r9, %rdx
 871 01ea 0F8500FF 		jne	.L33
 871      FFFF
 872 01f0 E93DFFFF 		jmp	.L35
 872      FF
 873              	.LVL82:
 874              	.L42:
 875              	.LBE649:
 876              	.LBE650:
 877              	.LBE652:
 878              	.LBE656:
 879              	.LBE660:
3330:/usr/include/c++/7/bits/random.tcc **** 	  __tmp *= __r;
 880              		.loc 5 3330 0
 881 01f5 4889C1   		movq	%rax, %rcx
 882 01f8 660FEFC9 		pxor	%xmm1, %xmm1
 883 01fc 48D1E9   		shrq	%rcx
 884 01ff 83E001   		andl	$1, %eax
 885 0202 4809C1   		orq	%rax, %rcx
 886 0205 F2480F2A 		cvtsi2sdq	%rcx, %xmm1
 886      C9
 887 020a F20F58C9 		addsd	%xmm1, %xmm1
 888 020e E984FEFF 		jmp	.L43
 888      FF
 889              	.LVL83:
 890              	.L56:
 891 0213 4831F2   		xorq	%rsi, %rdx
 892              	.LBB661:
 893              	.LBB657:
 894              	.LBB653:
 895              	.LBB651:
 422:/usr/include/c++/7/bits/random.tcc **** 		       ^ ((__y & 0x01) ? __a : 0));
 896              		.loc 5 422 0
 897 0216 31C0     		xorl	%eax, %eax
 898              	.LVL84:
 899 0218 48899778 		movq	%rdx, 4984(%rdi)
 899      130000
 900              	.LVL85:
 901 021f BA010000 		movl	$1, %edx
 901      00
 902 0224 E91EFEFF 		jmp	.L32
 902      FF
 903              	.LVL86:
 904              	.L54:
 905              	.LBE651:
 906              	.LBE653:
 907              	.LBE657:
 908              	.LBE661:
 909              	.LBE664:
 910              		.loc 5 3344 0
 911 0229 5B       		popq	%rbx
 912              		.cfi_def_cfa_offset 8
3337:/usr/include/c++/7/bits/random.tcc **** #else
 913              		.loc 5 3337 0
 914 022a 660FEFC9 		pxor	%xmm1, %xmm1
 915 022e 660F28C2 		movapd	%xmm2, %xmm0
 916              	.LVL87:
 917 0232 E9000000 		jmp	nextafter@PLT
 917      00
 918              	.LVL88:
 919              		.cfi_endproc
 920              	.LFE3581:
 922              		.text
 923 0304 6690662E 		.p2align 4,,15
 923      0F1F8400 
 923      00000000 
 924              		.globl	_Z11fill_vectorPdS_m
 926              	_Z11fill_vectorPdS_m:
 927              	.LFB3093:
  68:main.cpp      ****     random_device rd;
 928              		.loc 2 68 0
 929              		.cfi_startproc
 930              		.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
 931              		.cfi_lsda 0x1b,.LLSDA3093
 932              	.LVL89:
 933 0310 4156     		pushq	%r14
 934              		.cfi_def_cfa_offset 16
 935              		.cfi_offset 14, -16
 936 0312 4155     		pushq	%r13
 937              		.cfi_def_cfa_offset 24
 938              		.cfi_offset 13, -24
 939 0314 4989D6   		movq	%rdx, %r14
 940 0317 4154     		pushq	%r12
 941              		.cfi_def_cfa_offset 32
 942              		.cfi_offset 12, -32
 943 0319 55       		pushq	%rbp
 944              		.cfi_def_cfa_offset 40
 945              		.cfi_offset 6, -40
 946 031a 4989F4   		movq	%rsi, %r12
 947 031d 53       		pushq	%rbx
 948              		.cfi_def_cfa_offset 48
 949              		.cfi_offset 3, -48
 950 031e 4889FD   		movq	%rdi, %rbp
 951 0321 4881EC20 		subq	$10016, %rsp
 951      270000
 952              		.cfi_def_cfa_offset 10064
 953              	.LBB776:
 954              	.LBB777:
 955              	.LBB778:
 956              	.LBB779:
 957              	.LBB780:
 958              		.file 6 "/usr/include/c++/7/bits/basic_string.h"
   1:/usr/include/c++/7/bits/basic_string.h **** // Components for manipulating sequences of characters -*- C++ -*-
   2:/usr/include/c++/7/bits/basic_string.h **** 
   3:/usr/include/c++/7/bits/basic_string.h **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/basic_string.h **** //
   5:/usr/include/c++/7/bits/basic_string.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/basic_string.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/basic_string.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/basic_string.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/basic_string.h **** // any later version.
  10:/usr/include/c++/7/bits/basic_string.h **** 
  11:/usr/include/c++/7/bits/basic_string.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/basic_string.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/basic_string.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/basic_string.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/basic_string.h **** 
  16:/usr/include/c++/7/bits/basic_string.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/basic_string.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/basic_string.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/basic_string.h **** 
  20:/usr/include/c++/7/bits/basic_string.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/basic_string.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/basic_string.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/basic_string.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/basic_string.h **** 
  25:/usr/include/c++/7/bits/basic_string.h **** /** @file bits/basic_string.h
  26:/usr/include/c++/7/bits/basic_string.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/basic_string.h ****  *  Do not attempt to use it directly. @headername{string}
  28:/usr/include/c++/7/bits/basic_string.h ****  */
  29:/usr/include/c++/7/bits/basic_string.h **** 
  30:/usr/include/c++/7/bits/basic_string.h **** //
  31:/usr/include/c++/7/bits/basic_string.h **** // ISO C++ 14882: 21 Strings library
  32:/usr/include/c++/7/bits/basic_string.h **** //
  33:/usr/include/c++/7/bits/basic_string.h **** 
  34:/usr/include/c++/7/bits/basic_string.h **** #ifndef _BASIC_STRING_H
  35:/usr/include/c++/7/bits/basic_string.h **** #define _BASIC_STRING_H 1
  36:/usr/include/c++/7/bits/basic_string.h **** 
  37:/usr/include/c++/7/bits/basic_string.h **** #pragma GCC system_header
  38:/usr/include/c++/7/bits/basic_string.h **** 
  39:/usr/include/c++/7/bits/basic_string.h **** #include <ext/atomicity.h>
  40:/usr/include/c++/7/bits/basic_string.h **** #include <ext/alloc_traits.h>
  41:/usr/include/c++/7/bits/basic_string.h **** #include <debug/debug.h>
  42:/usr/include/c++/7/bits/basic_string.h **** 
  43:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus >= 201103L
  44:/usr/include/c++/7/bits/basic_string.h **** #include <initializer_list>
  45:/usr/include/c++/7/bits/basic_string.h **** #endif
  46:/usr/include/c++/7/bits/basic_string.h **** 
  47:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus > 201402L
  48:/usr/include/c++/7/bits/basic_string.h **** # include <string_view>
  49:/usr/include/c++/7/bits/basic_string.h **** #endif
  50:/usr/include/c++/7/bits/basic_string.h **** 
  51:/usr/include/c++/7/bits/basic_string.h **** 
  52:/usr/include/c++/7/bits/basic_string.h **** namespace std _GLIBCXX_VISIBILITY(default)
  53:/usr/include/c++/7/bits/basic_string.h **** {
  54:/usr/include/c++/7/bits/basic_string.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  55:/usr/include/c++/7/bits/basic_string.h **** 
  56:/usr/include/c++/7/bits/basic_string.h **** #if _GLIBCXX_USE_CXX11_ABI
  57:/usr/include/c++/7/bits/basic_string.h **** _GLIBCXX_BEGIN_NAMESPACE_CXX11
  58:/usr/include/c++/7/bits/basic_string.h ****   /**
  59:/usr/include/c++/7/bits/basic_string.h ****    *  @class basic_string basic_string.h <string>
  60:/usr/include/c++/7/bits/basic_string.h ****    *  @brief  Managing sequences of characters and character-like objects.
  61:/usr/include/c++/7/bits/basic_string.h ****    *
  62:/usr/include/c++/7/bits/basic_string.h ****    *  @ingroup strings
  63:/usr/include/c++/7/bits/basic_string.h ****    *  @ingroup sequences
  64:/usr/include/c++/7/bits/basic_string.h ****    *
  65:/usr/include/c++/7/bits/basic_string.h ****    *  @tparam _CharT  Type of character
  66:/usr/include/c++/7/bits/basic_string.h ****    *  @tparam _Traits  Traits for character type, defaults to
  67:/usr/include/c++/7/bits/basic_string.h ****    *                   char_traits<_CharT>.
  68:/usr/include/c++/7/bits/basic_string.h ****    *  @tparam _Alloc  Allocator type, defaults to allocator<_CharT>.
  69:/usr/include/c++/7/bits/basic_string.h ****    *
  70:/usr/include/c++/7/bits/basic_string.h ****    *  Meets the requirements of a <a href="tables.html#65">container</a>, a
  71:/usr/include/c++/7/bits/basic_string.h ****    *  <a href="tables.html#66">reversible container</a>, and a
  72:/usr/include/c++/7/bits/basic_string.h ****    *  <a href="tables.html#67">sequence</a>.  Of the
  73:/usr/include/c++/7/bits/basic_string.h ****    *  <a href="tables.html#68">optional sequence requirements</a>, only
  74:/usr/include/c++/7/bits/basic_string.h ****    *  @c push_back, @c at, and @c %array access are supported.
  75:/usr/include/c++/7/bits/basic_string.h ****    */
  76:/usr/include/c++/7/bits/basic_string.h ****   template<typename _CharT, typename _Traits, typename _Alloc>
  77:/usr/include/c++/7/bits/basic_string.h ****     class basic_string
  78:/usr/include/c++/7/bits/basic_string.h ****     {
  79:/usr/include/c++/7/bits/basic_string.h ****       typedef typename __gnu_cxx::__alloc_traits<_Alloc>::template
  80:/usr/include/c++/7/bits/basic_string.h **** 	rebind<_CharT>::other _Char_alloc_type;
  81:/usr/include/c++/7/bits/basic_string.h ****       typedef __gnu_cxx::__alloc_traits<_Char_alloc_type> _Alloc_traits;
  82:/usr/include/c++/7/bits/basic_string.h **** 
  83:/usr/include/c++/7/bits/basic_string.h ****       // Types:
  84:/usr/include/c++/7/bits/basic_string.h ****     public:
  85:/usr/include/c++/7/bits/basic_string.h ****       typedef _Traits					traits_type;
  86:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Traits::char_type		value_type;
  87:/usr/include/c++/7/bits/basic_string.h ****       typedef _Char_alloc_type				allocator_type;
  88:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::size_type		size_type;
  89:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::difference_type	difference_type;
  90:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::reference		reference;
  91:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::const_reference	const_reference;
  92:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::pointer		pointer;
  93:/usr/include/c++/7/bits/basic_string.h ****       typedef typename _Alloc_traits::const_pointer	const_pointer;
  94:/usr/include/c++/7/bits/basic_string.h ****       typedef __gnu_cxx::__normal_iterator<pointer, basic_string>  iterator;
  95:/usr/include/c++/7/bits/basic_string.h ****       typedef __gnu_cxx::__normal_iterator<const_pointer, basic_string>
  96:/usr/include/c++/7/bits/basic_string.h **** 							const_iterator;
  97:/usr/include/c++/7/bits/basic_string.h ****       typedef std::reverse_iterator<const_iterator>	const_reverse_iterator;
  98:/usr/include/c++/7/bits/basic_string.h ****       typedef std::reverse_iterator<iterator>		reverse_iterator;
  99:/usr/include/c++/7/bits/basic_string.h **** 
 100:/usr/include/c++/7/bits/basic_string.h ****       ///  Value returned by various member functions when they fail.
 101:/usr/include/c++/7/bits/basic_string.h ****       static const size_type	npos = static_cast<size_type>(-1);
 102:/usr/include/c++/7/bits/basic_string.h **** 
 103:/usr/include/c++/7/bits/basic_string.h ****     private:
 104:/usr/include/c++/7/bits/basic_string.h ****       // type used for positions in insert, erase etc.
 105:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus < 201103L
 106:/usr/include/c++/7/bits/basic_string.h ****       typedef iterator __const_iterator;
 107:/usr/include/c++/7/bits/basic_string.h **** #else
 108:/usr/include/c++/7/bits/basic_string.h ****       typedef const_iterator __const_iterator;
 109:/usr/include/c++/7/bits/basic_string.h **** #endif
 110:/usr/include/c++/7/bits/basic_string.h **** 
 111:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus > 201402L
 112:/usr/include/c++/7/bits/basic_string.h ****       // A helper type for avoiding boiler-plate.
 113:/usr/include/c++/7/bits/basic_string.h ****       typedef basic_string_view<_CharT, _Traits> __sv_type;
 114:/usr/include/c++/7/bits/basic_string.h **** 
 115:/usr/include/c++/7/bits/basic_string.h ****       template<typename _Tp, typename _Res>
 116:/usr/include/c++/7/bits/basic_string.h **** 	using _If_sv = enable_if_t<
 117:/usr/include/c++/7/bits/basic_string.h **** 	  __and_<is_convertible<const _Tp&, __sv_type>,
 118:/usr/include/c++/7/bits/basic_string.h **** 		 __not_<is_convertible<const _Tp*, const basic_string*>>,
 119:/usr/include/c++/7/bits/basic_string.h **** 		 __not_<is_convertible<const _Tp&, const _CharT*>>>::value,
 120:/usr/include/c++/7/bits/basic_string.h **** 	  _Res>;
 121:/usr/include/c++/7/bits/basic_string.h **** 
 122:/usr/include/c++/7/bits/basic_string.h ****       // Allows an implicit conversion to __sv_type.
 123:/usr/include/c++/7/bits/basic_string.h ****       static __sv_type
 124:/usr/include/c++/7/bits/basic_string.h ****       _S_to_string_view(__sv_type __svt) noexcept
 125:/usr/include/c++/7/bits/basic_string.h ****       { return __svt; }
 126:/usr/include/c++/7/bits/basic_string.h **** 
 127:/usr/include/c++/7/bits/basic_string.h ****       // Wraps a string_view by explicit conversion and thus
 128:/usr/include/c++/7/bits/basic_string.h ****       // allows to add an internal constructor that does not
 129:/usr/include/c++/7/bits/basic_string.h ****       // participate in overload resolution when a string_view
 130:/usr/include/c++/7/bits/basic_string.h ****       // is provided.
 131:/usr/include/c++/7/bits/basic_string.h ****       struct __sv_wrapper
 132:/usr/include/c++/7/bits/basic_string.h ****       {
 133:/usr/include/c++/7/bits/basic_string.h **** 	explicit __sv_wrapper(__sv_type __sv) noexcept : _M_sv(__sv) { }
 134:/usr/include/c++/7/bits/basic_string.h **** 	__sv_type _M_sv;
 135:/usr/include/c++/7/bits/basic_string.h ****       };
 136:/usr/include/c++/7/bits/basic_string.h **** #endif
 137:/usr/include/c++/7/bits/basic_string.h **** 
 138:/usr/include/c++/7/bits/basic_string.h ****       // Use empty-base optimization: http://www.cantrip.org/emptyopt.html
 139:/usr/include/c++/7/bits/basic_string.h ****       struct _Alloc_hider : allocator_type // TODO check __is_final
 140:/usr/include/c++/7/bits/basic_string.h ****       {
 141:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus < 201103L
 142:/usr/include/c++/7/bits/basic_string.h **** 	_Alloc_hider(pointer __dat, const _Alloc& __a = _Alloc())
 143:/usr/include/c++/7/bits/basic_string.h **** 	: allocator_type(__a), _M_p(__dat) { }
 144:/usr/include/c++/7/bits/basic_string.h **** #else
 145:/usr/include/c++/7/bits/basic_string.h **** 	_Alloc_hider(pointer __dat, const _Alloc& __a)
 146:/usr/include/c++/7/bits/basic_string.h **** 	: allocator_type(__a), _M_p(__dat) { }
 959              		.loc 6 146 0
 960 0328 488D9C24 		leaq	5008(%rsp), %rbx
 960      90130000 
 961              	.LBE780:
 962              	.LBE779:
 963              	.LBE778:
 964              	.LBE777:
 965              	.LBE776:
 966              	.LBB817:
 967              	.LBB818:
 968              	.LBB819:
 969              		.file 7 "/usr/include/c++/7/bits/random.h"
   1:/usr/include/c++/7/bits/random.h **** // random number generation -*- C++ -*-
   2:/usr/include/c++/7/bits/random.h **** 
   3:/usr/include/c++/7/bits/random.h **** // Copyright (C) 2009-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/random.h **** //
   5:/usr/include/c++/7/bits/random.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/random.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/random.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/random.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/random.h **** // any later version.
  10:/usr/include/c++/7/bits/random.h **** 
  11:/usr/include/c++/7/bits/random.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/random.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/random.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/random.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/random.h **** 
  16:/usr/include/c++/7/bits/random.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/random.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/random.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/random.h **** 
  20:/usr/include/c++/7/bits/random.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/random.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/random.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/random.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/random.h **** 
  25:/usr/include/c++/7/bits/random.h **** /**
  26:/usr/include/c++/7/bits/random.h ****  * @file bits/random.h
  27:/usr/include/c++/7/bits/random.h ****  *  This is an internal header file, included by other library headers.
  28:/usr/include/c++/7/bits/random.h ****  *  Do not attempt to use it directly. @headername{random}
  29:/usr/include/c++/7/bits/random.h ****  */
  30:/usr/include/c++/7/bits/random.h **** 
  31:/usr/include/c++/7/bits/random.h **** #ifndef _RANDOM_H
  32:/usr/include/c++/7/bits/random.h **** #define _RANDOM_H 1
  33:/usr/include/c++/7/bits/random.h **** 
  34:/usr/include/c++/7/bits/random.h **** #include <vector>
  35:/usr/include/c++/7/bits/random.h **** #include <bits/uniform_int_dist.h>
  36:/usr/include/c++/7/bits/random.h **** 
  37:/usr/include/c++/7/bits/random.h **** namespace std _GLIBCXX_VISIBILITY(default)
  38:/usr/include/c++/7/bits/random.h **** {
  39:/usr/include/c++/7/bits/random.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  40:/usr/include/c++/7/bits/random.h **** 
  41:/usr/include/c++/7/bits/random.h ****   // [26.4] Random number generation
  42:/usr/include/c++/7/bits/random.h **** 
  43:/usr/include/c++/7/bits/random.h ****   /**
  44:/usr/include/c++/7/bits/random.h ****    * @defgroup random Random Number Generation
  45:/usr/include/c++/7/bits/random.h ****    * @ingroup numerics
  46:/usr/include/c++/7/bits/random.h ****    *
  47:/usr/include/c++/7/bits/random.h ****    * A facility for generating random numbers on selected distributions.
  48:/usr/include/c++/7/bits/random.h ****    * @{
  49:/usr/include/c++/7/bits/random.h ****    */
  50:/usr/include/c++/7/bits/random.h **** 
  51:/usr/include/c++/7/bits/random.h ****   /**
  52:/usr/include/c++/7/bits/random.h ****    * @brief A function template for converting the output of a (integral)
  53:/usr/include/c++/7/bits/random.h ****    * uniform random number generator to a floatng point result in the range
  54:/usr/include/c++/7/bits/random.h ****    * [0-1).
  55:/usr/include/c++/7/bits/random.h ****    */
  56:/usr/include/c++/7/bits/random.h ****   template<typename _RealType, size_t __bits,
  57:/usr/include/c++/7/bits/random.h **** 	   typename _UniformRandomNumberGenerator>
  58:/usr/include/c++/7/bits/random.h ****     _RealType
  59:/usr/include/c++/7/bits/random.h ****     generate_canonical(_UniformRandomNumberGenerator& __g);
  60:/usr/include/c++/7/bits/random.h **** 
  61:/usr/include/c++/7/bits/random.h **** _GLIBCXX_END_NAMESPACE_VERSION
  62:/usr/include/c++/7/bits/random.h **** 
  63:/usr/include/c++/7/bits/random.h ****   /*
  64:/usr/include/c++/7/bits/random.h ****    * Implementation-space details.
  65:/usr/include/c++/7/bits/random.h ****    */
  66:/usr/include/c++/7/bits/random.h ****   namespace __detail
  67:/usr/include/c++/7/bits/random.h ****   {
  68:/usr/include/c++/7/bits/random.h ****   _GLIBCXX_BEGIN_NAMESPACE_VERSION
  69:/usr/include/c++/7/bits/random.h **** 
  70:/usr/include/c++/7/bits/random.h ****     template<typename _UIntType, size_t __w,
  71:/usr/include/c++/7/bits/random.h **** 	     bool = __w < static_cast<size_t>
  72:/usr/include/c++/7/bits/random.h **** 			  (std::numeric_limits<_UIntType>::digits)>
  73:/usr/include/c++/7/bits/random.h ****       struct _Shift
  74:/usr/include/c++/7/bits/random.h ****       { static const _UIntType __value = 0; };
  75:/usr/include/c++/7/bits/random.h **** 
  76:/usr/include/c++/7/bits/random.h ****     template<typename _UIntType, size_t __w>
  77:/usr/include/c++/7/bits/random.h ****       struct _Shift<_UIntType, __w, true>
  78:/usr/include/c++/7/bits/random.h ****       { static const _UIntType __value = _UIntType(1) << __w; };
  79:/usr/include/c++/7/bits/random.h **** 
  80:/usr/include/c++/7/bits/random.h ****     template<int __s,
  81:/usr/include/c++/7/bits/random.h **** 	     int __which = ((__s <= __CHAR_BIT__ * sizeof (int))
  82:/usr/include/c++/7/bits/random.h **** 			    + (__s <= __CHAR_BIT__ * sizeof (long))
  83:/usr/include/c++/7/bits/random.h **** 			    + (__s <= __CHAR_BIT__ * sizeof (long long))
  84:/usr/include/c++/7/bits/random.h **** 			    /* assume long long no bigger than __int128 */
  85:/usr/include/c++/7/bits/random.h **** 			    + (__s <= 128))>
  86:/usr/include/c++/7/bits/random.h ****       struct _Select_uint_least_t
  87:/usr/include/c++/7/bits/random.h ****       {
  88:/usr/include/c++/7/bits/random.h **** 	static_assert(__which < 0, /* needs to be dependent */
  89:/usr/include/c++/7/bits/random.h **** 		      "sorry, would be too much trouble for a slow result");
  90:/usr/include/c++/7/bits/random.h ****       };
  91:/usr/include/c++/7/bits/random.h **** 
  92:/usr/include/c++/7/bits/random.h ****     template<int __s>
  93:/usr/include/c++/7/bits/random.h ****       struct _Select_uint_least_t<__s, 4>
  94:/usr/include/c++/7/bits/random.h ****       { typedef unsigned int type; };
  95:/usr/include/c++/7/bits/random.h **** 
  96:/usr/include/c++/7/bits/random.h ****     template<int __s>
  97:/usr/include/c++/7/bits/random.h ****       struct _Select_uint_least_t<__s, 3>
  98:/usr/include/c++/7/bits/random.h ****       { typedef unsigned long type; };
  99:/usr/include/c++/7/bits/random.h **** 
 100:/usr/include/c++/7/bits/random.h ****     template<int __s>
 101:/usr/include/c++/7/bits/random.h ****       struct _Select_uint_least_t<__s, 2>
 102:/usr/include/c++/7/bits/random.h ****       { typedef unsigned long long type; };
 103:/usr/include/c++/7/bits/random.h **** 
 104:/usr/include/c++/7/bits/random.h **** #ifdef _GLIBCXX_USE_INT128
 105:/usr/include/c++/7/bits/random.h ****     template<int __s>
 106:/usr/include/c++/7/bits/random.h ****       struct _Select_uint_least_t<__s, 1>
 107:/usr/include/c++/7/bits/random.h ****       { typedef unsigned __int128 type; };
 108:/usr/include/c++/7/bits/random.h **** #endif
 109:/usr/include/c++/7/bits/random.h **** 
 110:/usr/include/c++/7/bits/random.h ****     // Assume a != 0, a < m, c < m, x < m.
 111:/usr/include/c++/7/bits/random.h ****     template<typename _Tp, _Tp __m, _Tp __a, _Tp __c,
 112:/usr/include/c++/7/bits/random.h **** 	     bool __big_enough = (!(__m & (__m - 1))
 113:/usr/include/c++/7/bits/random.h **** 				  || (_Tp(-1) - __c) / __a >= __m - 1),
 114:/usr/include/c++/7/bits/random.h ****              bool __schrage_ok = __m % __a < __m / __a>
 115:/usr/include/c++/7/bits/random.h ****       struct _Mod
 116:/usr/include/c++/7/bits/random.h ****       {
 117:/usr/include/c++/7/bits/random.h **** 	typedef typename _Select_uint_least_t<std::__lg(__a)
 118:/usr/include/c++/7/bits/random.h **** 					      + std::__lg(__m) + 2>::type _Tp2;
 119:/usr/include/c++/7/bits/random.h **** 	static _Tp
 120:/usr/include/c++/7/bits/random.h **** 	__calc(_Tp __x)
 121:/usr/include/c++/7/bits/random.h **** 	{ return static_cast<_Tp>((_Tp2(__a) * __x + __c) % __m); }
 122:/usr/include/c++/7/bits/random.h ****       };
 123:/usr/include/c++/7/bits/random.h **** 
 124:/usr/include/c++/7/bits/random.h ****     // Schrage.
 125:/usr/include/c++/7/bits/random.h ****     template<typename _Tp, _Tp __m, _Tp __a, _Tp __c>
 126:/usr/include/c++/7/bits/random.h ****       struct _Mod<_Tp, __m, __a, __c, false, true>
 127:/usr/include/c++/7/bits/random.h ****       {
 128:/usr/include/c++/7/bits/random.h **** 	static _Tp
 129:/usr/include/c++/7/bits/random.h **** 	__calc(_Tp __x);
 130:/usr/include/c++/7/bits/random.h ****       };
 131:/usr/include/c++/7/bits/random.h **** 
 132:/usr/include/c++/7/bits/random.h ****     // Special cases:
 133:/usr/include/c++/7/bits/random.h ****     // - for m == 2^n or m == 0, unsigned integer overflow is safe.
 134:/usr/include/c++/7/bits/random.h ****     // - a * (m - 1) + c fits in _Tp, there is no overflow.
 135:/usr/include/c++/7/bits/random.h ****     template<typename _Tp, _Tp __m, _Tp __a, _Tp __c, bool __s>
 136:/usr/include/c++/7/bits/random.h ****       struct _Mod<_Tp, __m, __a, __c, true, __s>
 137:/usr/include/c++/7/bits/random.h ****       {
 138:/usr/include/c++/7/bits/random.h **** 	static _Tp
 139:/usr/include/c++/7/bits/random.h **** 	__calc(_Tp __x)
 140:/usr/include/c++/7/bits/random.h **** 	{
 141:/usr/include/c++/7/bits/random.h **** 	  _Tp __res = __a * __x + __c;
 142:/usr/include/c++/7/bits/random.h **** 	  if (__m)
 143:/usr/include/c++/7/bits/random.h **** 	    __res %= __m;
 144:/usr/include/c++/7/bits/random.h **** 	  return __res;
 145:/usr/include/c++/7/bits/random.h **** 	}
 146:/usr/include/c++/7/bits/random.h ****       };
 147:/usr/include/c++/7/bits/random.h **** 
 148:/usr/include/c++/7/bits/random.h ****     template<typename _Tp, _Tp __m, _Tp __a = 1, _Tp __c = 0>
 149:/usr/include/c++/7/bits/random.h ****       inline _Tp
 150:/usr/include/c++/7/bits/random.h ****       __mod(_Tp __x)
 151:/usr/include/c++/7/bits/random.h ****       { return _Mod<_Tp, __m, __a, __c>::__calc(__x); }
 152:/usr/include/c++/7/bits/random.h **** 
 153:/usr/include/c++/7/bits/random.h ****     /*
 154:/usr/include/c++/7/bits/random.h ****      * An adaptor class for converting the output of any Generator into
 155:/usr/include/c++/7/bits/random.h ****      * the input for a specific Distribution.
 156:/usr/include/c++/7/bits/random.h ****      */
 157:/usr/include/c++/7/bits/random.h ****     template<typename _Engine, typename _DInputType>
 158:/usr/include/c++/7/bits/random.h ****       struct _Adaptor
 159:/usr/include/c++/7/bits/random.h ****       {
 160:/usr/include/c++/7/bits/random.h **** 	static_assert(std::is_floating_point<_DInputType>::value,
 161:/usr/include/c++/7/bits/random.h **** 		      "template argument must be a floating point type");
 162:/usr/include/c++/7/bits/random.h **** 
 163:/usr/include/c++/7/bits/random.h ****       public:
 164:/usr/include/c++/7/bits/random.h **** 	_Adaptor(_Engine& __g)
 165:/usr/include/c++/7/bits/random.h **** 	: _M_g(__g) { }
 166:/usr/include/c++/7/bits/random.h **** 
 167:/usr/include/c++/7/bits/random.h **** 	_DInputType
 168:/usr/include/c++/7/bits/random.h **** 	min() const
 169:/usr/include/c++/7/bits/random.h **** 	{ return _DInputType(0); }
 170:/usr/include/c++/7/bits/random.h **** 
 171:/usr/include/c++/7/bits/random.h **** 	_DInputType
 172:/usr/include/c++/7/bits/random.h **** 	max() const
 173:/usr/include/c++/7/bits/random.h **** 	{ return _DInputType(1); }
 174:/usr/include/c++/7/bits/random.h **** 
 175:/usr/include/c++/7/bits/random.h **** 	/*
 176:/usr/include/c++/7/bits/random.h **** 	 * Converts a value generated by the adapted random number generator
 177:/usr/include/c++/7/bits/random.h **** 	 * into a value in the input domain for the dependent random number
 178:/usr/include/c++/7/bits/random.h **** 	 * distribution.
 179:/usr/include/c++/7/bits/random.h **** 	 */
 180:/usr/include/c++/7/bits/random.h **** 	_DInputType
 181:/usr/include/c++/7/bits/random.h **** 	operator()()
 182:/usr/include/c++/7/bits/random.h **** 	{
 183:/usr/include/c++/7/bits/random.h **** 	  return std::generate_canonical<_DInputType,
 184:/usr/include/c++/7/bits/random.h **** 	                            std::numeric_limits<_DInputType>::digits,
 185:/usr/include/c++/7/bits/random.h **** 	                            _Engine>(_M_g);
 186:/usr/include/c++/7/bits/random.h **** 	}
 187:/usr/include/c++/7/bits/random.h **** 
 188:/usr/include/c++/7/bits/random.h ****       private:
 189:/usr/include/c++/7/bits/random.h **** 	_Engine& _M_g;
 190:/usr/include/c++/7/bits/random.h ****       };
 191:/usr/include/c++/7/bits/random.h **** 
 192:/usr/include/c++/7/bits/random.h ****   _GLIBCXX_END_NAMESPACE_VERSION
 193:/usr/include/c++/7/bits/random.h ****   } // namespace __detail
 194:/usr/include/c++/7/bits/random.h **** 
 195:/usr/include/c++/7/bits/random.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 196:/usr/include/c++/7/bits/random.h **** 
 197:/usr/include/c++/7/bits/random.h ****   /**
 198:/usr/include/c++/7/bits/random.h ****    * @addtogroup random_generators Random Number Generators
 199:/usr/include/c++/7/bits/random.h ****    * @ingroup random
 200:/usr/include/c++/7/bits/random.h ****    *
 201:/usr/include/c++/7/bits/random.h ****    * These classes define objects which provide random or pseudorandom
 202:/usr/include/c++/7/bits/random.h ****    * numbers, either from a discrete or a continuous interval.  The
 203:/usr/include/c++/7/bits/random.h ****    * random number generator supplied as a part of this library are
 204:/usr/include/c++/7/bits/random.h ****    * all uniform random number generators which provide a sequence of
 205:/usr/include/c++/7/bits/random.h ****    * random number uniformly distributed over their range.
 206:/usr/include/c++/7/bits/random.h ****    *
 207:/usr/include/c++/7/bits/random.h ****    * A number generator is a function object with an operator() that
 208:/usr/include/c++/7/bits/random.h ****    * takes zero arguments and returns a number.
 209:/usr/include/c++/7/bits/random.h ****    *
 210:/usr/include/c++/7/bits/random.h ****    * A compliant random number generator must satisfy the following
 211:/usr/include/c++/7/bits/random.h ****    * requirements.  <table border=1 cellpadding=10 cellspacing=0>
 212:/usr/include/c++/7/bits/random.h ****    * <caption align=top>Random Number Generator Requirements</caption>
 213:/usr/include/c++/7/bits/random.h ****    * <tr><td>To be documented.</td></tr> </table>
 214:/usr/include/c++/7/bits/random.h ****    *
 215:/usr/include/c++/7/bits/random.h ****    * @{
 216:/usr/include/c++/7/bits/random.h ****    */
 217:/usr/include/c++/7/bits/random.h **** 
 218:/usr/include/c++/7/bits/random.h ****   /**
 219:/usr/include/c++/7/bits/random.h ****    * @brief A model of a linear congruential random number generator.
 220:/usr/include/c++/7/bits/random.h ****    *
 221:/usr/include/c++/7/bits/random.h ****    * A random number generator that produces pseudorandom numbers via
 222:/usr/include/c++/7/bits/random.h ****    * linear function:
 223:/usr/include/c++/7/bits/random.h ****    * @f[
 224:/usr/include/c++/7/bits/random.h ****    *     x_{i+1}\leftarrow(ax_{i} + c) \bmod m 
 225:/usr/include/c++/7/bits/random.h ****    * @f]
 226:/usr/include/c++/7/bits/random.h ****    *
 227:/usr/include/c++/7/bits/random.h ****    * The template parameter @p _UIntType must be an unsigned integral type
 228:/usr/include/c++/7/bits/random.h ****    * large enough to store values up to (__m-1). If the template parameter
 229:/usr/include/c++/7/bits/random.h ****    * @p __m is 0, the modulus @p __m used is
 230:/usr/include/c++/7/bits/random.h ****    * std::numeric_limits<_UIntType>::max() plus 1. Otherwise, the template
 231:/usr/include/c++/7/bits/random.h ****    * parameters @p __a and @p __c must be less than @p __m.
 232:/usr/include/c++/7/bits/random.h ****    *
 233:/usr/include/c++/7/bits/random.h ****    * The size of the state is @f$1@f$.
 234:/usr/include/c++/7/bits/random.h ****    */
 235:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 236:/usr/include/c++/7/bits/random.h ****     class linear_congruential_engine
 237:/usr/include/c++/7/bits/random.h ****     {
 238:/usr/include/c++/7/bits/random.h ****       static_assert(std::is_unsigned<_UIntType>::value,
 239:/usr/include/c++/7/bits/random.h **** 		    "result_type must be an unsigned integral type");
 240:/usr/include/c++/7/bits/random.h ****       static_assert(__m == 0u || (__a < __m && __c < __m),
 241:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __m out of bounds");
 242:/usr/include/c++/7/bits/random.h **** 
 243:/usr/include/c++/7/bits/random.h ****     public:
 244:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
 245:/usr/include/c++/7/bits/random.h ****       typedef _UIntType result_type;
 246:/usr/include/c++/7/bits/random.h **** 
 247:/usr/include/c++/7/bits/random.h ****       /** The multiplier. */
 248:/usr/include/c++/7/bits/random.h ****       static constexpr result_type multiplier   = __a;
 249:/usr/include/c++/7/bits/random.h ****       /** An increment. */
 250:/usr/include/c++/7/bits/random.h ****       static constexpr result_type increment    = __c;
 251:/usr/include/c++/7/bits/random.h ****       /** The modulus. */
 252:/usr/include/c++/7/bits/random.h ****       static constexpr result_type modulus      = __m;
 253:/usr/include/c++/7/bits/random.h ****       static constexpr result_type default_seed = 1u;
 254:/usr/include/c++/7/bits/random.h **** 
 255:/usr/include/c++/7/bits/random.h ****       /**
 256:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a %linear_congruential_engine random number
 257:/usr/include/c++/7/bits/random.h ****        *        generator engine with seed @p __s.  The default seed value
 258:/usr/include/c++/7/bits/random.h ****        *        is 1.
 259:/usr/include/c++/7/bits/random.h ****        *
 260:/usr/include/c++/7/bits/random.h ****        * @param __s The initial seed value.
 261:/usr/include/c++/7/bits/random.h ****        */
 262:/usr/include/c++/7/bits/random.h ****       explicit
 263:/usr/include/c++/7/bits/random.h ****       linear_congruential_engine(result_type __s = default_seed)
 264:/usr/include/c++/7/bits/random.h ****       { seed(__s); }
 265:/usr/include/c++/7/bits/random.h **** 
 266:/usr/include/c++/7/bits/random.h ****       /**
 267:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a %linear_congruential_engine random number
 268:/usr/include/c++/7/bits/random.h ****        *        generator engine seeded from the seed sequence @p __q.
 269:/usr/include/c++/7/bits/random.h ****        *
 270:/usr/include/c++/7/bits/random.h ****        * @param __q the seed sequence.
 271:/usr/include/c++/7/bits/random.h ****        */
 272:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
 273:/usr/include/c++/7/bits/random.h **** 	std::enable_if<!std::is_same<_Sseq, linear_congruential_engine>::value>
 274:/usr/include/c++/7/bits/random.h **** 	       ::type>
 275:/usr/include/c++/7/bits/random.h ****         explicit
 276:/usr/include/c++/7/bits/random.h ****         linear_congruential_engine(_Sseq& __q)
 277:/usr/include/c++/7/bits/random.h ****         { seed(__q); }
 278:/usr/include/c++/7/bits/random.h **** 
 279:/usr/include/c++/7/bits/random.h ****       /**
 280:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %linear_congruential_engine random number generator
 281:/usr/include/c++/7/bits/random.h ****        *        engine sequence to the seed @p __s.
 282:/usr/include/c++/7/bits/random.h ****        *
 283:/usr/include/c++/7/bits/random.h ****        * @param __s The new seed.
 284:/usr/include/c++/7/bits/random.h ****        */
 285:/usr/include/c++/7/bits/random.h ****       void
 286:/usr/include/c++/7/bits/random.h ****       seed(result_type __s = default_seed);
 287:/usr/include/c++/7/bits/random.h **** 
 288:/usr/include/c++/7/bits/random.h ****       /**
 289:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %linear_congruential_engine random number generator
 290:/usr/include/c++/7/bits/random.h ****        *        engine
 291:/usr/include/c++/7/bits/random.h ****        * sequence using values from the seed sequence @p __q.
 292:/usr/include/c++/7/bits/random.h ****        *
 293:/usr/include/c++/7/bits/random.h ****        * @param __q the seed sequence.
 294:/usr/include/c++/7/bits/random.h ****        */
 295:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
 296:/usr/include/c++/7/bits/random.h ****         typename std::enable_if<std::is_class<_Sseq>::value>::type
 297:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q);
 298:/usr/include/c++/7/bits/random.h **** 
 299:/usr/include/c++/7/bits/random.h ****       /**
 300:/usr/include/c++/7/bits/random.h ****        * @brief Gets the smallest possible value in the output range.
 301:/usr/include/c++/7/bits/random.h ****        *
 302:/usr/include/c++/7/bits/random.h ****        * The minimum depends on the @p __c parameter: if it is zero, the
 303:/usr/include/c++/7/bits/random.h ****        * minimum generated must be > 0, otherwise 0 is allowed.
 304:/usr/include/c++/7/bits/random.h ****        */
 305:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 306:/usr/include/c++/7/bits/random.h ****       min()
 307:/usr/include/c++/7/bits/random.h ****       { return __c == 0u ? 1u : 0u; }
 308:/usr/include/c++/7/bits/random.h **** 
 309:/usr/include/c++/7/bits/random.h ****       /**
 310:/usr/include/c++/7/bits/random.h ****        * @brief Gets the largest possible value in the output range.
 311:/usr/include/c++/7/bits/random.h ****        */
 312:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 313:/usr/include/c++/7/bits/random.h ****       max()
 314:/usr/include/c++/7/bits/random.h ****       { return __m - 1u; }
 315:/usr/include/c++/7/bits/random.h **** 
 316:/usr/include/c++/7/bits/random.h ****       /**
 317:/usr/include/c++/7/bits/random.h ****        * @brief Discard a sequence of random numbers.
 318:/usr/include/c++/7/bits/random.h ****        */
 319:/usr/include/c++/7/bits/random.h ****       void
 320:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z)
 321:/usr/include/c++/7/bits/random.h ****       {
 322:/usr/include/c++/7/bits/random.h **** 	for (; __z != 0ULL; --__z)
 323:/usr/include/c++/7/bits/random.h **** 	  (*this)();
 324:/usr/include/c++/7/bits/random.h ****       }
 325:/usr/include/c++/7/bits/random.h **** 
 326:/usr/include/c++/7/bits/random.h ****       /**
 327:/usr/include/c++/7/bits/random.h ****        * @brief Gets the next random number in the sequence.
 328:/usr/include/c++/7/bits/random.h ****        */
 329:/usr/include/c++/7/bits/random.h ****       result_type
 330:/usr/include/c++/7/bits/random.h ****       operator()()
 331:/usr/include/c++/7/bits/random.h ****       {
 332:/usr/include/c++/7/bits/random.h **** 	_M_x = __detail::__mod<_UIntType, __m, __a, __c>(_M_x);
 333:/usr/include/c++/7/bits/random.h **** 	return _M_x;
 334:/usr/include/c++/7/bits/random.h ****       }
 335:/usr/include/c++/7/bits/random.h **** 
 336:/usr/include/c++/7/bits/random.h ****       /**
 337:/usr/include/c++/7/bits/random.h ****        * @brief Compares two linear congruential random number generator
 338:/usr/include/c++/7/bits/random.h ****        * objects of the same type for equality.
 339:/usr/include/c++/7/bits/random.h ****        *
 340:/usr/include/c++/7/bits/random.h ****        * @param __lhs A linear congruential random number generator object.
 341:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another linear congruential random number generator
 342:/usr/include/c++/7/bits/random.h ****        *              object.
 343:/usr/include/c++/7/bits/random.h ****        *
 344:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
 345:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
 346:/usr/include/c++/7/bits/random.h ****        */
 347:/usr/include/c++/7/bits/random.h ****       friend bool
 348:/usr/include/c++/7/bits/random.h ****       operator==(const linear_congruential_engine& __lhs,
 349:/usr/include/c++/7/bits/random.h **** 		 const linear_congruential_engine& __rhs)
 350:/usr/include/c++/7/bits/random.h ****       { return __lhs._M_x == __rhs._M_x; }
 351:/usr/include/c++/7/bits/random.h **** 
 352:/usr/include/c++/7/bits/random.h ****       /**
 353:/usr/include/c++/7/bits/random.h ****        * @brief Writes the textual representation of the state x(i) of x to
 354:/usr/include/c++/7/bits/random.h ****        *        @p __os.
 355:/usr/include/c++/7/bits/random.h ****        *
 356:/usr/include/c++/7/bits/random.h ****        * @param __os  The output stream.
 357:/usr/include/c++/7/bits/random.h ****        * @param __lcr A % linear_congruential_engine random number generator.
 358:/usr/include/c++/7/bits/random.h ****        * @returns __os.
 359:/usr/include/c++/7/bits/random.h ****        */
 360:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1, _UIntType1 __a1, _UIntType1 __c1,
 361:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __m1, typename _CharT, typename _Traits>
 362:/usr/include/c++/7/bits/random.h **** 	friend std::basic_ostream<_CharT, _Traits>&
 363:/usr/include/c++/7/bits/random.h **** 	operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 364:/usr/include/c++/7/bits/random.h **** 		   const std::linear_congruential_engine<_UIntType1,
 365:/usr/include/c++/7/bits/random.h **** 		   __a1, __c1, __m1>& __lcr);
 366:/usr/include/c++/7/bits/random.h **** 
 367:/usr/include/c++/7/bits/random.h ****       /**
 368:/usr/include/c++/7/bits/random.h ****        * @brief Sets the state of the engine by reading its textual
 369:/usr/include/c++/7/bits/random.h ****        *        representation from @p __is.
 370:/usr/include/c++/7/bits/random.h ****        *
 371:/usr/include/c++/7/bits/random.h ****        * The textual representation must have been previously written using
 372:/usr/include/c++/7/bits/random.h ****        * an output stream whose imbued locale and whose type's template
 373:/usr/include/c++/7/bits/random.h ****        * specialization arguments _CharT and _Traits were the same as those
 374:/usr/include/c++/7/bits/random.h ****        * of @p __is.
 375:/usr/include/c++/7/bits/random.h ****        *
 376:/usr/include/c++/7/bits/random.h ****        * @param __is  The input stream.
 377:/usr/include/c++/7/bits/random.h ****        * @param __lcr A % linear_congruential_engine random number generator.
 378:/usr/include/c++/7/bits/random.h ****        * @returns __is.
 379:/usr/include/c++/7/bits/random.h ****        */
 380:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1, _UIntType1 __a1, _UIntType1 __c1,
 381:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __m1, typename _CharT, typename _Traits>
 382:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
 383:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
 384:/usr/include/c++/7/bits/random.h **** 		   std::linear_congruential_engine<_UIntType1, __a1,
 385:/usr/include/c++/7/bits/random.h **** 		   __c1, __m1>& __lcr);
 386:/usr/include/c++/7/bits/random.h **** 
 387:/usr/include/c++/7/bits/random.h ****     private:
 388:/usr/include/c++/7/bits/random.h ****       _UIntType _M_x;
 389:/usr/include/c++/7/bits/random.h ****     };
 390:/usr/include/c++/7/bits/random.h **** 
 391:/usr/include/c++/7/bits/random.h ****   /**
 392:/usr/include/c++/7/bits/random.h ****    * @brief Compares two linear congruential random number generator
 393:/usr/include/c++/7/bits/random.h ****    * objects of the same type for inequality.
 394:/usr/include/c++/7/bits/random.h ****    *
 395:/usr/include/c++/7/bits/random.h ****    * @param __lhs A linear congruential random number generator object.
 396:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another linear congruential random number generator
 397:/usr/include/c++/7/bits/random.h ****    *              object.
 398:/usr/include/c++/7/bits/random.h ****    *
 399:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
 400:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
 401:/usr/include/c++/7/bits/random.h ****    */
 402:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, _UIntType __a, _UIntType __c, _UIntType __m>
 403:/usr/include/c++/7/bits/random.h ****     inline bool
 404:/usr/include/c++/7/bits/random.h ****     operator!=(const std::linear_congruential_engine<_UIntType, __a,
 405:/usr/include/c++/7/bits/random.h **** 	       __c, __m>& __lhs,
 406:/usr/include/c++/7/bits/random.h **** 	       const std::linear_congruential_engine<_UIntType, __a,
 407:/usr/include/c++/7/bits/random.h **** 	       __c, __m>& __rhs)
 408:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
 409:/usr/include/c++/7/bits/random.h **** 
 410:/usr/include/c++/7/bits/random.h **** 
 411:/usr/include/c++/7/bits/random.h ****   /**
 412:/usr/include/c++/7/bits/random.h ****    * A generalized feedback shift register discrete random number generator.
 413:/usr/include/c++/7/bits/random.h ****    *
 414:/usr/include/c++/7/bits/random.h ****    * This algorithm avoids multiplication and division and is designed to be
 415:/usr/include/c++/7/bits/random.h ****    * friendly to a pipelined architecture.  If the parameters are chosen
 416:/usr/include/c++/7/bits/random.h ****    * correctly, this generator will produce numbers with a very long period and
 417:/usr/include/c++/7/bits/random.h ****    * fairly good apparent entropy, although still not cryptographically strong.
 418:/usr/include/c++/7/bits/random.h ****    *
 419:/usr/include/c++/7/bits/random.h ****    * The best way to use this generator is with the predefined mt19937 class.
 420:/usr/include/c++/7/bits/random.h ****    *
 421:/usr/include/c++/7/bits/random.h ****    * This algorithm was originally invented by Makoto Matsumoto and
 422:/usr/include/c++/7/bits/random.h ****    * Takuji Nishimura.
 423:/usr/include/c++/7/bits/random.h ****    *
 424:/usr/include/c++/7/bits/random.h ****    * @tparam __w  Word size, the number of bits in each element of 
 425:/usr/include/c++/7/bits/random.h ****    *              the state vector.
 426:/usr/include/c++/7/bits/random.h ****    * @tparam __n  The degree of recursion.
 427:/usr/include/c++/7/bits/random.h ****    * @tparam __m  The period parameter.
 428:/usr/include/c++/7/bits/random.h ****    * @tparam __r  The separation point bit index.
 429:/usr/include/c++/7/bits/random.h ****    * @tparam __a  The last row of the twist matrix.
 430:/usr/include/c++/7/bits/random.h ****    * @tparam __u  The first right-shift tempering matrix parameter.
 431:/usr/include/c++/7/bits/random.h ****    * @tparam __d  The first right-shift tempering matrix mask.
 432:/usr/include/c++/7/bits/random.h ****    * @tparam __s  The first left-shift tempering matrix parameter.
 433:/usr/include/c++/7/bits/random.h ****    * @tparam __b  The first left-shift tempering matrix mask.
 434:/usr/include/c++/7/bits/random.h ****    * @tparam __t  The second left-shift tempering matrix parameter.
 435:/usr/include/c++/7/bits/random.h ****    * @tparam __c  The second left-shift tempering matrix mask.
 436:/usr/include/c++/7/bits/random.h ****    * @tparam __l  The second right-shift tempering matrix parameter.
 437:/usr/include/c++/7/bits/random.h ****    * @tparam __f  Initialization multiplier.
 438:/usr/include/c++/7/bits/random.h ****    */
 439:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, size_t __w,
 440:/usr/include/c++/7/bits/random.h **** 	   size_t __n, size_t __m, size_t __r,
 441:/usr/include/c++/7/bits/random.h **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 442:/usr/include/c++/7/bits/random.h **** 	   _UIntType __b, size_t __t,
 443:/usr/include/c++/7/bits/random.h **** 	   _UIntType __c, size_t __l, _UIntType __f>
 444:/usr/include/c++/7/bits/random.h ****     class mersenne_twister_engine
 445:/usr/include/c++/7/bits/random.h ****     {
 446:/usr/include/c++/7/bits/random.h ****       static_assert(std::is_unsigned<_UIntType>::value,
 447:/usr/include/c++/7/bits/random.h **** 		    "result_type must be an unsigned integral type");
 448:/usr/include/c++/7/bits/random.h ****       static_assert(1u <= __m && __m <= __n,
 449:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __m out of bounds");
 450:/usr/include/c++/7/bits/random.h ****       static_assert(__r <= __w, "template argument substituting "
 451:/usr/include/c++/7/bits/random.h **** 		    "__r out of bound");
 452:/usr/include/c++/7/bits/random.h ****       static_assert(__u <= __w, "template argument substituting "
 453:/usr/include/c++/7/bits/random.h **** 		    "__u out of bound");
 454:/usr/include/c++/7/bits/random.h ****       static_assert(__s <= __w, "template argument substituting "
 455:/usr/include/c++/7/bits/random.h **** 		    "__s out of bound");
 456:/usr/include/c++/7/bits/random.h ****       static_assert(__t <= __w, "template argument substituting "
 457:/usr/include/c++/7/bits/random.h **** 		    "__t out of bound");
 458:/usr/include/c++/7/bits/random.h ****       static_assert(__l <= __w, "template argument substituting "
 459:/usr/include/c++/7/bits/random.h **** 		    "__l out of bound");
 460:/usr/include/c++/7/bits/random.h ****       static_assert(__w <= std::numeric_limits<_UIntType>::digits,
 461:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __w out of bound");
 462:/usr/include/c++/7/bits/random.h ****       static_assert(__a <= (__detail::_Shift<_UIntType, __w>::__value - 1),
 463:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __a out of bound");
 464:/usr/include/c++/7/bits/random.h ****       static_assert(__b <= (__detail::_Shift<_UIntType, __w>::__value - 1),
 465:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __b out of bound");
 466:/usr/include/c++/7/bits/random.h ****       static_assert(__c <= (__detail::_Shift<_UIntType, __w>::__value - 1),
 467:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __c out of bound");
 468:/usr/include/c++/7/bits/random.h ****       static_assert(__d <= (__detail::_Shift<_UIntType, __w>::__value - 1),
 469:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __d out of bound");
 470:/usr/include/c++/7/bits/random.h ****       static_assert(__f <= (__detail::_Shift<_UIntType, __w>::__value - 1),
 471:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __f out of bound");
 472:/usr/include/c++/7/bits/random.h **** 
 473:/usr/include/c++/7/bits/random.h ****     public:
 474:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
 475:/usr/include/c++/7/bits/random.h ****       typedef _UIntType result_type;
 476:/usr/include/c++/7/bits/random.h **** 
 477:/usr/include/c++/7/bits/random.h ****       // parameter values
 478:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      word_size                 = __w;
 479:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      state_size                = __n;
 480:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      shift_size                = __m;
 481:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      mask_bits                 = __r;
 482:/usr/include/c++/7/bits/random.h ****       static constexpr result_type xor_mask                  = __a;
 483:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      tempering_u               = __u;
 484:/usr/include/c++/7/bits/random.h ****       static constexpr result_type tempering_d               = __d;
 485:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      tempering_s               = __s;
 486:/usr/include/c++/7/bits/random.h ****       static constexpr result_type tempering_b               = __b;
 487:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      tempering_t               = __t;
 488:/usr/include/c++/7/bits/random.h ****       static constexpr result_type tempering_c               = __c;
 489:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      tempering_l               = __l;
 490:/usr/include/c++/7/bits/random.h ****       static constexpr result_type initialization_multiplier = __f;
 491:/usr/include/c++/7/bits/random.h ****       static constexpr result_type default_seed = 5489u;
 492:/usr/include/c++/7/bits/random.h **** 
 493:/usr/include/c++/7/bits/random.h ****       // constructors and member function
 494:/usr/include/c++/7/bits/random.h ****       explicit
 495:/usr/include/c++/7/bits/random.h ****       mersenne_twister_engine(result_type __sd = default_seed)
 496:/usr/include/c++/7/bits/random.h ****       { seed(__sd); }
 497:/usr/include/c++/7/bits/random.h **** 
 498:/usr/include/c++/7/bits/random.h ****       /**
 499:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a %mersenne_twister_engine random number generator
 500:/usr/include/c++/7/bits/random.h ****        *        engine seeded from the seed sequence @p __q.
 501:/usr/include/c++/7/bits/random.h ****        *
 502:/usr/include/c++/7/bits/random.h ****        * @param __q the seed sequence.
 503:/usr/include/c++/7/bits/random.h ****        */
 504:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
 505:/usr/include/c++/7/bits/random.h ****         std::enable_if<!std::is_same<_Sseq, mersenne_twister_engine>::value>
 506:/usr/include/c++/7/bits/random.h **** 	       ::type>
 507:/usr/include/c++/7/bits/random.h ****         explicit
 508:/usr/include/c++/7/bits/random.h ****         mersenne_twister_engine(_Sseq& __q)
 509:/usr/include/c++/7/bits/random.h ****         { seed(__q); }
 510:/usr/include/c++/7/bits/random.h **** 
 511:/usr/include/c++/7/bits/random.h ****       void
 512:/usr/include/c++/7/bits/random.h ****       seed(result_type __sd = default_seed);
 513:/usr/include/c++/7/bits/random.h **** 
 514:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
 515:/usr/include/c++/7/bits/random.h **** 	typename std::enable_if<std::is_class<_Sseq>::value>::type
 516:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q);
 517:/usr/include/c++/7/bits/random.h **** 
 518:/usr/include/c++/7/bits/random.h ****       /**
 519:/usr/include/c++/7/bits/random.h ****        * @brief Gets the smallest possible value in the output range.
 520:/usr/include/c++/7/bits/random.h ****        */
 521:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 522:/usr/include/c++/7/bits/random.h ****       min()
 523:/usr/include/c++/7/bits/random.h ****       { return 0; };
 524:/usr/include/c++/7/bits/random.h **** 
 525:/usr/include/c++/7/bits/random.h ****       /**
 526:/usr/include/c++/7/bits/random.h ****        * @brief Gets the largest possible value in the output range.
 527:/usr/include/c++/7/bits/random.h ****        */
 528:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 529:/usr/include/c++/7/bits/random.h ****       max()
 530:/usr/include/c++/7/bits/random.h ****       { return __detail::_Shift<_UIntType, __w>::__value - 1; }
 531:/usr/include/c++/7/bits/random.h **** 
 532:/usr/include/c++/7/bits/random.h ****       /**
 533:/usr/include/c++/7/bits/random.h ****        * @brief Discard a sequence of random numbers.
 534:/usr/include/c++/7/bits/random.h ****        */
 535:/usr/include/c++/7/bits/random.h ****       void
 536:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z);
 537:/usr/include/c++/7/bits/random.h **** 
 538:/usr/include/c++/7/bits/random.h ****       result_type
 539:/usr/include/c++/7/bits/random.h ****       operator()();
 540:/usr/include/c++/7/bits/random.h **** 
 541:/usr/include/c++/7/bits/random.h ****       /**
 542:/usr/include/c++/7/bits/random.h ****        * @brief Compares two % mersenne_twister_engine random number generator
 543:/usr/include/c++/7/bits/random.h ****        *        objects of the same type for equality.
 544:/usr/include/c++/7/bits/random.h ****        *
 545:/usr/include/c++/7/bits/random.h ****        * @param __lhs A % mersenne_twister_engine random number generator
 546:/usr/include/c++/7/bits/random.h ****        *              object.
 547:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another % mersenne_twister_engine random number
 548:/usr/include/c++/7/bits/random.h ****        *              generator object.
 549:/usr/include/c++/7/bits/random.h ****        *
 550:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
 551:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
 552:/usr/include/c++/7/bits/random.h ****        */
 553:/usr/include/c++/7/bits/random.h ****       friend bool
 554:/usr/include/c++/7/bits/random.h ****       operator==(const mersenne_twister_engine& __lhs,
 555:/usr/include/c++/7/bits/random.h **** 		 const mersenne_twister_engine& __rhs)
 556:/usr/include/c++/7/bits/random.h ****       { return (std::equal(__lhs._M_x, __lhs._M_x + state_size, __rhs._M_x)
 557:/usr/include/c++/7/bits/random.h **** 		&& __lhs._M_p == __rhs._M_p); }
 558:/usr/include/c++/7/bits/random.h **** 
 559:/usr/include/c++/7/bits/random.h ****       /**
 560:/usr/include/c++/7/bits/random.h ****        * @brief Inserts the current state of a % mersenne_twister_engine
 561:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x into the output stream
 562:/usr/include/c++/7/bits/random.h ****        *        @p __os.
 563:/usr/include/c++/7/bits/random.h ****        *
 564:/usr/include/c++/7/bits/random.h ****        * @param __os An output stream.
 565:/usr/include/c++/7/bits/random.h ****        * @param __x  A % mersenne_twister_engine random number generator
 566:/usr/include/c++/7/bits/random.h ****        *             engine.
 567:/usr/include/c++/7/bits/random.h ****        *
 568:/usr/include/c++/7/bits/random.h ****        * @returns The output stream with the state of @p __x inserted or in
 569:/usr/include/c++/7/bits/random.h ****        * an error state.
 570:/usr/include/c++/7/bits/random.h ****        */
 571:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1,
 572:/usr/include/c++/7/bits/random.h **** 	       size_t __w1, size_t __n1,
 573:/usr/include/c++/7/bits/random.h **** 	       size_t __m1, size_t __r1,
 574:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __a1, size_t __u1,
 575:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __d1, size_t __s1,
 576:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __b1, size_t __t1,
 577:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __c1, size_t __l1, _UIntType1 __f1,
 578:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
 579:/usr/include/c++/7/bits/random.h **** 	friend std::basic_ostream<_CharT, _Traits>&
 580:/usr/include/c++/7/bits/random.h **** 	operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 581:/usr/include/c++/7/bits/random.h **** 		   const std::mersenne_twister_engine<_UIntType1, __w1, __n1,
 582:/usr/include/c++/7/bits/random.h **** 		   __m1, __r1, __a1, __u1, __d1, __s1, __b1, __t1, __c1,
 583:/usr/include/c++/7/bits/random.h **** 		   __l1, __f1>& __x);
 584:/usr/include/c++/7/bits/random.h **** 
 585:/usr/include/c++/7/bits/random.h ****       /**
 586:/usr/include/c++/7/bits/random.h ****        * @brief Extracts the current state of a % mersenne_twister_engine
 587:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x from the input stream
 588:/usr/include/c++/7/bits/random.h ****        *        @p __is.
 589:/usr/include/c++/7/bits/random.h ****        *
 590:/usr/include/c++/7/bits/random.h ****        * @param __is An input stream.
 591:/usr/include/c++/7/bits/random.h ****        * @param __x  A % mersenne_twister_engine random number generator
 592:/usr/include/c++/7/bits/random.h ****        *             engine.
 593:/usr/include/c++/7/bits/random.h ****        *
 594:/usr/include/c++/7/bits/random.h ****        * @returns The input stream with the state of @p __x extracted or in
 595:/usr/include/c++/7/bits/random.h ****        * an error state.
 596:/usr/include/c++/7/bits/random.h ****        */
 597:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1,
 598:/usr/include/c++/7/bits/random.h **** 	       size_t __w1, size_t __n1,
 599:/usr/include/c++/7/bits/random.h **** 	       size_t __m1, size_t __r1,
 600:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __a1, size_t __u1,
 601:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __d1, size_t __s1,
 602:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __b1, size_t __t1,
 603:/usr/include/c++/7/bits/random.h **** 	       _UIntType1 __c1, size_t __l1, _UIntType1 __f1,
 604:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
 605:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
 606:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
 607:/usr/include/c++/7/bits/random.h **** 		   std::mersenne_twister_engine<_UIntType1, __w1, __n1, __m1,
 608:/usr/include/c++/7/bits/random.h **** 		   __r1, __a1, __u1, __d1, __s1, __b1, __t1, __c1,
 609:/usr/include/c++/7/bits/random.h **** 		   __l1, __f1>& __x);
 610:/usr/include/c++/7/bits/random.h **** 
 611:/usr/include/c++/7/bits/random.h ****     private:
 612:/usr/include/c++/7/bits/random.h ****       void _M_gen_rand();
 613:/usr/include/c++/7/bits/random.h **** 
 614:/usr/include/c++/7/bits/random.h ****       _UIntType _M_x[state_size];
 615:/usr/include/c++/7/bits/random.h ****       size_t    _M_p;
 616:/usr/include/c++/7/bits/random.h ****     };
 617:/usr/include/c++/7/bits/random.h **** 
 618:/usr/include/c++/7/bits/random.h ****   /**
 619:/usr/include/c++/7/bits/random.h ****    * @brief Compares two % mersenne_twister_engine random number generator
 620:/usr/include/c++/7/bits/random.h ****    *        objects of the same type for inequality.
 621:/usr/include/c++/7/bits/random.h ****    *
 622:/usr/include/c++/7/bits/random.h ****    * @param __lhs A % mersenne_twister_engine random number generator
 623:/usr/include/c++/7/bits/random.h ****    *              object.
 624:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another % mersenne_twister_engine random number
 625:/usr/include/c++/7/bits/random.h ****    *              generator object.
 626:/usr/include/c++/7/bits/random.h ****    *
 627:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
 628:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
 629:/usr/include/c++/7/bits/random.h ****    */
 630:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, size_t __w,
 631:/usr/include/c++/7/bits/random.h **** 	   size_t __n, size_t __m, size_t __r,
 632:/usr/include/c++/7/bits/random.h **** 	   _UIntType __a, size_t __u, _UIntType __d, size_t __s,
 633:/usr/include/c++/7/bits/random.h **** 	   _UIntType __b, size_t __t,
 634:/usr/include/c++/7/bits/random.h **** 	   _UIntType __c, size_t __l, _UIntType __f>
 635:/usr/include/c++/7/bits/random.h ****     inline bool
 636:/usr/include/c++/7/bits/random.h ****     operator!=(const std::mersenne_twister_engine<_UIntType, __w, __n, __m,
 637:/usr/include/c++/7/bits/random.h **** 	       __r, __a, __u, __d, __s, __b, __t, __c, __l, __f>& __lhs,
 638:/usr/include/c++/7/bits/random.h **** 	       const std::mersenne_twister_engine<_UIntType, __w, __n, __m,
 639:/usr/include/c++/7/bits/random.h **** 	       __r, __a, __u, __d, __s, __b, __t, __c, __l, __f>& __rhs)
 640:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
 641:/usr/include/c++/7/bits/random.h **** 
 642:/usr/include/c++/7/bits/random.h **** 
 643:/usr/include/c++/7/bits/random.h ****   /**
 644:/usr/include/c++/7/bits/random.h ****    * @brief The Marsaglia-Zaman generator.
 645:/usr/include/c++/7/bits/random.h ****    *
 646:/usr/include/c++/7/bits/random.h ****    * This is a model of a Generalized Fibonacci discrete random number
 647:/usr/include/c++/7/bits/random.h ****    * generator, sometimes referred to as the SWC generator.
 648:/usr/include/c++/7/bits/random.h ****    *
 649:/usr/include/c++/7/bits/random.h ****    * A discrete random number generator that produces pseudorandom
 650:/usr/include/c++/7/bits/random.h ****    * numbers using:
 651:/usr/include/c++/7/bits/random.h ****    * @f[
 652:/usr/include/c++/7/bits/random.h ****    *     x_{i}\leftarrow(x_{i - s} - x_{i - r} - carry_{i-1}) \bmod m 
 653:/usr/include/c++/7/bits/random.h ****    * @f]
 654:/usr/include/c++/7/bits/random.h ****    *
 655:/usr/include/c++/7/bits/random.h ****    * The size of the state is @f$r@f$
 656:/usr/include/c++/7/bits/random.h ****    * and the maximum period of the generator is @f$(m^r - m^s - 1)@f$.
 657:/usr/include/c++/7/bits/random.h ****    */
 658:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 659:/usr/include/c++/7/bits/random.h ****     class subtract_with_carry_engine
 660:/usr/include/c++/7/bits/random.h ****     {
 661:/usr/include/c++/7/bits/random.h ****       static_assert(std::is_unsigned<_UIntType>::value,
 662:/usr/include/c++/7/bits/random.h **** 		    "result_type must be an unsigned integral type");
 663:/usr/include/c++/7/bits/random.h ****       static_assert(0u < __s && __s < __r,
 664:/usr/include/c++/7/bits/random.h **** 		    "0 < s < r");
 665:/usr/include/c++/7/bits/random.h ****       static_assert(0u < __w && __w <= std::numeric_limits<_UIntType>::digits,
 666:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __w out of bounds");
 667:/usr/include/c++/7/bits/random.h **** 
 668:/usr/include/c++/7/bits/random.h ****     public:
 669:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
 670:/usr/include/c++/7/bits/random.h ****       typedef _UIntType result_type;
 671:/usr/include/c++/7/bits/random.h **** 
 672:/usr/include/c++/7/bits/random.h ****       // parameter values
 673:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      word_size    = __w;
 674:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      short_lag    = __s;
 675:/usr/include/c++/7/bits/random.h ****       static constexpr size_t      long_lag     = __r;
 676:/usr/include/c++/7/bits/random.h ****       static constexpr result_type default_seed = 19780503u;
 677:/usr/include/c++/7/bits/random.h **** 
 678:/usr/include/c++/7/bits/random.h ****       /**
 679:/usr/include/c++/7/bits/random.h ****        * @brief Constructs an explicitly seeded % subtract_with_carry_engine
 680:/usr/include/c++/7/bits/random.h ****        *        random number generator.
 681:/usr/include/c++/7/bits/random.h ****        */
 682:/usr/include/c++/7/bits/random.h ****       explicit
 683:/usr/include/c++/7/bits/random.h ****       subtract_with_carry_engine(result_type __sd = default_seed)
 684:/usr/include/c++/7/bits/random.h ****       { seed(__sd); }
 685:/usr/include/c++/7/bits/random.h **** 
 686:/usr/include/c++/7/bits/random.h ****       /**
 687:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a %subtract_with_carry_engine random number engine
 688:/usr/include/c++/7/bits/random.h ****        *        seeded from the seed sequence @p __q.
 689:/usr/include/c++/7/bits/random.h ****        *
 690:/usr/include/c++/7/bits/random.h ****        * @param __q the seed sequence.
 691:/usr/include/c++/7/bits/random.h ****        */
 692:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
 693:/usr/include/c++/7/bits/random.h ****         std::enable_if<!std::is_same<_Sseq, subtract_with_carry_engine>::value>
 694:/usr/include/c++/7/bits/random.h **** 	       ::type>
 695:/usr/include/c++/7/bits/random.h ****         explicit
 696:/usr/include/c++/7/bits/random.h ****         subtract_with_carry_engine(_Sseq& __q)
 697:/usr/include/c++/7/bits/random.h ****         { seed(__q); }
 698:/usr/include/c++/7/bits/random.h **** 
 699:/usr/include/c++/7/bits/random.h ****       /**
 700:/usr/include/c++/7/bits/random.h ****        * @brief Seeds the initial state @f$x_0@f$ of the random number
 701:/usr/include/c++/7/bits/random.h ****        *        generator.
 702:/usr/include/c++/7/bits/random.h ****        *
 703:/usr/include/c++/7/bits/random.h ****        * N1688[4.19] modifies this as follows.  If @p __value == 0,
 704:/usr/include/c++/7/bits/random.h ****        * sets value to 19780503.  In any case, with a linear
 705:/usr/include/c++/7/bits/random.h ****        * congruential generator lcg(i) having parameters @f$ m_{lcg} =
 706:/usr/include/c++/7/bits/random.h ****        * 2147483563, a_{lcg} = 40014, c_{lcg} = 0, and lcg(0) = value
 707:/usr/include/c++/7/bits/random.h ****        * @f$, sets @f$ x_{-r} \dots x_{-1} @f$ to @f$ lcg(1) \bmod m
 708:/usr/include/c++/7/bits/random.h ****        * \dots lcg(r) \bmod m @f$ respectively.  If @f$ x_{-1} = 0 @f$
 709:/usr/include/c++/7/bits/random.h ****        * set carry to 1, otherwise sets carry to 0.
 710:/usr/include/c++/7/bits/random.h ****        */
 711:/usr/include/c++/7/bits/random.h ****       void
 712:/usr/include/c++/7/bits/random.h ****       seed(result_type __sd = default_seed);
 713:/usr/include/c++/7/bits/random.h **** 
 714:/usr/include/c++/7/bits/random.h ****       /**
 715:/usr/include/c++/7/bits/random.h ****        * @brief Seeds the initial state @f$x_0@f$ of the
 716:/usr/include/c++/7/bits/random.h ****        * % subtract_with_carry_engine random number generator.
 717:/usr/include/c++/7/bits/random.h ****        */
 718:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
 719:/usr/include/c++/7/bits/random.h **** 	typename std::enable_if<std::is_class<_Sseq>::value>::type
 720:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q);
 721:/usr/include/c++/7/bits/random.h **** 
 722:/usr/include/c++/7/bits/random.h ****       /**
 723:/usr/include/c++/7/bits/random.h ****        * @brief Gets the inclusive minimum value of the range of random
 724:/usr/include/c++/7/bits/random.h ****        * integers returned by this generator.
 725:/usr/include/c++/7/bits/random.h ****        */
 726:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 727:/usr/include/c++/7/bits/random.h ****       min()
 728:/usr/include/c++/7/bits/random.h ****       { return 0; }
 729:/usr/include/c++/7/bits/random.h **** 
 730:/usr/include/c++/7/bits/random.h ****       /**
 731:/usr/include/c++/7/bits/random.h ****        * @brief Gets the inclusive maximum value of the range of random
 732:/usr/include/c++/7/bits/random.h ****        * integers returned by this generator.
 733:/usr/include/c++/7/bits/random.h ****        */
 734:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 735:/usr/include/c++/7/bits/random.h ****       max()
 736:/usr/include/c++/7/bits/random.h ****       { return __detail::_Shift<_UIntType, __w>::__value - 1; }
 737:/usr/include/c++/7/bits/random.h **** 
 738:/usr/include/c++/7/bits/random.h ****       /**
 739:/usr/include/c++/7/bits/random.h ****        * @brief Discard a sequence of random numbers.
 740:/usr/include/c++/7/bits/random.h ****        */
 741:/usr/include/c++/7/bits/random.h ****       void
 742:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z)
 743:/usr/include/c++/7/bits/random.h ****       {
 744:/usr/include/c++/7/bits/random.h **** 	for (; __z != 0ULL; --__z)
 745:/usr/include/c++/7/bits/random.h **** 	  (*this)();
 746:/usr/include/c++/7/bits/random.h ****       }
 747:/usr/include/c++/7/bits/random.h **** 
 748:/usr/include/c++/7/bits/random.h ****       /**
 749:/usr/include/c++/7/bits/random.h ****        * @brief Gets the next random number in the sequence.
 750:/usr/include/c++/7/bits/random.h ****        */
 751:/usr/include/c++/7/bits/random.h ****       result_type
 752:/usr/include/c++/7/bits/random.h ****       operator()();
 753:/usr/include/c++/7/bits/random.h **** 
 754:/usr/include/c++/7/bits/random.h ****       /**
 755:/usr/include/c++/7/bits/random.h ****        * @brief Compares two % subtract_with_carry_engine random number
 756:/usr/include/c++/7/bits/random.h ****        *        generator objects of the same type for equality.
 757:/usr/include/c++/7/bits/random.h ****        *
 758:/usr/include/c++/7/bits/random.h ****        * @param __lhs A % subtract_with_carry_engine random number generator
 759:/usr/include/c++/7/bits/random.h ****        *              object.
 760:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another % subtract_with_carry_engine random number
 761:/usr/include/c++/7/bits/random.h ****        *              generator object.
 762:/usr/include/c++/7/bits/random.h ****        *
 763:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
 764:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
 765:/usr/include/c++/7/bits/random.h ****       */
 766:/usr/include/c++/7/bits/random.h ****       friend bool
 767:/usr/include/c++/7/bits/random.h ****       operator==(const subtract_with_carry_engine& __lhs,
 768:/usr/include/c++/7/bits/random.h **** 		 const subtract_with_carry_engine& __rhs)
 769:/usr/include/c++/7/bits/random.h ****       { return (std::equal(__lhs._M_x, __lhs._M_x + long_lag, __rhs._M_x)
 770:/usr/include/c++/7/bits/random.h **** 		&& __lhs._M_carry == __rhs._M_carry
 771:/usr/include/c++/7/bits/random.h **** 		&& __lhs._M_p == __rhs._M_p); }
 772:/usr/include/c++/7/bits/random.h **** 
 773:/usr/include/c++/7/bits/random.h ****       /**
 774:/usr/include/c++/7/bits/random.h ****        * @brief Inserts the current state of a % subtract_with_carry_engine
 775:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x into the output stream
 776:/usr/include/c++/7/bits/random.h ****        *        @p __os.
 777:/usr/include/c++/7/bits/random.h ****        *
 778:/usr/include/c++/7/bits/random.h ****        * @param __os An output stream.
 779:/usr/include/c++/7/bits/random.h ****        * @param __x  A % subtract_with_carry_engine random number generator
 780:/usr/include/c++/7/bits/random.h ****        *             engine.
 781:/usr/include/c++/7/bits/random.h ****        *
 782:/usr/include/c++/7/bits/random.h ****        * @returns The output stream with the state of @p __x inserted or in
 783:/usr/include/c++/7/bits/random.h ****        * an error state.
 784:/usr/include/c++/7/bits/random.h ****        */
 785:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1, size_t __w1, size_t __s1, size_t __r1,
 786:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
 787:/usr/include/c++/7/bits/random.h **** 	friend std::basic_ostream<_CharT, _Traits>&
 788:/usr/include/c++/7/bits/random.h **** 	operator<<(std::basic_ostream<_CharT, _Traits>& __os,
 789:/usr/include/c++/7/bits/random.h **** 		   const std::subtract_with_carry_engine<_UIntType1, __w1,
 790:/usr/include/c++/7/bits/random.h **** 		   __s1, __r1>& __x);
 791:/usr/include/c++/7/bits/random.h **** 
 792:/usr/include/c++/7/bits/random.h ****       /**
 793:/usr/include/c++/7/bits/random.h ****        * @brief Extracts the current state of a % subtract_with_carry_engine
 794:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x from the input stream
 795:/usr/include/c++/7/bits/random.h ****        *        @p __is.
 796:/usr/include/c++/7/bits/random.h ****        *
 797:/usr/include/c++/7/bits/random.h ****        * @param __is An input stream.
 798:/usr/include/c++/7/bits/random.h ****        * @param __x  A % subtract_with_carry_engine random number generator
 799:/usr/include/c++/7/bits/random.h ****        *             engine.
 800:/usr/include/c++/7/bits/random.h ****        *
 801:/usr/include/c++/7/bits/random.h ****        * @returns The input stream with the state of @p __x extracted or in
 802:/usr/include/c++/7/bits/random.h ****        * an error state.
 803:/usr/include/c++/7/bits/random.h ****        */
 804:/usr/include/c++/7/bits/random.h ****       template<typename _UIntType1, size_t __w1, size_t __s1, size_t __r1,
 805:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
 806:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
 807:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
 808:/usr/include/c++/7/bits/random.h **** 		   std::subtract_with_carry_engine<_UIntType1, __w1,
 809:/usr/include/c++/7/bits/random.h **** 		   __s1, __r1>& __x);
 810:/usr/include/c++/7/bits/random.h **** 
 811:/usr/include/c++/7/bits/random.h ****     private:
 812:/usr/include/c++/7/bits/random.h ****       /// The state of the generator.  This is a ring buffer.
 813:/usr/include/c++/7/bits/random.h ****       _UIntType  _M_x[long_lag];
 814:/usr/include/c++/7/bits/random.h ****       _UIntType  _M_carry;		///< The carry
 815:/usr/include/c++/7/bits/random.h ****       size_t     _M_p;			///< Current index of x(i - r).
 816:/usr/include/c++/7/bits/random.h ****     };
 817:/usr/include/c++/7/bits/random.h **** 
 818:/usr/include/c++/7/bits/random.h ****   /**
 819:/usr/include/c++/7/bits/random.h ****    * @brief Compares two % subtract_with_carry_engine random number
 820:/usr/include/c++/7/bits/random.h ****    *        generator objects of the same type for inequality.
 821:/usr/include/c++/7/bits/random.h ****    *
 822:/usr/include/c++/7/bits/random.h ****    * @param __lhs A % subtract_with_carry_engine random number generator
 823:/usr/include/c++/7/bits/random.h ****    *              object.
 824:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another % subtract_with_carry_engine random number
 825:/usr/include/c++/7/bits/random.h ****    *              generator object.
 826:/usr/include/c++/7/bits/random.h ****    *
 827:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
 828:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
 829:/usr/include/c++/7/bits/random.h ****    */
 830:/usr/include/c++/7/bits/random.h ****   template<typename _UIntType, size_t __w, size_t __s, size_t __r>
 831:/usr/include/c++/7/bits/random.h ****     inline bool
 832:/usr/include/c++/7/bits/random.h ****     operator!=(const std::subtract_with_carry_engine<_UIntType, __w,
 833:/usr/include/c++/7/bits/random.h **** 	       __s, __r>& __lhs,
 834:/usr/include/c++/7/bits/random.h **** 	       const std::subtract_with_carry_engine<_UIntType, __w,
 835:/usr/include/c++/7/bits/random.h **** 	       __s, __r>& __rhs)
 836:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
 837:/usr/include/c++/7/bits/random.h **** 
 838:/usr/include/c++/7/bits/random.h **** 
 839:/usr/include/c++/7/bits/random.h ****   /**
 840:/usr/include/c++/7/bits/random.h ****    * Produces random numbers from some base engine by discarding blocks of
 841:/usr/include/c++/7/bits/random.h ****    * data.
 842:/usr/include/c++/7/bits/random.h ****    *
 843:/usr/include/c++/7/bits/random.h ****    * 0 <= @p __r <= @p __p
 844:/usr/include/c++/7/bits/random.h ****    */
 845:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __p, size_t __r>
 846:/usr/include/c++/7/bits/random.h ****     class discard_block_engine
 847:/usr/include/c++/7/bits/random.h ****     {
 848:/usr/include/c++/7/bits/random.h ****       static_assert(1 <= __r && __r <= __p,
 849:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __r out of bounds");
 850:/usr/include/c++/7/bits/random.h **** 
 851:/usr/include/c++/7/bits/random.h ****     public:
 852:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
 853:/usr/include/c++/7/bits/random.h ****       typedef typename _RandomNumberEngine::result_type result_type;
 854:/usr/include/c++/7/bits/random.h **** 
 855:/usr/include/c++/7/bits/random.h ****       // parameter values
 856:/usr/include/c++/7/bits/random.h ****       static constexpr size_t block_size = __p;
 857:/usr/include/c++/7/bits/random.h ****       static constexpr size_t used_block = __r;
 858:/usr/include/c++/7/bits/random.h **** 
 859:/usr/include/c++/7/bits/random.h ****       /**
 860:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a default %discard_block_engine engine.
 861:/usr/include/c++/7/bits/random.h ****        *
 862:/usr/include/c++/7/bits/random.h ****        * The underlying engine is default constructed as well.
 863:/usr/include/c++/7/bits/random.h ****        */
 864:/usr/include/c++/7/bits/random.h ****       discard_block_engine()
 865:/usr/include/c++/7/bits/random.h ****       : _M_b(), _M_n(0) { }
 866:/usr/include/c++/7/bits/random.h **** 
 867:/usr/include/c++/7/bits/random.h ****       /**
 868:/usr/include/c++/7/bits/random.h ****        * @brief Copy constructs a %discard_block_engine engine.
 869:/usr/include/c++/7/bits/random.h ****        *
 870:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
 871:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
 872:/usr/include/c++/7/bits/random.h ****        */
 873:/usr/include/c++/7/bits/random.h ****       explicit
 874:/usr/include/c++/7/bits/random.h ****       discard_block_engine(const _RandomNumberEngine& __rng)
 875:/usr/include/c++/7/bits/random.h ****       : _M_b(__rng), _M_n(0) { }
 876:/usr/include/c++/7/bits/random.h **** 
 877:/usr/include/c++/7/bits/random.h ****       /**
 878:/usr/include/c++/7/bits/random.h ****        * @brief Move constructs a %discard_block_engine engine.
 879:/usr/include/c++/7/bits/random.h ****        *
 880:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
 881:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
 882:/usr/include/c++/7/bits/random.h ****        */
 883:/usr/include/c++/7/bits/random.h ****       explicit
 884:/usr/include/c++/7/bits/random.h ****       discard_block_engine(_RandomNumberEngine&& __rng)
 885:/usr/include/c++/7/bits/random.h ****       : _M_b(std::move(__rng)), _M_n(0) { }
 886:/usr/include/c++/7/bits/random.h **** 
 887:/usr/include/c++/7/bits/random.h ****       /**
 888:/usr/include/c++/7/bits/random.h ****        * @brief Seed constructs a %discard_block_engine engine.
 889:/usr/include/c++/7/bits/random.h ****        *
 890:/usr/include/c++/7/bits/random.h ****        * Constructs the underlying generator engine seeded with @p __s.
 891:/usr/include/c++/7/bits/random.h ****        * @param __s A seed value for the base class engine.
 892:/usr/include/c++/7/bits/random.h ****        */
 893:/usr/include/c++/7/bits/random.h ****       explicit
 894:/usr/include/c++/7/bits/random.h ****       discard_block_engine(result_type __s)
 895:/usr/include/c++/7/bits/random.h ****       : _M_b(__s), _M_n(0) { }
 896:/usr/include/c++/7/bits/random.h **** 
 897:/usr/include/c++/7/bits/random.h ****       /**
 898:/usr/include/c++/7/bits/random.h ****        * @brief Generator construct a %discard_block_engine engine.
 899:/usr/include/c++/7/bits/random.h ****        *
 900:/usr/include/c++/7/bits/random.h ****        * @param __q A seed sequence.
 901:/usr/include/c++/7/bits/random.h ****        */
 902:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
 903:/usr/include/c++/7/bits/random.h **** 	std::enable_if<!std::is_same<_Sseq, discard_block_engine>::value
 904:/usr/include/c++/7/bits/random.h **** 		       && !std::is_same<_Sseq, _RandomNumberEngine>::value>
 905:/usr/include/c++/7/bits/random.h **** 	       ::type>
 906:/usr/include/c++/7/bits/random.h ****         explicit
 907:/usr/include/c++/7/bits/random.h ****         discard_block_engine(_Sseq& __q)
 908:/usr/include/c++/7/bits/random.h **** 	: _M_b(__q), _M_n(0)
 909:/usr/include/c++/7/bits/random.h ****         { }
 910:/usr/include/c++/7/bits/random.h **** 
 911:/usr/include/c++/7/bits/random.h ****       /**
 912:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %discard_block_engine object with the default
 913:/usr/include/c++/7/bits/random.h ****        *        seed for the underlying base class generator engine.
 914:/usr/include/c++/7/bits/random.h ****        */
 915:/usr/include/c++/7/bits/random.h ****       void
 916:/usr/include/c++/7/bits/random.h ****       seed()
 917:/usr/include/c++/7/bits/random.h ****       {
 918:/usr/include/c++/7/bits/random.h **** 	_M_b.seed();
 919:/usr/include/c++/7/bits/random.h **** 	_M_n = 0;
 920:/usr/include/c++/7/bits/random.h ****       }
 921:/usr/include/c++/7/bits/random.h **** 
 922:/usr/include/c++/7/bits/random.h ****       /**
 923:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %discard_block_engine object with the default
 924:/usr/include/c++/7/bits/random.h ****        *        seed for the underlying base class generator engine.
 925:/usr/include/c++/7/bits/random.h ****        */
 926:/usr/include/c++/7/bits/random.h ****       void
 927:/usr/include/c++/7/bits/random.h ****       seed(result_type __s)
 928:/usr/include/c++/7/bits/random.h ****       {
 929:/usr/include/c++/7/bits/random.h **** 	_M_b.seed(__s);
 930:/usr/include/c++/7/bits/random.h **** 	_M_n = 0;
 931:/usr/include/c++/7/bits/random.h ****       }
 932:/usr/include/c++/7/bits/random.h **** 
 933:/usr/include/c++/7/bits/random.h ****       /**
 934:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %discard_block_engine object with the given seed
 935:/usr/include/c++/7/bits/random.h ****        *        sequence.
 936:/usr/include/c++/7/bits/random.h ****        * @param __q A seed generator function.
 937:/usr/include/c++/7/bits/random.h ****        */
 938:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
 939:/usr/include/c++/7/bits/random.h ****         void
 940:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q)
 941:/usr/include/c++/7/bits/random.h ****         {
 942:/usr/include/c++/7/bits/random.h **** 	  _M_b.seed(__q);
 943:/usr/include/c++/7/bits/random.h **** 	  _M_n = 0;
 944:/usr/include/c++/7/bits/random.h **** 	}
 945:/usr/include/c++/7/bits/random.h **** 
 946:/usr/include/c++/7/bits/random.h ****       /**
 947:/usr/include/c++/7/bits/random.h ****        * @brief Gets a const reference to the underlying generator engine
 948:/usr/include/c++/7/bits/random.h ****        *        object.
 949:/usr/include/c++/7/bits/random.h ****        */
 950:/usr/include/c++/7/bits/random.h ****       const _RandomNumberEngine&
 951:/usr/include/c++/7/bits/random.h ****       base() const noexcept
 952:/usr/include/c++/7/bits/random.h ****       { return _M_b; }
 953:/usr/include/c++/7/bits/random.h **** 
 954:/usr/include/c++/7/bits/random.h ****       /**
 955:/usr/include/c++/7/bits/random.h ****        * @brief Gets the minimum value in the generated random number range.
 956:/usr/include/c++/7/bits/random.h ****        */
 957:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 958:/usr/include/c++/7/bits/random.h ****       min()
 959:/usr/include/c++/7/bits/random.h ****       { return _RandomNumberEngine::min(); }
 960:/usr/include/c++/7/bits/random.h **** 
 961:/usr/include/c++/7/bits/random.h ****       /**
 962:/usr/include/c++/7/bits/random.h ****        * @brief Gets the maximum value in the generated random number range.
 963:/usr/include/c++/7/bits/random.h ****        */
 964:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
 965:/usr/include/c++/7/bits/random.h ****       max()
 966:/usr/include/c++/7/bits/random.h ****       { return _RandomNumberEngine::max(); }
 967:/usr/include/c++/7/bits/random.h **** 
 968:/usr/include/c++/7/bits/random.h ****       /**
 969:/usr/include/c++/7/bits/random.h ****        * @brief Discard a sequence of random numbers.
 970:/usr/include/c++/7/bits/random.h ****        */
 971:/usr/include/c++/7/bits/random.h ****       void
 972:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z)
 973:/usr/include/c++/7/bits/random.h ****       {
 974:/usr/include/c++/7/bits/random.h **** 	for (; __z != 0ULL; --__z)
 975:/usr/include/c++/7/bits/random.h **** 	  (*this)();
 976:/usr/include/c++/7/bits/random.h ****       }
 977:/usr/include/c++/7/bits/random.h **** 
 978:/usr/include/c++/7/bits/random.h ****       /**
 979:/usr/include/c++/7/bits/random.h ****        * @brief Gets the next value in the generated random number sequence.
 980:/usr/include/c++/7/bits/random.h ****        */
 981:/usr/include/c++/7/bits/random.h ****       result_type
 982:/usr/include/c++/7/bits/random.h ****       operator()();
 983:/usr/include/c++/7/bits/random.h **** 
 984:/usr/include/c++/7/bits/random.h ****       /**
 985:/usr/include/c++/7/bits/random.h ****        * @brief Compares two %discard_block_engine random number generator
 986:/usr/include/c++/7/bits/random.h ****        *        objects of the same type for equality.
 987:/usr/include/c++/7/bits/random.h ****        *
 988:/usr/include/c++/7/bits/random.h ****        * @param __lhs A %discard_block_engine random number generator object.
 989:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another %discard_block_engine random number generator
 990:/usr/include/c++/7/bits/random.h ****        *              object.
 991:/usr/include/c++/7/bits/random.h ****        *
 992:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
 993:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
 994:/usr/include/c++/7/bits/random.h ****        */
 995:/usr/include/c++/7/bits/random.h ****       friend bool
 996:/usr/include/c++/7/bits/random.h ****       operator==(const discard_block_engine& __lhs,
 997:/usr/include/c++/7/bits/random.h **** 		 const discard_block_engine& __rhs)
 998:/usr/include/c++/7/bits/random.h ****       { return __lhs._M_b == __rhs._M_b && __lhs._M_n == __rhs._M_n; }
 999:/usr/include/c++/7/bits/random.h **** 
1000:/usr/include/c++/7/bits/random.h ****       /**
1001:/usr/include/c++/7/bits/random.h ****        * @brief Inserts the current state of a %discard_block_engine random
1002:/usr/include/c++/7/bits/random.h ****        *        number generator engine @p __x into the output stream
1003:/usr/include/c++/7/bits/random.h ****        *        @p __os.
1004:/usr/include/c++/7/bits/random.h ****        *
1005:/usr/include/c++/7/bits/random.h ****        * @param __os An output stream.
1006:/usr/include/c++/7/bits/random.h ****        * @param __x  A %discard_block_engine random number generator engine.
1007:/usr/include/c++/7/bits/random.h ****        *
1008:/usr/include/c++/7/bits/random.h ****        * @returns The output stream with the state of @p __x inserted or in
1009:/usr/include/c++/7/bits/random.h ****        * an error state.
1010:/usr/include/c++/7/bits/random.h ****        */
1011:/usr/include/c++/7/bits/random.h ****       template<typename _RandomNumberEngine1, size_t __p1, size_t __r1,
1012:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
1013:/usr/include/c++/7/bits/random.h **** 	friend std::basic_ostream<_CharT, _Traits>&
1014:/usr/include/c++/7/bits/random.h **** 	operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1015:/usr/include/c++/7/bits/random.h **** 		   const std::discard_block_engine<_RandomNumberEngine1,
1016:/usr/include/c++/7/bits/random.h **** 		   __p1, __r1>& __x);
1017:/usr/include/c++/7/bits/random.h **** 
1018:/usr/include/c++/7/bits/random.h ****       /**
1019:/usr/include/c++/7/bits/random.h ****        * @brief Extracts the current state of a % subtract_with_carry_engine
1020:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x from the input stream
1021:/usr/include/c++/7/bits/random.h ****        *        @p __is.
1022:/usr/include/c++/7/bits/random.h ****        *
1023:/usr/include/c++/7/bits/random.h ****        * @param __is An input stream.
1024:/usr/include/c++/7/bits/random.h ****        * @param __x  A %discard_block_engine random number generator engine.
1025:/usr/include/c++/7/bits/random.h ****        *
1026:/usr/include/c++/7/bits/random.h ****        * @returns The input stream with the state of @p __x extracted or in
1027:/usr/include/c++/7/bits/random.h ****        * an error state.
1028:/usr/include/c++/7/bits/random.h ****        */
1029:/usr/include/c++/7/bits/random.h ****       template<typename _RandomNumberEngine1, size_t __p1, size_t __r1,
1030:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
1031:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
1032:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
1033:/usr/include/c++/7/bits/random.h **** 		   std::discard_block_engine<_RandomNumberEngine1,
1034:/usr/include/c++/7/bits/random.h **** 		   __p1, __r1>& __x);
1035:/usr/include/c++/7/bits/random.h **** 
1036:/usr/include/c++/7/bits/random.h ****     private:
1037:/usr/include/c++/7/bits/random.h ****       _RandomNumberEngine _M_b;
1038:/usr/include/c++/7/bits/random.h ****       size_t _M_n;
1039:/usr/include/c++/7/bits/random.h ****     };
1040:/usr/include/c++/7/bits/random.h **** 
1041:/usr/include/c++/7/bits/random.h ****   /**
1042:/usr/include/c++/7/bits/random.h ****    * @brief Compares two %discard_block_engine random number generator
1043:/usr/include/c++/7/bits/random.h ****    *        objects of the same type for inequality.
1044:/usr/include/c++/7/bits/random.h ****    *
1045:/usr/include/c++/7/bits/random.h ****    * @param __lhs A %discard_block_engine random number generator object.
1046:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another %discard_block_engine random number generator
1047:/usr/include/c++/7/bits/random.h ****    *              object.
1048:/usr/include/c++/7/bits/random.h ****    *
1049:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
1050:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
1051:/usr/include/c++/7/bits/random.h ****    */
1052:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __p, size_t __r>
1053:/usr/include/c++/7/bits/random.h ****     inline bool
1054:/usr/include/c++/7/bits/random.h ****     operator!=(const std::discard_block_engine<_RandomNumberEngine, __p,
1055:/usr/include/c++/7/bits/random.h **** 	       __r>& __lhs,
1056:/usr/include/c++/7/bits/random.h **** 	       const std::discard_block_engine<_RandomNumberEngine, __p,
1057:/usr/include/c++/7/bits/random.h **** 	       __r>& __rhs)
1058:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
1059:/usr/include/c++/7/bits/random.h **** 
1060:/usr/include/c++/7/bits/random.h **** 
1061:/usr/include/c++/7/bits/random.h ****   /**
1062:/usr/include/c++/7/bits/random.h ****    * Produces random numbers by combining random numbers from some base
1063:/usr/include/c++/7/bits/random.h ****    * engine to produce random numbers with a specifies number of bits @p __w.
1064:/usr/include/c++/7/bits/random.h ****    */
1065:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __w, typename _UIntType>
1066:/usr/include/c++/7/bits/random.h ****     class independent_bits_engine
1067:/usr/include/c++/7/bits/random.h ****     {
1068:/usr/include/c++/7/bits/random.h ****       static_assert(std::is_unsigned<_UIntType>::value,
1069:/usr/include/c++/7/bits/random.h **** 		    "result_type must be an unsigned integral type");
1070:/usr/include/c++/7/bits/random.h ****       static_assert(0u < __w && __w <= std::numeric_limits<_UIntType>::digits,
1071:/usr/include/c++/7/bits/random.h **** 		    "template argument substituting __w out of bounds");
1072:/usr/include/c++/7/bits/random.h **** 
1073:/usr/include/c++/7/bits/random.h ****     public:
1074:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
1075:/usr/include/c++/7/bits/random.h ****       typedef _UIntType result_type;
1076:/usr/include/c++/7/bits/random.h **** 
1077:/usr/include/c++/7/bits/random.h ****       /**
1078:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a default %independent_bits_engine engine.
1079:/usr/include/c++/7/bits/random.h ****        *
1080:/usr/include/c++/7/bits/random.h ****        * The underlying engine is default constructed as well.
1081:/usr/include/c++/7/bits/random.h ****        */
1082:/usr/include/c++/7/bits/random.h ****       independent_bits_engine()
1083:/usr/include/c++/7/bits/random.h ****       : _M_b() { }
1084:/usr/include/c++/7/bits/random.h **** 
1085:/usr/include/c++/7/bits/random.h ****       /**
1086:/usr/include/c++/7/bits/random.h ****        * @brief Copy constructs a %independent_bits_engine engine.
1087:/usr/include/c++/7/bits/random.h ****        *
1088:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
1089:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
1090:/usr/include/c++/7/bits/random.h ****        */
1091:/usr/include/c++/7/bits/random.h ****       explicit
1092:/usr/include/c++/7/bits/random.h ****       independent_bits_engine(const _RandomNumberEngine& __rng)
1093:/usr/include/c++/7/bits/random.h ****       : _M_b(__rng) { }
1094:/usr/include/c++/7/bits/random.h **** 
1095:/usr/include/c++/7/bits/random.h ****       /**
1096:/usr/include/c++/7/bits/random.h ****        * @brief Move constructs a %independent_bits_engine engine.
1097:/usr/include/c++/7/bits/random.h ****        *
1098:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
1099:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
1100:/usr/include/c++/7/bits/random.h ****        */
1101:/usr/include/c++/7/bits/random.h ****       explicit
1102:/usr/include/c++/7/bits/random.h ****       independent_bits_engine(_RandomNumberEngine&& __rng)
1103:/usr/include/c++/7/bits/random.h ****       : _M_b(std::move(__rng)) { }
1104:/usr/include/c++/7/bits/random.h **** 
1105:/usr/include/c++/7/bits/random.h ****       /**
1106:/usr/include/c++/7/bits/random.h ****        * @brief Seed constructs a %independent_bits_engine engine.
1107:/usr/include/c++/7/bits/random.h ****        *
1108:/usr/include/c++/7/bits/random.h ****        * Constructs the underlying generator engine seeded with @p __s.
1109:/usr/include/c++/7/bits/random.h ****        * @param __s A seed value for the base class engine.
1110:/usr/include/c++/7/bits/random.h ****        */
1111:/usr/include/c++/7/bits/random.h ****       explicit
1112:/usr/include/c++/7/bits/random.h ****       independent_bits_engine(result_type __s)
1113:/usr/include/c++/7/bits/random.h ****       : _M_b(__s) { }
1114:/usr/include/c++/7/bits/random.h **** 
1115:/usr/include/c++/7/bits/random.h ****       /**
1116:/usr/include/c++/7/bits/random.h ****        * @brief Generator construct a %independent_bits_engine engine.
1117:/usr/include/c++/7/bits/random.h ****        *
1118:/usr/include/c++/7/bits/random.h ****        * @param __q A seed sequence.
1119:/usr/include/c++/7/bits/random.h ****        */
1120:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
1121:/usr/include/c++/7/bits/random.h **** 	std::enable_if<!std::is_same<_Sseq, independent_bits_engine>::value
1122:/usr/include/c++/7/bits/random.h **** 		       && !std::is_same<_Sseq, _RandomNumberEngine>::value>
1123:/usr/include/c++/7/bits/random.h ****                ::type>
1124:/usr/include/c++/7/bits/random.h ****         explicit
1125:/usr/include/c++/7/bits/random.h ****         independent_bits_engine(_Sseq& __q)
1126:/usr/include/c++/7/bits/random.h ****         : _M_b(__q)
1127:/usr/include/c++/7/bits/random.h ****         { }
1128:/usr/include/c++/7/bits/random.h **** 
1129:/usr/include/c++/7/bits/random.h ****       /**
1130:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %independent_bits_engine object with the default
1131:/usr/include/c++/7/bits/random.h ****        *        seed for the underlying base class generator engine.
1132:/usr/include/c++/7/bits/random.h ****        */
1133:/usr/include/c++/7/bits/random.h ****       void
1134:/usr/include/c++/7/bits/random.h ****       seed()
1135:/usr/include/c++/7/bits/random.h ****       { _M_b.seed(); }
1136:/usr/include/c++/7/bits/random.h **** 
1137:/usr/include/c++/7/bits/random.h ****       /**
1138:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %independent_bits_engine object with the default
1139:/usr/include/c++/7/bits/random.h ****        *        seed for the underlying base class generator engine.
1140:/usr/include/c++/7/bits/random.h ****        */
1141:/usr/include/c++/7/bits/random.h ****       void
1142:/usr/include/c++/7/bits/random.h ****       seed(result_type __s)
1143:/usr/include/c++/7/bits/random.h ****       { _M_b.seed(__s); }
1144:/usr/include/c++/7/bits/random.h **** 
1145:/usr/include/c++/7/bits/random.h ****       /**
1146:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %independent_bits_engine object with the given
1147:/usr/include/c++/7/bits/random.h ****        *        seed sequence.
1148:/usr/include/c++/7/bits/random.h ****        * @param __q A seed generator function.
1149:/usr/include/c++/7/bits/random.h ****        */
1150:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
1151:/usr/include/c++/7/bits/random.h ****         void
1152:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q)
1153:/usr/include/c++/7/bits/random.h ****         { _M_b.seed(__q); }
1154:/usr/include/c++/7/bits/random.h **** 
1155:/usr/include/c++/7/bits/random.h ****       /**
1156:/usr/include/c++/7/bits/random.h ****        * @brief Gets a const reference to the underlying generator engine
1157:/usr/include/c++/7/bits/random.h ****        *        object.
1158:/usr/include/c++/7/bits/random.h ****        */
1159:/usr/include/c++/7/bits/random.h ****       const _RandomNumberEngine&
1160:/usr/include/c++/7/bits/random.h ****       base() const noexcept
1161:/usr/include/c++/7/bits/random.h ****       { return _M_b; }
1162:/usr/include/c++/7/bits/random.h **** 
1163:/usr/include/c++/7/bits/random.h ****       /**
1164:/usr/include/c++/7/bits/random.h ****        * @brief Gets the minimum value in the generated random number range.
1165:/usr/include/c++/7/bits/random.h ****        */
1166:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
1167:/usr/include/c++/7/bits/random.h ****       min()
1168:/usr/include/c++/7/bits/random.h ****       { return 0U; }
1169:/usr/include/c++/7/bits/random.h **** 
1170:/usr/include/c++/7/bits/random.h ****       /**
1171:/usr/include/c++/7/bits/random.h ****        * @brief Gets the maximum value in the generated random number range.
1172:/usr/include/c++/7/bits/random.h ****        */
1173:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
1174:/usr/include/c++/7/bits/random.h ****       max()
1175:/usr/include/c++/7/bits/random.h ****       { return __detail::_Shift<_UIntType, __w>::__value - 1; }
1176:/usr/include/c++/7/bits/random.h **** 
1177:/usr/include/c++/7/bits/random.h ****       /**
1178:/usr/include/c++/7/bits/random.h ****        * @brief Discard a sequence of random numbers.
1179:/usr/include/c++/7/bits/random.h ****        */
1180:/usr/include/c++/7/bits/random.h ****       void
1181:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z)
1182:/usr/include/c++/7/bits/random.h ****       {
1183:/usr/include/c++/7/bits/random.h **** 	for (; __z != 0ULL; --__z)
1184:/usr/include/c++/7/bits/random.h **** 	  (*this)();
1185:/usr/include/c++/7/bits/random.h ****       }
1186:/usr/include/c++/7/bits/random.h **** 
1187:/usr/include/c++/7/bits/random.h ****       /**
1188:/usr/include/c++/7/bits/random.h ****        * @brief Gets the next value in the generated random number sequence.
1189:/usr/include/c++/7/bits/random.h ****        */
1190:/usr/include/c++/7/bits/random.h ****       result_type
1191:/usr/include/c++/7/bits/random.h ****       operator()();
1192:/usr/include/c++/7/bits/random.h **** 
1193:/usr/include/c++/7/bits/random.h ****       /**
1194:/usr/include/c++/7/bits/random.h ****        * @brief Compares two %independent_bits_engine random number generator
1195:/usr/include/c++/7/bits/random.h ****        * objects of the same type for equality.
1196:/usr/include/c++/7/bits/random.h ****        *
1197:/usr/include/c++/7/bits/random.h ****        * @param __lhs A %independent_bits_engine random number generator
1198:/usr/include/c++/7/bits/random.h ****        *              object.
1199:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another %independent_bits_engine random number generator
1200:/usr/include/c++/7/bits/random.h ****        *              object.
1201:/usr/include/c++/7/bits/random.h ****        *
1202:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
1203:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
1204:/usr/include/c++/7/bits/random.h ****        */
1205:/usr/include/c++/7/bits/random.h ****       friend bool
1206:/usr/include/c++/7/bits/random.h ****       operator==(const independent_bits_engine& __lhs,
1207:/usr/include/c++/7/bits/random.h **** 		 const independent_bits_engine& __rhs)
1208:/usr/include/c++/7/bits/random.h ****       { return __lhs._M_b == __rhs._M_b; }
1209:/usr/include/c++/7/bits/random.h **** 
1210:/usr/include/c++/7/bits/random.h ****       /**
1211:/usr/include/c++/7/bits/random.h ****        * @brief Extracts the current state of a % subtract_with_carry_engine
1212:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x from the input stream
1213:/usr/include/c++/7/bits/random.h ****        *        @p __is.
1214:/usr/include/c++/7/bits/random.h ****        *
1215:/usr/include/c++/7/bits/random.h ****        * @param __is An input stream.
1216:/usr/include/c++/7/bits/random.h ****        * @param __x  A %independent_bits_engine random number generator
1217:/usr/include/c++/7/bits/random.h ****        *             engine.
1218:/usr/include/c++/7/bits/random.h ****        *
1219:/usr/include/c++/7/bits/random.h ****        * @returns The input stream with the state of @p __x extracted or in
1220:/usr/include/c++/7/bits/random.h ****        *          an error state.
1221:/usr/include/c++/7/bits/random.h ****        */
1222:/usr/include/c++/7/bits/random.h ****       template<typename _CharT, typename _Traits>
1223:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
1224:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
1225:/usr/include/c++/7/bits/random.h **** 		   std::independent_bits_engine<_RandomNumberEngine,
1226:/usr/include/c++/7/bits/random.h **** 		   __w, _UIntType>& __x)
1227:/usr/include/c++/7/bits/random.h **** 	{
1228:/usr/include/c++/7/bits/random.h **** 	  __is >> __x._M_b;
1229:/usr/include/c++/7/bits/random.h **** 	  return __is;
1230:/usr/include/c++/7/bits/random.h **** 	}
1231:/usr/include/c++/7/bits/random.h **** 
1232:/usr/include/c++/7/bits/random.h ****     private:
1233:/usr/include/c++/7/bits/random.h ****       _RandomNumberEngine _M_b;
1234:/usr/include/c++/7/bits/random.h ****     };
1235:/usr/include/c++/7/bits/random.h **** 
1236:/usr/include/c++/7/bits/random.h ****   /**
1237:/usr/include/c++/7/bits/random.h ****    * @brief Compares two %independent_bits_engine random number generator
1238:/usr/include/c++/7/bits/random.h ****    * objects of the same type for inequality.
1239:/usr/include/c++/7/bits/random.h ****    *
1240:/usr/include/c++/7/bits/random.h ****    * @param __lhs A %independent_bits_engine random number generator
1241:/usr/include/c++/7/bits/random.h ****    *              object.
1242:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another %independent_bits_engine random number generator
1243:/usr/include/c++/7/bits/random.h ****    *              object.
1244:/usr/include/c++/7/bits/random.h ****    *
1245:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
1246:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
1247:/usr/include/c++/7/bits/random.h ****    */
1248:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __w, typename _UIntType>
1249:/usr/include/c++/7/bits/random.h ****     inline bool
1250:/usr/include/c++/7/bits/random.h ****     operator!=(const std::independent_bits_engine<_RandomNumberEngine, __w,
1251:/usr/include/c++/7/bits/random.h **** 	       _UIntType>& __lhs,
1252:/usr/include/c++/7/bits/random.h **** 	       const std::independent_bits_engine<_RandomNumberEngine, __w,
1253:/usr/include/c++/7/bits/random.h **** 	       _UIntType>& __rhs)
1254:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
1255:/usr/include/c++/7/bits/random.h **** 
1256:/usr/include/c++/7/bits/random.h ****   /**
1257:/usr/include/c++/7/bits/random.h ****    * @brief Inserts the current state of a %independent_bits_engine random
1258:/usr/include/c++/7/bits/random.h ****    *        number generator engine @p __x into the output stream @p __os.
1259:/usr/include/c++/7/bits/random.h ****    *
1260:/usr/include/c++/7/bits/random.h ****    * @param __os An output stream.
1261:/usr/include/c++/7/bits/random.h ****    * @param __x  A %independent_bits_engine random number generator engine.
1262:/usr/include/c++/7/bits/random.h ****    *
1263:/usr/include/c++/7/bits/random.h ****    * @returns The output stream with the state of @p __x inserted or in
1264:/usr/include/c++/7/bits/random.h ****    *          an error state.
1265:/usr/include/c++/7/bits/random.h ****    */
1266:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __w, typename _UIntType,
1267:/usr/include/c++/7/bits/random.h **** 	   typename _CharT, typename _Traits>
1268:/usr/include/c++/7/bits/random.h ****     std::basic_ostream<_CharT, _Traits>&
1269:/usr/include/c++/7/bits/random.h ****     operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1270:/usr/include/c++/7/bits/random.h **** 	       const std::independent_bits_engine<_RandomNumberEngine,
1271:/usr/include/c++/7/bits/random.h **** 	       __w, _UIntType>& __x)
1272:/usr/include/c++/7/bits/random.h ****     {
1273:/usr/include/c++/7/bits/random.h ****       __os << __x.base();
1274:/usr/include/c++/7/bits/random.h ****       return __os;
1275:/usr/include/c++/7/bits/random.h ****     }
1276:/usr/include/c++/7/bits/random.h **** 
1277:/usr/include/c++/7/bits/random.h **** 
1278:/usr/include/c++/7/bits/random.h ****   /**
1279:/usr/include/c++/7/bits/random.h ****    * @brief Produces random numbers by combining random numbers from some
1280:/usr/include/c++/7/bits/random.h ****    * base engine to produce random numbers with a specifies number of bits
1281:/usr/include/c++/7/bits/random.h ****    * @p __k.
1282:/usr/include/c++/7/bits/random.h ****    */
1283:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __k>
1284:/usr/include/c++/7/bits/random.h ****     class shuffle_order_engine
1285:/usr/include/c++/7/bits/random.h ****     {
1286:/usr/include/c++/7/bits/random.h ****       static_assert(1u <= __k, "template argument substituting "
1287:/usr/include/c++/7/bits/random.h **** 		    "__k out of bound");
1288:/usr/include/c++/7/bits/random.h **** 
1289:/usr/include/c++/7/bits/random.h ****     public:
1290:/usr/include/c++/7/bits/random.h ****       /** The type of the generated random value. */
1291:/usr/include/c++/7/bits/random.h ****       typedef typename _RandomNumberEngine::result_type result_type;
1292:/usr/include/c++/7/bits/random.h **** 
1293:/usr/include/c++/7/bits/random.h ****       static constexpr size_t table_size = __k;
1294:/usr/include/c++/7/bits/random.h **** 
1295:/usr/include/c++/7/bits/random.h ****       /**
1296:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a default %shuffle_order_engine engine.
1297:/usr/include/c++/7/bits/random.h ****        *
1298:/usr/include/c++/7/bits/random.h ****        * The underlying engine is default constructed as well.
1299:/usr/include/c++/7/bits/random.h ****        */
1300:/usr/include/c++/7/bits/random.h ****       shuffle_order_engine()
1301:/usr/include/c++/7/bits/random.h ****       : _M_b()
1302:/usr/include/c++/7/bits/random.h ****       { _M_initialize(); }
1303:/usr/include/c++/7/bits/random.h **** 
1304:/usr/include/c++/7/bits/random.h ****       /**
1305:/usr/include/c++/7/bits/random.h ****        * @brief Copy constructs a %shuffle_order_engine engine.
1306:/usr/include/c++/7/bits/random.h ****        *
1307:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
1308:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
1309:/usr/include/c++/7/bits/random.h ****        */
1310:/usr/include/c++/7/bits/random.h ****       explicit
1311:/usr/include/c++/7/bits/random.h ****       shuffle_order_engine(const _RandomNumberEngine& __rng)
1312:/usr/include/c++/7/bits/random.h ****       : _M_b(__rng)
1313:/usr/include/c++/7/bits/random.h ****       { _M_initialize(); }
1314:/usr/include/c++/7/bits/random.h **** 
1315:/usr/include/c++/7/bits/random.h ****       /**
1316:/usr/include/c++/7/bits/random.h ****        * @brief Move constructs a %shuffle_order_engine engine.
1317:/usr/include/c++/7/bits/random.h ****        *
1318:/usr/include/c++/7/bits/random.h ****        * Copies an existing base class random number generator.
1319:/usr/include/c++/7/bits/random.h ****        * @param __rng An existing (base class) engine object.
1320:/usr/include/c++/7/bits/random.h ****        */
1321:/usr/include/c++/7/bits/random.h ****       explicit
1322:/usr/include/c++/7/bits/random.h ****       shuffle_order_engine(_RandomNumberEngine&& __rng)
1323:/usr/include/c++/7/bits/random.h ****       : _M_b(std::move(__rng))
1324:/usr/include/c++/7/bits/random.h ****       { _M_initialize(); }
1325:/usr/include/c++/7/bits/random.h **** 
1326:/usr/include/c++/7/bits/random.h ****       /**
1327:/usr/include/c++/7/bits/random.h ****        * @brief Seed constructs a %shuffle_order_engine engine.
1328:/usr/include/c++/7/bits/random.h ****        *
1329:/usr/include/c++/7/bits/random.h ****        * Constructs the underlying generator engine seeded with @p __s.
1330:/usr/include/c++/7/bits/random.h ****        * @param __s A seed value for the base class engine.
1331:/usr/include/c++/7/bits/random.h ****        */
1332:/usr/include/c++/7/bits/random.h ****       explicit
1333:/usr/include/c++/7/bits/random.h ****       shuffle_order_engine(result_type __s)
1334:/usr/include/c++/7/bits/random.h ****       : _M_b(__s)
1335:/usr/include/c++/7/bits/random.h ****       { _M_initialize(); }
1336:/usr/include/c++/7/bits/random.h **** 
1337:/usr/include/c++/7/bits/random.h ****       /**
1338:/usr/include/c++/7/bits/random.h ****        * @brief Generator construct a %shuffle_order_engine engine.
1339:/usr/include/c++/7/bits/random.h ****        *
1340:/usr/include/c++/7/bits/random.h ****        * @param __q A seed sequence.
1341:/usr/include/c++/7/bits/random.h ****        */
1342:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq, typename = typename
1343:/usr/include/c++/7/bits/random.h **** 	std::enable_if<!std::is_same<_Sseq, shuffle_order_engine>::value
1344:/usr/include/c++/7/bits/random.h **** 		       && !std::is_same<_Sseq, _RandomNumberEngine>::value>
1345:/usr/include/c++/7/bits/random.h **** 	       ::type>
1346:/usr/include/c++/7/bits/random.h ****         explicit
1347:/usr/include/c++/7/bits/random.h ****         shuffle_order_engine(_Sseq& __q)
1348:/usr/include/c++/7/bits/random.h ****         : _M_b(__q)
1349:/usr/include/c++/7/bits/random.h ****         { _M_initialize(); }
1350:/usr/include/c++/7/bits/random.h **** 
1351:/usr/include/c++/7/bits/random.h ****       /**
1352:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %shuffle_order_engine object with the default seed
1353:/usr/include/c++/7/bits/random.h ****                 for the underlying base class generator engine.
1354:/usr/include/c++/7/bits/random.h ****        */
1355:/usr/include/c++/7/bits/random.h ****       void
1356:/usr/include/c++/7/bits/random.h ****       seed()
1357:/usr/include/c++/7/bits/random.h ****       {
1358:/usr/include/c++/7/bits/random.h **** 	_M_b.seed();
1359:/usr/include/c++/7/bits/random.h **** 	_M_initialize();
1360:/usr/include/c++/7/bits/random.h ****       }
1361:/usr/include/c++/7/bits/random.h **** 
1362:/usr/include/c++/7/bits/random.h ****       /**
1363:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %shuffle_order_engine object with the default seed
1364:/usr/include/c++/7/bits/random.h ****        *        for the underlying base class generator engine.
1365:/usr/include/c++/7/bits/random.h ****        */
1366:/usr/include/c++/7/bits/random.h ****       void
1367:/usr/include/c++/7/bits/random.h ****       seed(result_type __s)
1368:/usr/include/c++/7/bits/random.h ****       {
1369:/usr/include/c++/7/bits/random.h **** 	_M_b.seed(__s);
1370:/usr/include/c++/7/bits/random.h **** 	_M_initialize();
1371:/usr/include/c++/7/bits/random.h ****       }
1372:/usr/include/c++/7/bits/random.h **** 
1373:/usr/include/c++/7/bits/random.h ****       /**
1374:/usr/include/c++/7/bits/random.h ****        * @brief Reseeds the %shuffle_order_engine object with the given seed
1375:/usr/include/c++/7/bits/random.h ****        *        sequence.
1376:/usr/include/c++/7/bits/random.h ****        * @param __q A seed generator function.
1377:/usr/include/c++/7/bits/random.h ****        */
1378:/usr/include/c++/7/bits/random.h ****       template<typename _Sseq>
1379:/usr/include/c++/7/bits/random.h ****         void
1380:/usr/include/c++/7/bits/random.h ****         seed(_Sseq& __q)
1381:/usr/include/c++/7/bits/random.h ****         {
1382:/usr/include/c++/7/bits/random.h **** 	  _M_b.seed(__q);
1383:/usr/include/c++/7/bits/random.h **** 	  _M_initialize();
1384:/usr/include/c++/7/bits/random.h **** 	}
1385:/usr/include/c++/7/bits/random.h **** 
1386:/usr/include/c++/7/bits/random.h ****       /**
1387:/usr/include/c++/7/bits/random.h ****        * Gets a const reference to the underlying generator engine object.
1388:/usr/include/c++/7/bits/random.h ****        */
1389:/usr/include/c++/7/bits/random.h ****       const _RandomNumberEngine&
1390:/usr/include/c++/7/bits/random.h ****       base() const noexcept
1391:/usr/include/c++/7/bits/random.h ****       { return _M_b; }
1392:/usr/include/c++/7/bits/random.h **** 
1393:/usr/include/c++/7/bits/random.h ****       /**
1394:/usr/include/c++/7/bits/random.h ****        * Gets the minimum value in the generated random number range.
1395:/usr/include/c++/7/bits/random.h ****        */
1396:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
1397:/usr/include/c++/7/bits/random.h ****       min()
1398:/usr/include/c++/7/bits/random.h ****       { return _RandomNumberEngine::min(); }
1399:/usr/include/c++/7/bits/random.h **** 
1400:/usr/include/c++/7/bits/random.h ****       /**
1401:/usr/include/c++/7/bits/random.h ****        * Gets the maximum value in the generated random number range.
1402:/usr/include/c++/7/bits/random.h ****        */
1403:/usr/include/c++/7/bits/random.h ****       static constexpr result_type
1404:/usr/include/c++/7/bits/random.h ****       max()
1405:/usr/include/c++/7/bits/random.h ****       { return _RandomNumberEngine::max(); }
1406:/usr/include/c++/7/bits/random.h **** 
1407:/usr/include/c++/7/bits/random.h ****       /**
1408:/usr/include/c++/7/bits/random.h ****        * Discard a sequence of random numbers.
1409:/usr/include/c++/7/bits/random.h ****        */
1410:/usr/include/c++/7/bits/random.h ****       void
1411:/usr/include/c++/7/bits/random.h ****       discard(unsigned long long __z)
1412:/usr/include/c++/7/bits/random.h ****       {
1413:/usr/include/c++/7/bits/random.h **** 	for (; __z != 0ULL; --__z)
1414:/usr/include/c++/7/bits/random.h **** 	  (*this)();
1415:/usr/include/c++/7/bits/random.h ****       }
1416:/usr/include/c++/7/bits/random.h **** 
1417:/usr/include/c++/7/bits/random.h ****       /**
1418:/usr/include/c++/7/bits/random.h ****        * Gets the next value in the generated random number sequence.
1419:/usr/include/c++/7/bits/random.h ****        */
1420:/usr/include/c++/7/bits/random.h ****       result_type
1421:/usr/include/c++/7/bits/random.h ****       operator()();
1422:/usr/include/c++/7/bits/random.h **** 
1423:/usr/include/c++/7/bits/random.h ****       /**
1424:/usr/include/c++/7/bits/random.h ****        * Compares two %shuffle_order_engine random number generator objects
1425:/usr/include/c++/7/bits/random.h ****        * of the same type for equality.
1426:/usr/include/c++/7/bits/random.h ****        *
1427:/usr/include/c++/7/bits/random.h ****        * @param __lhs A %shuffle_order_engine random number generator object.
1428:/usr/include/c++/7/bits/random.h ****        * @param __rhs Another %shuffle_order_engine random number generator
1429:/usr/include/c++/7/bits/random.h ****        *              object.
1430:/usr/include/c++/7/bits/random.h ****        *
1431:/usr/include/c++/7/bits/random.h ****        * @returns true if the infinite sequences of generated values
1432:/usr/include/c++/7/bits/random.h ****        *          would be equal, false otherwise.
1433:/usr/include/c++/7/bits/random.h ****       */
1434:/usr/include/c++/7/bits/random.h ****       friend bool
1435:/usr/include/c++/7/bits/random.h ****       operator==(const shuffle_order_engine& __lhs,
1436:/usr/include/c++/7/bits/random.h **** 		 const shuffle_order_engine& __rhs)
1437:/usr/include/c++/7/bits/random.h ****       { return (__lhs._M_b == __rhs._M_b
1438:/usr/include/c++/7/bits/random.h **** 		&& std::equal(__lhs._M_v, __lhs._M_v + __k, __rhs._M_v)
1439:/usr/include/c++/7/bits/random.h **** 		&& __lhs._M_y == __rhs._M_y); }
1440:/usr/include/c++/7/bits/random.h **** 
1441:/usr/include/c++/7/bits/random.h ****       /**
1442:/usr/include/c++/7/bits/random.h ****        * @brief Inserts the current state of a %shuffle_order_engine random
1443:/usr/include/c++/7/bits/random.h ****        *        number generator engine @p __x into the output stream
1444:/usr/include/c++/7/bits/random.h **** 	@p __os.
1445:/usr/include/c++/7/bits/random.h ****        *
1446:/usr/include/c++/7/bits/random.h ****        * @param __os An output stream.
1447:/usr/include/c++/7/bits/random.h ****        * @param __x  A %shuffle_order_engine random number generator engine.
1448:/usr/include/c++/7/bits/random.h ****        *
1449:/usr/include/c++/7/bits/random.h ****        * @returns The output stream with the state of @p __x inserted or in
1450:/usr/include/c++/7/bits/random.h ****        * an error state.
1451:/usr/include/c++/7/bits/random.h ****        */
1452:/usr/include/c++/7/bits/random.h ****       template<typename _RandomNumberEngine1, size_t __k1,
1453:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
1454:/usr/include/c++/7/bits/random.h **** 	friend std::basic_ostream<_CharT, _Traits>&
1455:/usr/include/c++/7/bits/random.h **** 	operator<<(std::basic_ostream<_CharT, _Traits>& __os,
1456:/usr/include/c++/7/bits/random.h **** 		   const std::shuffle_order_engine<_RandomNumberEngine1,
1457:/usr/include/c++/7/bits/random.h **** 		   __k1>& __x);
1458:/usr/include/c++/7/bits/random.h **** 
1459:/usr/include/c++/7/bits/random.h ****       /**
1460:/usr/include/c++/7/bits/random.h ****        * @brief Extracts the current state of a % subtract_with_carry_engine
1461:/usr/include/c++/7/bits/random.h ****        *        random number generator engine @p __x from the input stream
1462:/usr/include/c++/7/bits/random.h ****        *        @p __is.
1463:/usr/include/c++/7/bits/random.h ****        *
1464:/usr/include/c++/7/bits/random.h ****        * @param __is An input stream.
1465:/usr/include/c++/7/bits/random.h ****        * @param __x  A %shuffle_order_engine random number generator engine.
1466:/usr/include/c++/7/bits/random.h ****        *
1467:/usr/include/c++/7/bits/random.h ****        * @returns The input stream with the state of @p __x extracted or in
1468:/usr/include/c++/7/bits/random.h ****        * an error state.
1469:/usr/include/c++/7/bits/random.h ****        */
1470:/usr/include/c++/7/bits/random.h ****       template<typename _RandomNumberEngine1, size_t __k1,
1471:/usr/include/c++/7/bits/random.h **** 	       typename _CharT, typename _Traits>
1472:/usr/include/c++/7/bits/random.h **** 	friend std::basic_istream<_CharT, _Traits>&
1473:/usr/include/c++/7/bits/random.h **** 	operator>>(std::basic_istream<_CharT, _Traits>& __is,
1474:/usr/include/c++/7/bits/random.h **** 		   std::shuffle_order_engine<_RandomNumberEngine1, __k1>& __x);
1475:/usr/include/c++/7/bits/random.h **** 
1476:/usr/include/c++/7/bits/random.h ****     private:
1477:/usr/include/c++/7/bits/random.h ****       void _M_initialize()
1478:/usr/include/c++/7/bits/random.h ****       {
1479:/usr/include/c++/7/bits/random.h **** 	for (size_t __i = 0; __i < __k; ++__i)
1480:/usr/include/c++/7/bits/random.h **** 	  _M_v[__i] = _M_b();
1481:/usr/include/c++/7/bits/random.h **** 	_M_y = _M_b();
1482:/usr/include/c++/7/bits/random.h ****       }
1483:/usr/include/c++/7/bits/random.h **** 
1484:/usr/include/c++/7/bits/random.h ****       _RandomNumberEngine _M_b;
1485:/usr/include/c++/7/bits/random.h ****       result_type _M_v[__k];
1486:/usr/include/c++/7/bits/random.h ****       result_type _M_y;
1487:/usr/include/c++/7/bits/random.h ****     };
1488:/usr/include/c++/7/bits/random.h **** 
1489:/usr/include/c++/7/bits/random.h ****   /**
1490:/usr/include/c++/7/bits/random.h ****    * Compares two %shuffle_order_engine random number generator objects
1491:/usr/include/c++/7/bits/random.h ****    * of the same type for inequality.
1492:/usr/include/c++/7/bits/random.h ****    *
1493:/usr/include/c++/7/bits/random.h ****    * @param __lhs A %shuffle_order_engine random number generator object.
1494:/usr/include/c++/7/bits/random.h ****    * @param __rhs Another %shuffle_order_engine random number generator
1495:/usr/include/c++/7/bits/random.h ****    *              object.
1496:/usr/include/c++/7/bits/random.h ****    *
1497:/usr/include/c++/7/bits/random.h ****    * @returns true if the infinite sequences of generated values
1498:/usr/include/c++/7/bits/random.h ****    *          would be different, false otherwise.
1499:/usr/include/c++/7/bits/random.h ****    */
1500:/usr/include/c++/7/bits/random.h ****   template<typename _RandomNumberEngine, size_t __k>
1501:/usr/include/c++/7/bits/random.h ****     inline bool
1502:/usr/include/c++/7/bits/random.h ****     operator!=(const std::shuffle_order_engine<_RandomNumberEngine,
1503:/usr/include/c++/7/bits/random.h **** 	       __k>& __lhs,
1504:/usr/include/c++/7/bits/random.h **** 	       const std::shuffle_order_engine<_RandomNumberEngine,
1505:/usr/include/c++/7/bits/random.h **** 	       __k>& __rhs)
1506:/usr/include/c++/7/bits/random.h ****     { return !(__lhs == __rhs); }
1507:/usr/include/c++/7/bits/random.h **** 
1508:/usr/include/c++/7/bits/random.h **** 
1509:/usr/include/c++/7/bits/random.h ****   /**
1510:/usr/include/c++/7/bits/random.h ****    * The classic Minimum Standard rand0 of Lewis, Goodman, and Miller.
1511:/usr/include/c++/7/bits/random.h ****    */
1512:/usr/include/c++/7/bits/random.h ****   typedef linear_congruential_engine<uint_fast32_t, 16807UL, 0UL, 2147483647UL>
1513:/usr/include/c++/7/bits/random.h ****   minstd_rand0;
1514:/usr/include/c++/7/bits/random.h **** 
1515:/usr/include/c++/7/bits/random.h ****   /**
1516:/usr/include/c++/7/bits/random.h ****    * An alternative LCR (Lehmer Generator function).
1517:/usr/include/c++/7/bits/random.h ****    */
1518:/usr/include/c++/7/bits/random.h ****   typedef linear_congruential_engine<uint_fast32_t, 48271UL, 0UL, 2147483647UL>
1519:/usr/include/c++/7/bits/random.h ****   minstd_rand;
1520:/usr/include/c++/7/bits/random.h **** 
1521:/usr/include/c++/7/bits/random.h ****   /**
1522:/usr/include/c++/7/bits/random.h ****    * The classic Mersenne Twister.
1523:/usr/include/c++/7/bits/random.h ****    *
1524:/usr/include/c++/7/bits/random.h ****    * Reference:
1525:/usr/include/c++/7/bits/random.h ****    * M. Matsumoto and T. Nishimura, Mersenne Twister: A 623-Dimensionally
1526:/usr/include/c++/7/bits/random.h ****    * Equidistributed Uniform Pseudo-Random Number Generator, ACM Transactions
1527:/usr/include/c++/7/bits/random.h ****    * on Modeling and Computer Simulation, Vol. 8, No. 1, January 1998, pp 3-30.
1528:/usr/include/c++/7/bits/random.h ****    */
1529:/usr/include/c++/7/bits/random.h ****   typedef mersenne_twister_engine<
1530:/usr/include/c++/7/bits/random.h ****     uint_fast32_t,
1531:/usr/include/c++/7/bits/random.h ****     32, 624, 397, 31,
1532:/usr/include/c++/7/bits/random.h ****     0x9908b0dfUL, 11,
1533:/usr/include/c++/7/bits/random.h ****     0xffffffffUL, 7,
1534:/usr/include/c++/7/bits/random.h ****     0x9d2c5680UL, 15,
1535:/usr/include/c++/7/bits/random.h ****     0xefc60000UL, 18, 1812433253UL> mt19937;
1536:/usr/include/c++/7/bits/random.h **** 
1537:/usr/include/c++/7/bits/random.h ****   /**
1538:/usr/include/c++/7/bits/random.h ****    * An alternative Mersenne Twister.
1539:/usr/include/c++/7/bits/random.h ****    */
1540:/usr/include/c++/7/bits/random.h ****   typedef mersenne_twister_engine<
1541:/usr/include/c++/7/bits/random.h ****     uint_fast64_t,
1542:/usr/include/c++/7/bits/random.h ****     64, 312, 156, 31,
1543:/usr/include/c++/7/bits/random.h ****     0xb5026f5aa96619e9ULL, 29,
1544:/usr/include/c++/7/bits/random.h ****     0x5555555555555555ULL, 17,
1545:/usr/include/c++/7/bits/random.h ****     0x71d67fffeda60000ULL, 37,
1546:/usr/include/c++/7/bits/random.h ****     0xfff7eee000000000ULL, 43,
1547:/usr/include/c++/7/bits/random.h ****     6364136223846793005ULL> mt19937_64;
1548:/usr/include/c++/7/bits/random.h **** 
1549:/usr/include/c++/7/bits/random.h ****   typedef subtract_with_carry_engine<uint_fast32_t, 24, 10, 24>
1550:/usr/include/c++/7/bits/random.h ****     ranlux24_base;
1551:/usr/include/c++/7/bits/random.h **** 
1552:/usr/include/c++/7/bits/random.h ****   typedef subtract_with_carry_engine<uint_fast64_t, 48, 5, 12>
1553:/usr/include/c++/7/bits/random.h ****     ranlux48_base;
1554:/usr/include/c++/7/bits/random.h **** 
1555:/usr/include/c++/7/bits/random.h ****   typedef discard_block_engine<ranlux24_base, 223, 23> ranlux24;
1556:/usr/include/c++/7/bits/random.h **** 
1557:/usr/include/c++/7/bits/random.h ****   typedef discard_block_engine<ranlux48_base, 389, 11> ranlux48;
1558:/usr/include/c++/7/bits/random.h **** 
1559:/usr/include/c++/7/bits/random.h ****   typedef shuffle_order_engine<minstd_rand0, 256> knuth_b;
1560:/usr/include/c++/7/bits/random.h **** 
1561:/usr/include/c++/7/bits/random.h ****   typedef minstd_rand0 default_random_engine;
1562:/usr/include/c++/7/bits/random.h **** 
1563:/usr/include/c++/7/bits/random.h ****   /**
1564:/usr/include/c++/7/bits/random.h ****    * A standard interface to a platform-specific non-deterministic
1565:/usr/include/c++/7/bits/random.h ****    * random number generator (if any are available).
1566:/usr/include/c++/7/bits/random.h ****    */
1567:/usr/include/c++/7/bits/random.h ****   class random_device
1568:/usr/include/c++/7/bits/random.h ****   {
1569:/usr/include/c++/7/bits/random.h ****   public:
1570:/usr/include/c++/7/bits/random.h ****     /** The type of the generated random value. */
1571:/usr/include/c++/7/bits/random.h ****     typedef unsigned int result_type;
1572:/usr/include/c++/7/bits/random.h **** 
1573:/usr/include/c++/7/bits/random.h ****     // constructors, destructors and member functions
1574:/usr/include/c++/7/bits/random.h **** 
1575:/usr/include/c++/7/bits/random.h **** #ifdef _GLIBCXX_USE_RANDOM_TR1
1576:/usr/include/c++/7/bits/random.h **** 
1577:/usr/include/c++/7/bits/random.h ****     explicit
1578:/usr/include/c++/7/bits/random.h ****     random_device(const std::string& __token = "default")
1579:/usr/include/c++/7/bits/random.h ****     {
1580:/usr/include/c++/7/bits/random.h ****       _M_init(__token);
 970              		.loc 7 1580 0
 971 0330 4989E5   		movq	%rsp, %r13
 972              	.LBE819:
 973              	.LBE818:
 974              	.LBE817:
 975              	.LBB824:
 976              	.LBB814:
 977              	.LBB785:
 978              	.LBB786:
 979              	.LBB787:
 980              	.LBB788:
 981              	.LBB789:
 982              	.LBB790:
 983              	.LBB791:
 984              	.LBB792:
 985              	.LBB793:
 986              	.LBB794:
 987              	.LBB795:
 988              		.file 8 "/usr/include/c++/7/bits/char_traits.h"
   1:/usr/include/c++/7/bits/char_traits.h **** // Character Traits for use by standard string and iostream -*- C++ -*-
   2:/usr/include/c++/7/bits/char_traits.h **** 
   3:/usr/include/c++/7/bits/char_traits.h **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/bits/char_traits.h **** //
   5:/usr/include/c++/7/bits/char_traits.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/bits/char_traits.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/bits/char_traits.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/bits/char_traits.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/bits/char_traits.h **** // any later version.
  10:/usr/include/c++/7/bits/char_traits.h **** 
  11:/usr/include/c++/7/bits/char_traits.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/bits/char_traits.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/bits/char_traits.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/bits/char_traits.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/bits/char_traits.h **** 
  16:/usr/include/c++/7/bits/char_traits.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/bits/char_traits.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/bits/char_traits.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/bits/char_traits.h **** 
  20:/usr/include/c++/7/bits/char_traits.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/bits/char_traits.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/bits/char_traits.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/bits/char_traits.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/bits/char_traits.h **** 
  25:/usr/include/c++/7/bits/char_traits.h **** /** @file bits/char_traits.h
  26:/usr/include/c++/7/bits/char_traits.h ****  *  This is an internal header file, included by other library headers.
  27:/usr/include/c++/7/bits/char_traits.h ****  *  Do not attempt to use it directly. @headername{string}
  28:/usr/include/c++/7/bits/char_traits.h ****  */
  29:/usr/include/c++/7/bits/char_traits.h **** 
  30:/usr/include/c++/7/bits/char_traits.h **** //
  31:/usr/include/c++/7/bits/char_traits.h **** // ISO C++ 14882: 21  Strings library
  32:/usr/include/c++/7/bits/char_traits.h **** //
  33:/usr/include/c++/7/bits/char_traits.h **** 
  34:/usr/include/c++/7/bits/char_traits.h **** #ifndef _CHAR_TRAITS_H
  35:/usr/include/c++/7/bits/char_traits.h **** #define _CHAR_TRAITS_H 1
  36:/usr/include/c++/7/bits/char_traits.h **** 
  37:/usr/include/c++/7/bits/char_traits.h **** #pragma GCC system_header
  38:/usr/include/c++/7/bits/char_traits.h **** 
  39:/usr/include/c++/7/bits/char_traits.h **** #include <bits/stl_algobase.h>  // std::copy, std::fill_n
  40:/usr/include/c++/7/bits/char_traits.h **** #include <bits/postypes.h>      // For streampos
  41:/usr/include/c++/7/bits/char_traits.h **** #include <cwchar>               // For WEOF, wmemmove, wmemset, etc.
  42:/usr/include/c++/7/bits/char_traits.h **** 
  43:/usr/include/c++/7/bits/char_traits.h **** #ifndef _GLIBCXX_ALWAYS_INLINE
  44:/usr/include/c++/7/bits/char_traits.h **** #define _GLIBCXX_ALWAYS_INLINE inline __attribute__((__always_inline__))
  45:/usr/include/c++/7/bits/char_traits.h **** #endif
  46:/usr/include/c++/7/bits/char_traits.h **** 
  47:/usr/include/c++/7/bits/char_traits.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
  48:/usr/include/c++/7/bits/char_traits.h **** {
  49:/usr/include/c++/7/bits/char_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  50:/usr/include/c++/7/bits/char_traits.h **** 
  51:/usr/include/c++/7/bits/char_traits.h ****   /**
  52:/usr/include/c++/7/bits/char_traits.h ****    *  @brief  Mapping from character type to associated types.
  53:/usr/include/c++/7/bits/char_traits.h ****    *
  54:/usr/include/c++/7/bits/char_traits.h ****    *  @note This is an implementation class for the generic version
  55:/usr/include/c++/7/bits/char_traits.h ****    *  of char_traits.  It defines int_type, off_type, pos_type, and
  56:/usr/include/c++/7/bits/char_traits.h ****    *  state_type.  By default these are unsigned long, streamoff,
  57:/usr/include/c++/7/bits/char_traits.h ****    *  streampos, and mbstate_t.  Users who need a different set of
  58:/usr/include/c++/7/bits/char_traits.h ****    *  types, but who don't need to change the definitions of any function
  59:/usr/include/c++/7/bits/char_traits.h ****    *  defined in char_traits, can specialize __gnu_cxx::_Char_types
  60:/usr/include/c++/7/bits/char_traits.h ****    *  while leaving __gnu_cxx::char_traits alone. */
  61:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
  62:/usr/include/c++/7/bits/char_traits.h ****     struct _Char_types
  63:/usr/include/c++/7/bits/char_traits.h ****     {
  64:/usr/include/c++/7/bits/char_traits.h ****       typedef unsigned long   int_type;
  65:/usr/include/c++/7/bits/char_traits.h ****       typedef std::streampos  pos_type;
  66:/usr/include/c++/7/bits/char_traits.h ****       typedef std::streamoff  off_type;
  67:/usr/include/c++/7/bits/char_traits.h ****       typedef std::mbstate_t  state_type;
  68:/usr/include/c++/7/bits/char_traits.h ****     };
  69:/usr/include/c++/7/bits/char_traits.h **** 
  70:/usr/include/c++/7/bits/char_traits.h **** 
  71:/usr/include/c++/7/bits/char_traits.h ****   /**
  72:/usr/include/c++/7/bits/char_traits.h ****    *  @brief  Base class used to implement std::char_traits.
  73:/usr/include/c++/7/bits/char_traits.h ****    *
  74:/usr/include/c++/7/bits/char_traits.h ****    *  @note For any given actual character type, this definition is
  75:/usr/include/c++/7/bits/char_traits.h ****    *  probably wrong.  (Most of the member functions are likely to be
  76:/usr/include/c++/7/bits/char_traits.h ****    *  right, but the int_type and state_type typedefs, and the eof()
  77:/usr/include/c++/7/bits/char_traits.h ****    *  member function, are likely to be wrong.)  The reason this class
  78:/usr/include/c++/7/bits/char_traits.h ****    *  exists is so users can specialize it.  Classes in namespace std
  79:/usr/include/c++/7/bits/char_traits.h ****    *  may not be specialized for fundamental types, but classes in
  80:/usr/include/c++/7/bits/char_traits.h ****    *  namespace __gnu_cxx may be.
  81:/usr/include/c++/7/bits/char_traits.h ****    *
  82:/usr/include/c++/7/bits/char_traits.h ****    *  See https://gcc.gnu.org/onlinedocs/libstdc++/manual/strings.html#strings.string.character_typ
  83:/usr/include/c++/7/bits/char_traits.h ****    *  for advice on how to make use of this class for @a unusual character
  84:/usr/include/c++/7/bits/char_traits.h ****    *  types. Also, check out include/ext/pod_char_traits.h.  
  85:/usr/include/c++/7/bits/char_traits.h ****    */
  86:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
  87:/usr/include/c++/7/bits/char_traits.h ****     struct char_traits
  88:/usr/include/c++/7/bits/char_traits.h ****     {
  89:/usr/include/c++/7/bits/char_traits.h ****       typedef _CharT                                    char_type;
  90:/usr/include/c++/7/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::int_type    int_type;
  91:/usr/include/c++/7/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::pos_type    pos_type;
  92:/usr/include/c++/7/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::off_type    off_type;
  93:/usr/include/c++/7/bits/char_traits.h ****       typedef typename _Char_types<_CharT>::state_type  state_type;
  94:/usr/include/c++/7/bits/char_traits.h **** 
  95:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX14_CONSTEXPR void
  96:/usr/include/c++/7/bits/char_traits.h ****       assign(char_type& __c1, const char_type& __c2)
  97:/usr/include/c++/7/bits/char_traits.h ****       { __c1 = __c2; }
  98:/usr/include/c++/7/bits/char_traits.h **** 
  99:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 100:/usr/include/c++/7/bits/char_traits.h ****       eq(const char_type& __c1, const char_type& __c2)
 101:/usr/include/c++/7/bits/char_traits.h ****       { return __c1 == __c2; }
 102:/usr/include/c++/7/bits/char_traits.h **** 
 103:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 104:/usr/include/c++/7/bits/char_traits.h ****       lt(const char_type& __c1, const char_type& __c2)
 105:/usr/include/c++/7/bits/char_traits.h ****       { return __c1 < __c2; }
 106:/usr/include/c++/7/bits/char_traits.h **** 
 107:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX14_CONSTEXPR int
 108:/usr/include/c++/7/bits/char_traits.h ****       compare(const char_type* __s1, const char_type* __s2, std::size_t __n);
 109:/usr/include/c++/7/bits/char_traits.h **** 
 110:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX14_CONSTEXPR std::size_t
 111:/usr/include/c++/7/bits/char_traits.h ****       length(const char_type* __s);
 112:/usr/include/c++/7/bits/char_traits.h **** 
 113:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX14_CONSTEXPR const char_type*
 114:/usr/include/c++/7/bits/char_traits.h ****       find(const char_type* __s, std::size_t __n, const char_type& __a);
 115:/usr/include/c++/7/bits/char_traits.h **** 
 116:/usr/include/c++/7/bits/char_traits.h ****       static char_type*
 117:/usr/include/c++/7/bits/char_traits.h ****       move(char_type* __s1, const char_type* __s2, std::size_t __n);
 118:/usr/include/c++/7/bits/char_traits.h **** 
 119:/usr/include/c++/7/bits/char_traits.h ****       static char_type*
 120:/usr/include/c++/7/bits/char_traits.h ****       copy(char_type* __s1, const char_type* __s2, std::size_t __n);
 121:/usr/include/c++/7/bits/char_traits.h **** 
 122:/usr/include/c++/7/bits/char_traits.h ****       static char_type*
 123:/usr/include/c++/7/bits/char_traits.h ****       assign(char_type* __s, std::size_t __n, char_type __a);
 124:/usr/include/c++/7/bits/char_traits.h **** 
 125:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR char_type
 126:/usr/include/c++/7/bits/char_traits.h ****       to_char_type(const int_type& __c)
 127:/usr/include/c++/7/bits/char_traits.h ****       { return static_cast<char_type>(__c); }
 128:/usr/include/c++/7/bits/char_traits.h **** 
 129:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 130:/usr/include/c++/7/bits/char_traits.h ****       to_int_type(const char_type& __c)
 131:/usr/include/c++/7/bits/char_traits.h ****       { return static_cast<int_type>(__c); }
 132:/usr/include/c++/7/bits/char_traits.h **** 
 133:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 134:/usr/include/c++/7/bits/char_traits.h ****       eq_int_type(const int_type& __c1, const int_type& __c2)
 135:/usr/include/c++/7/bits/char_traits.h ****       { return __c1 == __c2; }
 136:/usr/include/c++/7/bits/char_traits.h **** 
 137:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 138:/usr/include/c++/7/bits/char_traits.h ****       eof()
 139:/usr/include/c++/7/bits/char_traits.h ****       { return static_cast<int_type>(_GLIBCXX_STDIO_EOF); }
 140:/usr/include/c++/7/bits/char_traits.h **** 
 141:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR int_type
 142:/usr/include/c++/7/bits/char_traits.h ****       not_eof(const int_type& __c)
 143:/usr/include/c++/7/bits/char_traits.h ****       { return !eq_int_type(__c, eof()) ? __c : to_int_type(char_type()); }
 144:/usr/include/c++/7/bits/char_traits.h ****     };
 145:/usr/include/c++/7/bits/char_traits.h **** 
 146:/usr/include/c++/7/bits/char_traits.h **** #define __cpp_lib_constexpr_char_traits 201611
 147:/usr/include/c++/7/bits/char_traits.h **** 
 148:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 149:/usr/include/c++/7/bits/char_traits.h ****     _GLIBCXX14_CONSTEXPR int
 150:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 151:/usr/include/c++/7/bits/char_traits.h ****     compare(const char_type* __s1, const char_type* __s2, std::size_t __n)
 152:/usr/include/c++/7/bits/char_traits.h ****     {
 153:/usr/include/c++/7/bits/char_traits.h ****       for (std::size_t __i = 0; __i < __n; ++__i)
 154:/usr/include/c++/7/bits/char_traits.h **** 	if (lt(__s1[__i], __s2[__i]))
 155:/usr/include/c++/7/bits/char_traits.h **** 	  return -1;
 156:/usr/include/c++/7/bits/char_traits.h **** 	else if (lt(__s2[__i], __s1[__i]))
 157:/usr/include/c++/7/bits/char_traits.h **** 	  return 1;
 158:/usr/include/c++/7/bits/char_traits.h ****       return 0;
 159:/usr/include/c++/7/bits/char_traits.h ****     }
 160:/usr/include/c++/7/bits/char_traits.h **** 
 161:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 162:/usr/include/c++/7/bits/char_traits.h ****     _GLIBCXX14_CONSTEXPR std::size_t
 163:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 164:/usr/include/c++/7/bits/char_traits.h ****     length(const char_type* __p)
 165:/usr/include/c++/7/bits/char_traits.h ****     {
 166:/usr/include/c++/7/bits/char_traits.h ****       std::size_t __i = 0;
 167:/usr/include/c++/7/bits/char_traits.h ****       while (!eq(__p[__i], char_type()))
 168:/usr/include/c++/7/bits/char_traits.h ****         ++__i;
 169:/usr/include/c++/7/bits/char_traits.h ****       return __i;
 170:/usr/include/c++/7/bits/char_traits.h ****     }
 171:/usr/include/c++/7/bits/char_traits.h **** 
 172:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 173:/usr/include/c++/7/bits/char_traits.h ****     _GLIBCXX14_CONSTEXPR const typename char_traits<_CharT>::char_type*
 174:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 175:/usr/include/c++/7/bits/char_traits.h ****     find(const char_type* __s, std::size_t __n, const char_type& __a)
 176:/usr/include/c++/7/bits/char_traits.h ****     {
 177:/usr/include/c++/7/bits/char_traits.h ****       for (std::size_t __i = 0; __i < __n; ++__i)
 178:/usr/include/c++/7/bits/char_traits.h ****         if (eq(__s[__i], __a))
 179:/usr/include/c++/7/bits/char_traits.h ****           return __s + __i;
 180:/usr/include/c++/7/bits/char_traits.h ****       return 0;
 181:/usr/include/c++/7/bits/char_traits.h ****     }
 182:/usr/include/c++/7/bits/char_traits.h **** 
 183:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 184:/usr/include/c++/7/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 185:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 186:/usr/include/c++/7/bits/char_traits.h ****     move(char_type* __s1, const char_type* __s2, std::size_t __n)
 187:/usr/include/c++/7/bits/char_traits.h ****     {
 188:/usr/include/c++/7/bits/char_traits.h ****       return static_cast<_CharT*>(__builtin_memmove(__s1, __s2,
 189:/usr/include/c++/7/bits/char_traits.h **** 						    __n * sizeof(char_type)));
 190:/usr/include/c++/7/bits/char_traits.h ****     }
 191:/usr/include/c++/7/bits/char_traits.h **** 
 192:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 193:/usr/include/c++/7/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 194:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 195:/usr/include/c++/7/bits/char_traits.h ****     copy(char_type* __s1, const char_type* __s2, std::size_t __n)
 196:/usr/include/c++/7/bits/char_traits.h ****     {
 197:/usr/include/c++/7/bits/char_traits.h ****       // NB: Inline std::copy so no recursive dependencies.
 198:/usr/include/c++/7/bits/char_traits.h ****       std::copy(__s2, __s2 + __n, __s1);
 199:/usr/include/c++/7/bits/char_traits.h ****       return __s1;
 200:/usr/include/c++/7/bits/char_traits.h ****     }
 201:/usr/include/c++/7/bits/char_traits.h **** 
 202:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 203:/usr/include/c++/7/bits/char_traits.h ****     typename char_traits<_CharT>::char_type*
 204:/usr/include/c++/7/bits/char_traits.h ****     char_traits<_CharT>::
 205:/usr/include/c++/7/bits/char_traits.h ****     assign(char_type* __s, std::size_t __n, char_type __a)
 206:/usr/include/c++/7/bits/char_traits.h ****     {
 207:/usr/include/c++/7/bits/char_traits.h ****       // NB: Inline std::fill_n so no recursive dependencies.
 208:/usr/include/c++/7/bits/char_traits.h ****       std::fill_n(__s, __n, __a);
 209:/usr/include/c++/7/bits/char_traits.h ****       return __s;
 210:/usr/include/c++/7/bits/char_traits.h ****     }
 211:/usr/include/c++/7/bits/char_traits.h **** 
 212:/usr/include/c++/7/bits/char_traits.h **** _GLIBCXX_END_NAMESPACE_VERSION
 213:/usr/include/c++/7/bits/char_traits.h **** } // namespace
 214:/usr/include/c++/7/bits/char_traits.h **** 
 215:/usr/include/c++/7/bits/char_traits.h **** namespace std _GLIBCXX_VISIBILITY(default)
 216:/usr/include/c++/7/bits/char_traits.h **** {
 217:/usr/include/c++/7/bits/char_traits.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
 218:/usr/include/c++/7/bits/char_traits.h **** 
 219:/usr/include/c++/7/bits/char_traits.h **** #if __cplusplus > 201402
 220:/usr/include/c++/7/bits/char_traits.h ****   /**
 221:/usr/include/c++/7/bits/char_traits.h ****    *  @brief Determine whether the characters of a NULL-terminated
 222:/usr/include/c++/7/bits/char_traits.h ****    *  string are known at compile time.
 223:/usr/include/c++/7/bits/char_traits.h ****    *  @param  __s  The string.
 224:/usr/include/c++/7/bits/char_traits.h ****    *
 225:/usr/include/c++/7/bits/char_traits.h ****    *  Assumes that _CharT is a built-in character type.
 226:/usr/include/c++/7/bits/char_traits.h ****    */
 227:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 228:/usr/include/c++/7/bits/char_traits.h ****     static _GLIBCXX_ALWAYS_INLINE constexpr bool
 229:/usr/include/c++/7/bits/char_traits.h ****     __constant_string_p(const _CharT* __s)
 230:/usr/include/c++/7/bits/char_traits.h ****     {
 231:/usr/include/c++/7/bits/char_traits.h ****       while (__builtin_constant_p(*__s) && *__s)
 232:/usr/include/c++/7/bits/char_traits.h **** 	__s++;
 233:/usr/include/c++/7/bits/char_traits.h ****       return __builtin_constant_p(*__s);
 234:/usr/include/c++/7/bits/char_traits.h ****     }
 235:/usr/include/c++/7/bits/char_traits.h **** 
 236:/usr/include/c++/7/bits/char_traits.h ****   /**
 237:/usr/include/c++/7/bits/char_traits.h ****    *  @brief Determine whether the characters of a character array are
 238:/usr/include/c++/7/bits/char_traits.h ****    *  known at compile time.
 239:/usr/include/c++/7/bits/char_traits.h ****    *  @param  __a  The character array.
 240:/usr/include/c++/7/bits/char_traits.h ****    *  @param  __n  Number of characters.
 241:/usr/include/c++/7/bits/char_traits.h ****    *
 242:/usr/include/c++/7/bits/char_traits.h ****    *  Assumes that _CharT is a built-in character type.
 243:/usr/include/c++/7/bits/char_traits.h ****    */
 244:/usr/include/c++/7/bits/char_traits.h ****   template<typename _CharT>
 245:/usr/include/c++/7/bits/char_traits.h ****     static _GLIBCXX_ALWAYS_INLINE constexpr bool
 246:/usr/include/c++/7/bits/char_traits.h ****     __constant_char_array_p(const _CharT* __a, size_t __n)
 247:/usr/include/c++/7/bits/char_traits.h ****     {
 248:/usr/include/c++/7/bits/char_traits.h ****       size_t __i = 0;
 249:/usr/include/c++/7/bits/char_traits.h ****       while (__builtin_constant_p(__a[__i]) && __i < __n)
 250:/usr/include/c++/7/bits/char_traits.h **** 	__i++;
 251:/usr/include/c++/7/bits/char_traits.h ****       return __i == __n;
 252:/usr/include/c++/7/bits/char_traits.h ****     }
 253:/usr/include/c++/7/bits/char_traits.h **** #endif
 254:/usr/include/c++/7/bits/char_traits.h **** 
 255:/usr/include/c++/7/bits/char_traits.h ****   // 21.1
 256:/usr/include/c++/7/bits/char_traits.h ****   /**
 257:/usr/include/c++/7/bits/char_traits.h ****    *  @brief  Basis for explicit traits specializations.
 258:/usr/include/c++/7/bits/char_traits.h ****    *
 259:/usr/include/c++/7/bits/char_traits.h ****    *  @note  For any given actual character type, this definition is
 260:/usr/include/c++/7/bits/char_traits.h ****    *  probably wrong.  Since this is just a thin wrapper around
 261:/usr/include/c++/7/bits/char_traits.h ****    *  __gnu_cxx::char_traits, it is possible to achieve a more
 262:/usr/include/c++/7/bits/char_traits.h ****    *  appropriate definition by specializing __gnu_cxx::char_traits.
 263:/usr/include/c++/7/bits/char_traits.h ****    *
 264:/usr/include/c++/7/bits/char_traits.h ****    *  See https://gcc.gnu.org/onlinedocs/libstdc++/manual/strings.html#strings.string.character_typ
 265:/usr/include/c++/7/bits/char_traits.h ****    *  for advice on how to make use of this class for @a unusual character
 266:/usr/include/c++/7/bits/char_traits.h ****    *  types. Also, check out include/ext/pod_char_traits.h.
 267:/usr/include/c++/7/bits/char_traits.h ****   */
 268:/usr/include/c++/7/bits/char_traits.h ****   template<class _CharT>
 269:/usr/include/c++/7/bits/char_traits.h ****     struct char_traits : public __gnu_cxx::char_traits<_CharT>
 270:/usr/include/c++/7/bits/char_traits.h ****     { };
 271:/usr/include/c++/7/bits/char_traits.h **** 
 272:/usr/include/c++/7/bits/char_traits.h **** 
 273:/usr/include/c++/7/bits/char_traits.h ****   /// 21.1.3.1  char_traits specializations
 274:/usr/include/c++/7/bits/char_traits.h ****   template<>
 275:/usr/include/c++/7/bits/char_traits.h ****     struct char_traits<char>
 276:/usr/include/c++/7/bits/char_traits.h ****     {
 277:/usr/include/c++/7/bits/char_traits.h ****       typedef char              char_type;
 278:/usr/include/c++/7/bits/char_traits.h ****       typedef int               int_type;
 279:/usr/include/c++/7/bits/char_traits.h ****       typedef streampos         pos_type;
 280:/usr/include/c++/7/bits/char_traits.h ****       typedef streamoff         off_type;
 281:/usr/include/c++/7/bits/char_traits.h ****       typedef mbstate_t         state_type;
 282:/usr/include/c++/7/bits/char_traits.h **** 
 283:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX17_CONSTEXPR void
 284:/usr/include/c++/7/bits/char_traits.h ****       assign(char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 285:/usr/include/c++/7/bits/char_traits.h ****       { __c1 = __c2; }
 286:/usr/include/c++/7/bits/char_traits.h **** 
 287:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 288:/usr/include/c++/7/bits/char_traits.h ****       eq(const char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 289:/usr/include/c++/7/bits/char_traits.h ****       { return __c1 == __c2; }
 290:/usr/include/c++/7/bits/char_traits.h **** 
 291:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX_CONSTEXPR bool
 292:/usr/include/c++/7/bits/char_traits.h ****       lt(const char_type& __c1, const char_type& __c2) _GLIBCXX_NOEXCEPT
 293:/usr/include/c++/7/bits/char_traits.h ****       {
 294:/usr/include/c++/7/bits/char_traits.h **** 	// LWG 467.
 295:/usr/include/c++/7/bits/char_traits.h **** 	return (static_cast<unsigned char>(__c1)
 296:/usr/include/c++/7/bits/char_traits.h **** 		< static_cast<unsigned char>(__c2));
 297:/usr/include/c++/7/bits/char_traits.h ****       }
 298:/usr/include/c++/7/bits/char_traits.h **** 
 299:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX17_CONSTEXPR int
 300:/usr/include/c++/7/bits/char_traits.h ****       compare(const char_type* __s1, const char_type* __s2, size_t __n)
 301:/usr/include/c++/7/bits/char_traits.h ****       {
 302:/usr/include/c++/7/bits/char_traits.h **** #if __cplusplus > 201402
 303:/usr/include/c++/7/bits/char_traits.h **** 	if (__builtin_constant_p(__n)
 304:/usr/include/c++/7/bits/char_traits.h **** 	    && __constant_char_array_p(__s1, __n)
 305:/usr/include/c++/7/bits/char_traits.h **** 	    && __constant_char_array_p(__s2, __n))
 306:/usr/include/c++/7/bits/char_traits.h **** 	  return __gnu_cxx::char_traits<char_type>::compare(__s1, __s2, __n);
 307:/usr/include/c++/7/bits/char_traits.h **** #endif
 308:/usr/include/c++/7/bits/char_traits.h **** 	if (__n == 0)
 309:/usr/include/c++/7/bits/char_traits.h **** 	  return 0;
 310:/usr/include/c++/7/bits/char_traits.h **** 	return __builtin_memcmp(__s1, __s2, __n);
 311:/usr/include/c++/7/bits/char_traits.h ****       }
 312:/usr/include/c++/7/bits/char_traits.h **** 
 313:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX17_CONSTEXPR size_t
 314:/usr/include/c++/7/bits/char_traits.h ****       length(const char_type* __s)
 315:/usr/include/c++/7/bits/char_traits.h ****       {
 316:/usr/include/c++/7/bits/char_traits.h **** #if __cplusplus > 201402
 317:/usr/include/c++/7/bits/char_traits.h **** 	if (__constant_string_p(__s))
 318:/usr/include/c++/7/bits/char_traits.h **** 	  return __gnu_cxx::char_traits<char_type>::length(__s);
 319:/usr/include/c++/7/bits/char_traits.h **** #endif
 320:/usr/include/c++/7/bits/char_traits.h **** 	return __builtin_strlen(__s);
 321:/usr/include/c++/7/bits/char_traits.h ****       }
 322:/usr/include/c++/7/bits/char_traits.h **** 
 323:/usr/include/c++/7/bits/char_traits.h ****       static _GLIBCXX17_CONSTEXPR const char_type*
 324:/usr/include/c++/7/bits/char_traits.h ****       find(const char_type* __s, size_t __n, const char_type& __a)
 325:/usr/include/c++/7/bits/char_traits.h ****       {
 326:/usr/include/c++/7/bits/char_traits.h **** #if __cplusplus > 201402
 327:/usr/include/c++/7/bits/char_traits.h **** 	if (__builtin_constant_p(__n)
 328:/usr/include/c++/7/bits/char_traits.h **** 	    && __builtin_constant_p(__a)
 329:/usr/include/c++/7/bits/char_traits.h **** 	    && __constant_char_array_p(__s, __n))
 330:/usr/include/c++/7/bits/char_traits.h **** 	  return __gnu_cxx::char_traits<char_type>::find(__s, __n, __a);
 331:/usr/include/c++/7/bits/char_traits.h **** #endif
 332:/usr/include/c++/7/bits/char_traits.h **** 	if (__n == 0)
 333:/usr/include/c++/7/bits/char_traits.h **** 	  return 0;
 334:/usr/include/c++/7/bits/char_traits.h **** 	return static_cast<const char_type*>(__builtin_memchr(__s, __a, __n));
 335:/usr/include/c++/7/bits/char_traits.h ****       }
 336:/usr/include/c++/7/bits/char_traits.h **** 
 337:/usr/include/c++/7/bits/char_traits.h ****       static char_type*
 338:/usr/include/c++/7/bits/char_traits.h ****       move(char_type* __s1, const char_type* __s2, size_t __n)
 339:/usr/include/c++/7/bits/char_traits.h ****       {
 340:/usr/include/c++/7/bits/char_traits.h **** 	if (__n == 0)
 341:/usr/include/c++/7/bits/char_traits.h **** 	  return __s1;
 342:/usr/include/c++/7/bits/char_traits.h **** 	return static_cast<char_type*>(__builtin_memmove(__s1, __s2, __n));
 343:/usr/include/c++/7/bits/char_traits.h ****       }
 344:/usr/include/c++/7/bits/char_traits.h **** 
 345:/usr/include/c++/7/bits/char_traits.h ****       static char_type*
 346:/usr/include/c++/7/bits/char_traits.h ****       copy(char_type* __s1, const char_type* __s2, size_t __n)
 347:/usr/include/c++/7/bits/char_traits.h ****       {
 348:/usr/include/c++/7/bits/char_traits.h **** 	if (__n == 0)
 349:/usr/include/c++/7/bits/char_traits.h **** 	  return __s1;
 350:/usr/include/c++/7/bits/char_traits.h **** 	return static_cast<char_type*>(__builtin_memcpy(__s1, __s2, __n));
 989              		.loc 8 350 0
 990 0333 C78424A0 		movl	$1634100580, 5024(%rsp)
 990      13000064 
 990      656661
 991              	.LBE795:
 992              	.LBE794:
 993              	.LBE793:
 994              	.LBE792:
 995              	.LBE791:
 996              	.LBE790:
 997              	.LBE789:
 998              	.LBE788:
 999              	.LBE787:
 1000              	.LBE786:
 1001              	.LBE785:
 1002              	.LBE814:
 1003              	.LBE824:
  68:main.cpp      ****     random_device rd;
 1004              		.loc 2 68 0
 1005 033e 64488B04 		movq	%fs:40, %rax
 1005      25280000 
 1005      00
 1006 0347 48898424 		movq	%rax, 10008(%rsp)
 1006      18270000 
 1007 034f 31C0     		xorl	%eax, %eax
 1008              	.LVL90:
 1009              	.LBB825:
 1010              	.LBB815:
 1011              	.LBB811:
 1012              	.LBB783:
 1013              	.LBB781:
 1014              		.loc 6 146 0
 1015 0351 488D4310 		leaq	16(%rbx), %rax
 1016              	.LBE781:
 1017              	.LBE783:
 1018              	.LBE811:
 1019              	.LBE815:
 1020              	.LBE825:
 1021              	.LBB826:
 1022              	.LBB822:
 1023              	.LBB820:
 1024              		.loc 7 1580 0
 1025 0355 4889DE   		movq	%rbx, %rsi
 1026              	.LVL91:
 1027 0358 4C89EF   		movq	%r13, %rdi
 1028              	.LVL92:
 1029              	.LBE820:
 1030              	.LBE822:
 1031              	.LBE826:
 1032              	.LBB827:
 1033              	.LBB816:
 1034              	.LBB812:
 1035              	.LBB784:
 1036              	.LBB782:
 1037              		.loc 6 146 0
 1038 035b 48898424 		movq	%rax, 5008(%rsp)
 1038      90130000 
 1039              	.LVL93:
 1040              	.LBE782:
 1041              	.LBE784:
 1042              	.LBE812:
 1043              	.LBB813:
 1044              	.LBB810:
 1045              	.LBB809:
 1046              	.LBB808:
 1047              	.LBB807:
 1048              	.LBB806:
 1049              	.LBB800:
 1050              	.LBB799:
 1051              	.LBB798:
 1052              	.LBB797:
 1053              	.LBB796:
 1054              		.loc 8 350 0
 1055 0363 B8756C00 		movl	$27765, %eax
 1055      00
 1056 0368 C6431674 		movb	$116, 22(%rbx)
 1057              	.LVL94:
 1058 036c 66894314 		movw	%ax, 20(%rbx)
 1059              	.LBE796:
 1060              	.LBE797:
 1061              	.LBE798:
 1062              	.LBE799:
 1063              	.LBE800:
 1064              	.LBB801:
 1065              	.LBB802:
 1066              	.LBB803:
 147:/usr/include/c++/7/bits/basic_string.h **** 
 148:/usr/include/c++/7/bits/basic_string.h **** 	_Alloc_hider(pointer __dat, _Alloc&& __a = _Alloc())
 149:/usr/include/c++/7/bits/basic_string.h **** 	: allocator_type(std::move(__a)), _M_p(__dat) { }
 150:/usr/include/c++/7/bits/basic_string.h **** #endif
 151:/usr/include/c++/7/bits/basic_string.h **** 
 152:/usr/include/c++/7/bits/basic_string.h **** 	pointer _M_p; // The actual data.
 153:/usr/include/c++/7/bits/basic_string.h ****       };
 154:/usr/include/c++/7/bits/basic_string.h **** 
 155:/usr/include/c++/7/bits/basic_string.h ****       _Alloc_hider	_M_dataplus;
 156:/usr/include/c++/7/bits/basic_string.h ****       size_type		_M_string_length;
 157:/usr/include/c++/7/bits/basic_string.h **** 
 158:/usr/include/c++/7/bits/basic_string.h ****       enum { _S_local_capacity = 15 / sizeof(_CharT) };
 159:/usr/include/c++/7/bits/basic_string.h **** 
 160:/usr/include/c++/7/bits/basic_string.h ****       union
 161:/usr/include/c++/7/bits/basic_string.h ****       {
 162:/usr/include/c++/7/bits/basic_string.h **** 	_CharT           _M_local_buf[_S_local_capacity + 1];
 163:/usr/include/c++/7/bits/basic_string.h **** 	size_type        _M_allocated_capacity;
 164:/usr/include/c++/7/bits/basic_string.h ****       };
 165:/usr/include/c++/7/bits/basic_string.h **** 
 166:/usr/include/c++/7/bits/basic_string.h ****       void
 167:/usr/include/c++/7/bits/basic_string.h ****       _M_data(pointer __p)
 168:/usr/include/c++/7/bits/basic_string.h ****       { _M_dataplus._M_p = __p; }
 169:/usr/include/c++/7/bits/basic_string.h **** 
 170:/usr/include/c++/7/bits/basic_string.h ****       void
 171:/usr/include/c++/7/bits/basic_string.h ****       _M_length(size_type __length)
 172:/usr/include/c++/7/bits/basic_string.h ****       { _M_string_length = __length; }
 1067              		.loc 6 172 0
 1068 0370 48C78424 		movq	$7, 5016(%rsp)
 1068      98130000 
 1068      07000000 
 1069              	.LVL95:
 1070              	.LBE803:
 1071              	.LBE802:
 1072              	.LBB804:
 1073              	.LBB805:
 285:/usr/include/c++/7/bits/char_traits.h **** 
 1074              		.loc 8 285 0
 1075 037c C68424A7 		movb	$0, 5031(%rsp)
 1075      13000000 
 1076              	.LVL96:
 1077              	.LEHB0:
 1078              	.LBE805:
 1079              	.LBE804:
 1080              	.LBE801:
 1081              	.LBE806:
 1082              	.LBE807:
 1083              	.LBE808:
 1084              	.LBE809:
 1085              	.LBE810:
 1086              	.LBE813:
 1087              	.LBE816:
 1088              	.LBE827:
 1089              	.LBB828:
 1090              	.LBB823:
 1091              	.LBB821:
 1092              		.loc 7 1580 0
 1093 0384 E8000000 		call	_ZNSt13random_device7_M_initERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
 1093      00
 1094              	.LVL97:
 1095              	.LEHE0:
 1096 0389 488BBC24 		movq	5008(%rsp), %rdi
 1096      90130000 
 1097              	.LVL98:
 1098              	.LBE821:
 1099              	.LBE823:
 1100              	.LBE828:
 1101              	.LBB829:
 1102              	.LBB830:
 1103              	.LBB831:
 173:/usr/include/c++/7/bits/basic_string.h **** 
 174:/usr/include/c++/7/bits/basic_string.h ****       pointer
 175:/usr/include/c++/7/bits/basic_string.h ****       _M_data() const
 176:/usr/include/c++/7/bits/basic_string.h ****       { return _M_dataplus._M_p; }
 177:/usr/include/c++/7/bits/basic_string.h **** 
 178:/usr/include/c++/7/bits/basic_string.h ****       pointer
 179:/usr/include/c++/7/bits/basic_string.h ****       _M_local_data()
 180:/usr/include/c++/7/bits/basic_string.h ****       {
 181:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus >= 201103L
 182:/usr/include/c++/7/bits/basic_string.h **** 	return std::pointer_traits<pointer>::pointer_to(*_M_local_buf);
 183:/usr/include/c++/7/bits/basic_string.h **** #else
 184:/usr/include/c++/7/bits/basic_string.h **** 	return pointer(_M_local_buf);
 185:/usr/include/c++/7/bits/basic_string.h **** #endif
 186:/usr/include/c++/7/bits/basic_string.h ****       }
 187:/usr/include/c++/7/bits/basic_string.h **** 
 188:/usr/include/c++/7/bits/basic_string.h ****       const_pointer
 189:/usr/include/c++/7/bits/basic_string.h ****       _M_local_data() const
 190:/usr/include/c++/7/bits/basic_string.h ****       {
 191:/usr/include/c++/7/bits/basic_string.h **** #if __cplusplus >= 201103L
 192:/usr/include/c++/7/bits/basic_string.h **** 	return std::pointer_traits<const_pointer>::pointer_to(*_M_local_buf);
 193:/usr/include/c++/7/bits/basic_string.h **** #else
 194:/usr/include/c++/7/bits/basic_string.h **** 	return const_pointer(_M_local_buf);
 195:/usr/include/c++/7/bits/basic_string.h **** #endif
 196:/usr/include/c++/7/bits/basic_string.h ****       }
 197:/usr/include/c++/7/bits/basic_string.h **** 
 198:/usr/include/c++/7/bits/basic_string.h ****       void
 199:/usr/include/c++/7/bits/basic_string.h ****       _M_capacity(size_type __capacity)
 200:/usr/include/c++/7/bits/basic_string.h ****       { _M_allocated_capacity = __capacity; }
 201:/usr/include/c++/7/bits/basic_string.h **** 
 202:/usr/include/c++/7/bits/basic_string.h ****       void
 203:/usr/include/c++/7/bits/basic_string.h ****       _M_set_length(size_type __n)
 204:/usr/include/c++/7/bits/basic_string.h ****       {
 205:/usr/include/c++/7/bits/basic_string.h **** 	_M_length(__n);
 206:/usr/include/c++/7/bits/basic_string.h **** 	traits_type::assign(_M_data()[__n], _CharT());
 207:/usr/include/c++/7/bits/basic_string.h ****       }
 208:/usr/include/c++/7/bits/basic_string.h **** 
 209:/usr/include/c++/7/bits/basic_string.h ****       bool
 210:/usr/include/c++/7/bits/basic_string.h ****       _M_is_local() const
 211:/usr/include/c++/7/bits/basic_string.h ****       { return _M_data() == _M_local_data(); }
 212:/usr/include/c++/7/bits/basic_string.h **** 
 213:/usr/include/c++/7/bits/basic_string.h ****       // Create & Destroy
 214:/usr/include/c++/7/bits/basic_string.h ****       pointer
 215:/usr/include/c++/7/bits/basic_string.h ****       _M_create(size_type&, size_type);
 216:/usr/include/c++/7/bits/basic_string.h **** 
 217:/usr/include/c++/7/bits/basic_string.h ****       void
 218:/usr/include/c++/7/bits/basic_string.h ****       _M_dispose()
 219:/usr/include/c++/7/bits/basic_string.h ****       {
 220:/usr/include/c++/7/bits/basic_string.h **** 	if (!_M_is_local())
 1104              		.loc 6 220 0
 1105 0391 488D4310 		leaq	16(%rbx), %rax
 1106 0395 4839C7   		cmpq	%rax, %rdi
 1107 0398 7405     		je	.L58
 1108              	.LVL99:
 1109              	.LBB832:
 1110              	.LBB833:
 1111              	.LBB834:
 1112              	.LBB835:
 1113              		.file 9 "/usr/include/c++/7/ext/new_allocator.h"
   1:/usr/include/c++/7/ext/new_allocator.h **** // Allocator that wraps operator new -*- C++ -*-
   2:/usr/include/c++/7/ext/new_allocator.h **** 
   3:/usr/include/c++/7/ext/new_allocator.h **** // Copyright (C) 2001-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/ext/new_allocator.h **** //
   5:/usr/include/c++/7/ext/new_allocator.h **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/ext/new_allocator.h **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/ext/new_allocator.h **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/ext/new_allocator.h **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/ext/new_allocator.h **** // any later version.
  10:/usr/include/c++/7/ext/new_allocator.h **** 
  11:/usr/include/c++/7/ext/new_allocator.h **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/ext/new_allocator.h **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/ext/new_allocator.h **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/ext/new_allocator.h **** // GNU General Public License for more details.
  15:/usr/include/c++/7/ext/new_allocator.h **** 
  16:/usr/include/c++/7/ext/new_allocator.h **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/ext/new_allocator.h **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/ext/new_allocator.h **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/ext/new_allocator.h **** 
  20:/usr/include/c++/7/ext/new_allocator.h **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/ext/new_allocator.h **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/ext/new_allocator.h **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/ext/new_allocator.h **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/ext/new_allocator.h **** 
  25:/usr/include/c++/7/ext/new_allocator.h **** /** @file ext/new_allocator.h
  26:/usr/include/c++/7/ext/new_allocator.h ****  *  This file is a GNU extension to the Standard C++ Library.
  27:/usr/include/c++/7/ext/new_allocator.h ****  */
  28:/usr/include/c++/7/ext/new_allocator.h **** 
  29:/usr/include/c++/7/ext/new_allocator.h **** #ifndef _NEW_ALLOCATOR_H
  30:/usr/include/c++/7/ext/new_allocator.h **** #define _NEW_ALLOCATOR_H 1
  31:/usr/include/c++/7/ext/new_allocator.h **** 
  32:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/c++config.h>
  33:/usr/include/c++/7/ext/new_allocator.h **** #include <new>
  34:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/functexcept.h>
  35:/usr/include/c++/7/ext/new_allocator.h **** #include <bits/move.h>
  36:/usr/include/c++/7/ext/new_allocator.h **** #if __cplusplus >= 201103L
  37:/usr/include/c++/7/ext/new_allocator.h **** #include <type_traits>
  38:/usr/include/c++/7/ext/new_allocator.h **** #endif
  39:/usr/include/c++/7/ext/new_allocator.h **** 
  40:/usr/include/c++/7/ext/new_allocator.h **** namespace __gnu_cxx _GLIBCXX_VISIBILITY(default)
  41:/usr/include/c++/7/ext/new_allocator.h **** {
  42:/usr/include/c++/7/ext/new_allocator.h **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  43:/usr/include/c++/7/ext/new_allocator.h **** 
  44:/usr/include/c++/7/ext/new_allocator.h ****   using std::size_t;
  45:/usr/include/c++/7/ext/new_allocator.h ****   using std::ptrdiff_t;
  46:/usr/include/c++/7/ext/new_allocator.h **** 
  47:/usr/include/c++/7/ext/new_allocator.h ****   /**
  48:/usr/include/c++/7/ext/new_allocator.h ****    *  @brief  An allocator that uses global new, as per [20.4].
  49:/usr/include/c++/7/ext/new_allocator.h ****    *  @ingroup allocators
  50:/usr/include/c++/7/ext/new_allocator.h ****    *
  51:/usr/include/c++/7/ext/new_allocator.h ****    *  This is precisely the allocator defined in the C++ Standard.
  52:/usr/include/c++/7/ext/new_allocator.h ****    *    - all allocation calls operator new
  53:/usr/include/c++/7/ext/new_allocator.h ****    *    - all deallocation calls operator delete
  54:/usr/include/c++/7/ext/new_allocator.h ****    *
  55:/usr/include/c++/7/ext/new_allocator.h ****    *  @tparam  _Tp  Type of allocated object.
  56:/usr/include/c++/7/ext/new_allocator.h ****    */
  57:/usr/include/c++/7/ext/new_allocator.h ****   template<typename _Tp>
  58:/usr/include/c++/7/ext/new_allocator.h ****     class new_allocator
  59:/usr/include/c++/7/ext/new_allocator.h ****     {
  60:/usr/include/c++/7/ext/new_allocator.h ****     public:
  61:/usr/include/c++/7/ext/new_allocator.h ****       typedef size_t     size_type;
  62:/usr/include/c++/7/ext/new_allocator.h ****       typedef ptrdiff_t  difference_type;
  63:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp*       pointer;
  64:/usr/include/c++/7/ext/new_allocator.h ****       typedef const _Tp* const_pointer;
  65:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp&       reference;
  66:/usr/include/c++/7/ext/new_allocator.h ****       typedef const _Tp& const_reference;
  67:/usr/include/c++/7/ext/new_allocator.h ****       typedef _Tp        value_type;
  68:/usr/include/c++/7/ext/new_allocator.h **** 
  69:/usr/include/c++/7/ext/new_allocator.h ****       template<typename _Tp1>
  70:/usr/include/c++/7/ext/new_allocator.h **** 	struct rebind
  71:/usr/include/c++/7/ext/new_allocator.h **** 	{ typedef new_allocator<_Tp1> other; };
  72:/usr/include/c++/7/ext/new_allocator.h **** 
  73:/usr/include/c++/7/ext/new_allocator.h **** #if __cplusplus >= 201103L
  74:/usr/include/c++/7/ext/new_allocator.h ****       // _GLIBCXX_RESOLVE_LIB_DEFECTS
  75:/usr/include/c++/7/ext/new_allocator.h ****       // 2103. propagate_on_container_move_assignment
  76:/usr/include/c++/7/ext/new_allocator.h ****       typedef std::true_type propagate_on_container_move_assignment;
  77:/usr/include/c++/7/ext/new_allocator.h **** #endif
  78:/usr/include/c++/7/ext/new_allocator.h **** 
  79:/usr/include/c++/7/ext/new_allocator.h ****       new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  80:/usr/include/c++/7/ext/new_allocator.h **** 
  81:/usr/include/c++/7/ext/new_allocator.h ****       new_allocator(const new_allocator&) _GLIBCXX_USE_NOEXCEPT { }
  82:/usr/include/c++/7/ext/new_allocator.h **** 
  83:/usr/include/c++/7/ext/new_allocator.h ****       template<typename _Tp1>
  84:/usr/include/c++/7/ext/new_allocator.h **** 	new_allocator(const new_allocator<_Tp1>&) _GLIBCXX_USE_NOEXCEPT { }
  85:/usr/include/c++/7/ext/new_allocator.h **** 
  86:/usr/include/c++/7/ext/new_allocator.h ****       ~new_allocator() _GLIBCXX_USE_NOEXCEPT { }
  87:/usr/include/c++/7/ext/new_allocator.h **** 
  88:/usr/include/c++/7/ext/new_allocator.h ****       pointer
  89:/usr/include/c++/7/ext/new_allocator.h ****       address(reference __x) const _GLIBCXX_NOEXCEPT
  90:/usr/include/c++/7/ext/new_allocator.h ****       { return std::__addressof(__x); }
  91:/usr/include/c++/7/ext/new_allocator.h **** 
  92:/usr/include/c++/7/ext/new_allocator.h ****       const_pointer
  93:/usr/include/c++/7/ext/new_allocator.h ****       address(const_reference __x) const _GLIBCXX_NOEXCEPT
  94:/usr/include/c++/7/ext/new_allocator.h ****       { return std::__addressof(__x); }
  95:/usr/include/c++/7/ext/new_allocator.h **** 
  96:/usr/include/c++/7/ext/new_allocator.h ****       // NB: __n is permitted to be 0.  The C++ standard says nothing
  97:/usr/include/c++/7/ext/new_allocator.h ****       // about what the return value is when __n == 0.
  98:/usr/include/c++/7/ext/new_allocator.h ****       pointer
  99:/usr/include/c++/7/ext/new_allocator.h ****       allocate(size_type __n, const void* = static_cast<const void*>(0))
 100:/usr/include/c++/7/ext/new_allocator.h ****       {
 101:/usr/include/c++/7/ext/new_allocator.h **** 	if (__n > this->max_size())
 102:/usr/include/c++/7/ext/new_allocator.h **** 	  std::__throw_bad_alloc();
 103:/usr/include/c++/7/ext/new_allocator.h **** 
 104:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 105:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 106:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 107:/usr/include/c++/7/ext/new_allocator.h **** 	    std::align_val_t __al = std::align_val_t(alignof(_Tp));
 108:/usr/include/c++/7/ext/new_allocator.h **** 	    return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp), __al));
 109:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 110:/usr/include/c++/7/ext/new_allocator.h **** #endif
 111:/usr/include/c++/7/ext/new_allocator.h **** 	return static_cast<_Tp*>(::operator new(__n * sizeof(_Tp)));
 112:/usr/include/c++/7/ext/new_allocator.h ****       }
 113:/usr/include/c++/7/ext/new_allocator.h **** 
 114:/usr/include/c++/7/ext/new_allocator.h ****       // __p is not permitted to be a null pointer.
 115:/usr/include/c++/7/ext/new_allocator.h ****       void
 116:/usr/include/c++/7/ext/new_allocator.h ****       deallocate(pointer __p, size_type)
 117:/usr/include/c++/7/ext/new_allocator.h ****       {
 118:/usr/include/c++/7/ext/new_allocator.h **** #if __cpp_aligned_new
 119:/usr/include/c++/7/ext/new_allocator.h **** 	if (alignof(_Tp) > __STDCPP_DEFAULT_NEW_ALIGNMENT__)
 120:/usr/include/c++/7/ext/new_allocator.h **** 	  {
 121:/usr/include/c++/7/ext/new_allocator.h **** 	    ::operator delete(__p, std::align_val_t(alignof(_Tp)));
 122:/usr/include/c++/7/ext/new_allocator.h **** 	    return;
 123:/usr/include/c++/7/ext/new_allocator.h **** 	  }
 124:/usr/include/c++/7/ext/new_allocator.h **** #endif
 125:/usr/include/c++/7/ext/new_allocator.h **** 	::operator delete(__p);
 1114              		.loc 9 125 0
 1115 039a E8000000 		call	_ZdlPv@PLT
 1115      00
 1116              	.LVL100:
 1117              	.L58:
 1118              	.LBE835:
 1119              	.LBE834:
 1120              	.LBE833:
 1121              	.LBE832:
 1122              	.LBE831:
 1123              	.LBE830:
 1124              	.LBE829:
 1125              	.LBB836:
 1126              	.LBB837:
1581:/usr/include/c++/7/bits/random.h ****     }
1582:/usr/include/c++/7/bits/random.h **** 
1583:/usr/include/c++/7/bits/random.h ****     ~random_device()
1584:/usr/include/c++/7/bits/random.h ****     { _M_fini(); }
1585:/usr/include/c++/7/bits/random.h **** 
1586:/usr/include/c++/7/bits/random.h **** #else
1587:/usr/include/c++/7/bits/random.h **** 
1588:/usr/include/c++/7/bits/random.h ****     explicit
1589:/usr/include/c++/7/bits/random.h ****     random_device(const std::string& __token = "mt19937")
1590:/usr/include/c++/7/bits/random.h ****     { _M_init_pretr1(__token); }
1591:/usr/include/c++/7/bits/random.h **** 
1592:/usr/include/c++/7/bits/random.h ****   public:
1593:/usr/include/c++/7/bits/random.h **** 
1594:/usr/include/c++/7/bits/random.h **** #endif
1595:/usr/include/c++/7/bits/random.h **** 
1596:/usr/include/c++/7/bits/random.h ****     static constexpr result_type
1597:/usr/include/c++/7/bits/random.h ****     min()
1598:/usr/include/c++/7/bits/random.h ****     { return std::numeric_limits<result_type>::min(); }
1599:/usr/include/c++/7/bits/random.h **** 
1600:/usr/include/c++/7/bits/random.h ****     static constexpr result_type
1601:/usr/include/c++/7/bits/random.h ****     max()
1602:/usr/include/c++/7/bits/random.h ****     { return std::numeric_limits<result_type>::max(); }
1603:/usr/include/c++/7/bits/random.h **** 
1604:/usr/include/c++/7/bits/random.h ****     double
1605:/usr/include/c++/7/bits/random.h ****     entropy() const noexcept
1606:/usr/include/c++/7/bits/random.h ****     { return 0.0; }
1607:/usr/include/c++/7/bits/random.h **** 
1608:/usr/include/c++/7/bits/random.h ****     result_type
1609:/usr/include/c++/7/bits/random.h ****     operator()()
1610:/usr/include/c++/7/bits/random.h ****     {
1611:/usr/include/c++/7/bits/random.h **** #ifdef _GLIBCXX_USE_RANDOM_TR1
1612:/usr/include/c++/7/bits/random.h ****       return this->_M_getval();
 1127              		.loc 7 1612 0
 1128 039f 4C89EF   		movq	%r13, %rdi
 1129              	.LEHB1:
 1130 03a2 E8000000 		call	_ZNSt13random_device9_M_getvalEv@PLT
 1130      00
 1131              	.LVL101:
 1132              	.LEHE1:
 1133              	.LBE837:
 1134              	.LBE836:
  71:main.cpp      ****     uniform_real_distribution<> dist(1, 151);
 1135              		.loc 2 71 0
 1136 03a7 89C1     		movl	%eax, %ecx
 1137              	.LVL102:
 1138              	.LBB838:
 1139              	.LBB839:
 1140              	.LBB840:
 1141              	.LBB841:
 1142              	.LBB842:
 334:/usr/include/c++/7/bits/random.tcc **** 	{
 1143              		.loc 5 334 0
 1144 03a9 BA010000 		movl	$1, %edx
 1144      00
 1145              	.LBE842:
 331:/usr/include/c++/7/bits/random.tcc **** 	__detail::_Shift<_UIntType, __w>::__value>(__sd);
 1146              		.loc 5 331 0
 1147 03ae 48898C24 		movq	%rcx, 5008(%rsp)
 1147      90130000 
 1148              	.LVL103:
 1149 03b6 662E0F1F 		.p2align 4,,10
 1149      84000000 
 1149      0000
 1150              		.p2align 3
 1151              	.L59:
 1152              	.LBB847:
 1153              	.LBB843:
 337:/usr/include/c++/7/bits/random.tcc **** 	  __x *= __f;
 1154              		.loc 5 337 0
 1155 03c0 4889C8   		movq	%rcx, %rax
 1156 03c3 48C1E81E 		shrq	$30, %rax
 1157 03c7 4831C8   		xorq	%rcx, %rax
 1158              	.LVL104:
 338:/usr/include/c++/7/bits/random.tcc **** 	  __x += __detail::__mod<_UIntType, __n>(__i);
 1159              		.loc 5 338 0
 1160 03ca 4869C065 		imulq	$1812433253, %rax, %rax
 1160      89076C
 1161              	.LVL105:
 1162              	.LBB844:
 1163              	.LBB845:
 1164              	.LBB846:
 143:/usr/include/c++/7/bits/random.h **** 	  return __res;
 1165              		.loc 7 143 0
 1166 03d1 8D0C10   		leal	(%rax,%rdx), %ecx
 1167              	.LVL106:
 1168              	.LBE846:
 1169              	.LBE845:
 1170              	.LBE844:
 340:/usr/include/c++/7/bits/random.tcc **** 	    __detail::_Shift<_UIntType, __w>::__value>(__x);
 1171              		.loc 5 340 0
 1172 03d4 48890CD3 		movq	%rcx, (%rbx,%rdx,8)
 1173              	.LBE843:
 334:/usr/include/c++/7/bits/random.tcc **** 	{
 1174              		.loc 5 334 0
 1175 03d8 4883C201 		addq	$1, %rdx
 1176              	.LVL107:
 1177 03dc 4881FA70 		cmpq	$624, %rdx
 1177      020000
 1178 03e3 75DB     		jne	.L59
 1179              	.LBE847:
 1180              	.LBE841:
 1181              	.LBE840:
 1182              	.LBE839:
 1183              	.LBE838:
 1184              	.LBB851:
  74:main.cpp      ****         x[i] = dist(e2);
 1185              		.loc 2 74 0
 1186 03e5 4D85F6   		testq	%r14, %r14
 1187              	.LBE851:
 1188              	.LBB870:
 1189              	.LBB850:
 1190              	.LBB849:
 1191              	.LBB848:
 343:/usr/include/c++/7/bits/random.tcc ****     }
 1192              		.loc 5 343 0
 1193 03e8 48C78424 		movq	$624, 10000(%rsp)
 1193      10270000 
 1193      70020000 
 1194              	.LVL108:
 1195              	.LBE848:
 1196              	.LBE849:
 1197              	.LBE850:
 1198              	.LBE870:
 1199              	.LBB871:
  74:main.cpp      ****         x[i] = dist(e2);
 1200              		.loc 2 74 0
 1201 03f4 7453     		je	.L60
 1202 03f6 4E8D74F5 		leaq	0(%rbp,%r14,8), %r14
 1202      00
 1203              	.LVL109:
 1204 03fb 0F1F4400 		.p2align 4,,10
 1204      00
 1205              		.p2align 3
 1206              	.L61:
 1207              	.LBB852:
 1208              	.LBB853:
 1209              	.LBB854:
 1210              	.LBB855:
 1211              	.LBB856:
 185:/usr/include/c++/7/bits/random.h **** 	}
 1212              		.loc 7 185 0
 1213 0400 4889DF   		movq	%rbx, %rdi
 1214 0403 4883C508 		addq	$8, %rbp
 1215 0407 4983C408 		addq	$8, %r12
 1216 040b E8000000 		call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm256748361
 1216      00
 1217              	.LVL110:
 1218              	.LBE856:
 1219              	.LBE855:
1613:/usr/include/c++/7/bits/random.h **** #else
1614:/usr/include/c++/7/bits/random.h ****       return this->_M_getval_pretr1();
1615:/usr/include/c++/7/bits/random.h **** #endif
1616:/usr/include/c++/7/bits/random.h ****     }
1617:/usr/include/c++/7/bits/random.h **** 
1618:/usr/include/c++/7/bits/random.h ****     // No copy functions.
1619:/usr/include/c++/7/bits/random.h ****     random_device(const random_device&) = delete;
1620:/usr/include/c++/7/bits/random.h ****     void operator=(const random_device&) = delete;
1621:/usr/include/c++/7/bits/random.h **** 
1622:/usr/include/c++/7/bits/random.h ****   private:
1623:/usr/include/c++/7/bits/random.h **** 
1624:/usr/include/c++/7/bits/random.h ****     void _M_init(const std::string& __token);
1625:/usr/include/c++/7/bits/random.h ****     void _M_init_pretr1(const std::string& __token);
1626:/usr/include/c++/7/bits/random.h ****     void _M_fini();
1627:/usr/include/c++/7/bits/random.h **** 
1628:/usr/include/c++/7/bits/random.h ****     result_type _M_getval();
1629:/usr/include/c++/7/bits/random.h ****     result_type _M_getval_pretr1();
1630:/usr/include/c++/7/bits/random.h **** 
1631:/usr/include/c++/7/bits/random.h ****     union
1632:/usr/include/c++/7/bits/random.h ****     {
1633:/usr/include/c++/7/bits/random.h ****       void*      _M_file;
1634:/usr/include/c++/7/bits/random.h ****       mt19937    _M_mt;
1635:/usr/include/c++/7/bits/random.h ****     };
1636:/usr/include/c++/7/bits/random.h ****   };
1637:/usr/include/c++/7/bits/random.h **** 
1638:/usr/include/c++/7/bits/random.h ****   /* @} */ // group random_generators
1639:/usr/include/c++/7/bits/random.h **** 
1640:/usr/include/c++/7/bits/random.h ****   /**
1641:/usr/include/c++/7/bits/random.h ****    * @addtogroup random_distributions Random Number Distributions
1642:/usr/include/c++/7/bits/random.h ****    * @ingroup random
1643:/usr/include/c++/7/bits/random.h ****    * @{
1644:/usr/include/c++/7/bits/random.h ****    */
1645:/usr/include/c++/7/bits/random.h **** 
1646:/usr/include/c++/7/bits/random.h ****   /**
1647:/usr/include/c++/7/bits/random.h ****    * @addtogroup random_distributions_uniform Uniform Distributions
1648:/usr/include/c++/7/bits/random.h ****    * @ingroup random_distributions
1649:/usr/include/c++/7/bits/random.h ****    * @{
1650:/usr/include/c++/7/bits/random.h ****    */
1651:/usr/include/c++/7/bits/random.h **** 
1652:/usr/include/c++/7/bits/random.h ****   // std::uniform_int_distribution is defined in <bits/uniform_int_dist.h>
1653:/usr/include/c++/7/bits/random.h **** 
1654:/usr/include/c++/7/bits/random.h ****   /**
1655:/usr/include/c++/7/bits/random.h ****    * @brief Return true if two uniform integer distributions have
1656:/usr/include/c++/7/bits/random.h ****    *        different parameters.
1657:/usr/include/c++/7/bits/random.h ****    */
1658:/usr/include/c++/7/bits/random.h ****   template<typename _IntType>
1659:/usr/include/c++/7/bits/random.h ****     inline bool
1660:/usr/include/c++/7/bits/random.h ****     operator!=(const std::uniform_int_distribution<_IntType>& __d1,
1661:/usr/include/c++/7/bits/random.h **** 	       const std::uniform_int_distribution<_IntType>& __d2)
1662:/usr/include/c++/7/bits/random.h ****     { return !(__d1 == __d2); }
1663:/usr/include/c++/7/bits/random.h **** 
1664:/usr/include/c++/7/bits/random.h ****   /**
1665:/usr/include/c++/7/bits/random.h ****    * @brief Inserts a %uniform_int_distribution random number
1666:/usr/include/c++/7/bits/random.h ****    *        distribution @p __x into the output stream @p os.
1667:/usr/include/c++/7/bits/random.h ****    *
1668:/usr/include/c++/7/bits/random.h ****    * @param __os An output stream.
1669:/usr/include/c++/7/bits/random.h ****    * @param __x  A %uniform_int_distribution random number distribution.
1670:/usr/include/c++/7/bits/random.h ****    *
1671:/usr/include/c++/7/bits/random.h ****    * @returns The output stream with the state of @p __x inserted or in
1672:/usr/include/c++/7/bits/random.h ****    * an error state.
1673:/usr/include/c++/7/bits/random.h ****    */
1674:/usr/include/c++/7/bits/random.h ****   template<typename _IntType, typename _CharT, typename _Traits>
1675:/usr/include/c++/7/bits/random.h ****     std::basic_ostream<_CharT, _Traits>&
1676:/usr/include/c++/7/bits/random.h ****     operator<<(std::basic_ostream<_CharT, _Traits>&,
1677:/usr/include/c++/7/bits/random.h **** 	       const std::uniform_int_distribution<_IntType>&);
1678:/usr/include/c++/7/bits/random.h **** 
1679:/usr/include/c++/7/bits/random.h ****   /**
1680:/usr/include/c++/7/bits/random.h ****    * @brief Extracts a %uniform_int_distribution random number distribution
1681:/usr/include/c++/7/bits/random.h ****    * @p __x from the input stream @p __is.
1682:/usr/include/c++/7/bits/random.h ****    *
1683:/usr/include/c++/7/bits/random.h ****    * @param __is An input stream.
1684:/usr/include/c++/7/bits/random.h ****    * @param __x  A %uniform_int_distribution random number generator engine.
1685:/usr/include/c++/7/bits/random.h ****    *
1686:/usr/include/c++/7/bits/random.h ****    * @returns The input stream with @p __x extracted or in an error state.
1687:/usr/include/c++/7/bits/random.h ****    */
1688:/usr/include/c++/7/bits/random.h ****   template<typename _IntType, typename _CharT, typename _Traits>
1689:/usr/include/c++/7/bits/random.h ****     std::basic_istream<_CharT, _Traits>&
1690:/usr/include/c++/7/bits/random.h ****     operator>>(std::basic_istream<_CharT, _Traits>&,
1691:/usr/include/c++/7/bits/random.h **** 	       std::uniform_int_distribution<_IntType>&);
1692:/usr/include/c++/7/bits/random.h **** 
1693:/usr/include/c++/7/bits/random.h **** 
1694:/usr/include/c++/7/bits/random.h ****   /**
1695:/usr/include/c++/7/bits/random.h ****    * @brief Uniform continuous distribution for random numbers.
1696:/usr/include/c++/7/bits/random.h ****    *
1697:/usr/include/c++/7/bits/random.h ****    * A continuous random distribution on the range [min, max) with equal
1698:/usr/include/c++/7/bits/random.h ****    * probability throughout the range.  The URNG should be real-valued and
1699:/usr/include/c++/7/bits/random.h ****    * deliver number in the range [0, 1).
1700:/usr/include/c++/7/bits/random.h ****    */
1701:/usr/include/c++/7/bits/random.h ****   template<typename _RealType = double>
1702:/usr/include/c++/7/bits/random.h ****     class uniform_real_distribution
1703:/usr/include/c++/7/bits/random.h ****     {
1704:/usr/include/c++/7/bits/random.h ****       static_assert(std::is_floating_point<_RealType>::value,
1705:/usr/include/c++/7/bits/random.h **** 		    "result_type must be a floating point type");
1706:/usr/include/c++/7/bits/random.h **** 
1707:/usr/include/c++/7/bits/random.h ****     public:
1708:/usr/include/c++/7/bits/random.h ****       /** The type of the range of the distribution. */
1709:/usr/include/c++/7/bits/random.h ****       typedef _RealType result_type;
1710:/usr/include/c++/7/bits/random.h **** 
1711:/usr/include/c++/7/bits/random.h ****       /** Parameter type. */
1712:/usr/include/c++/7/bits/random.h ****       struct param_type
1713:/usr/include/c++/7/bits/random.h ****       {
1714:/usr/include/c++/7/bits/random.h **** 	typedef uniform_real_distribution<_RealType> distribution_type;
1715:/usr/include/c++/7/bits/random.h **** 
1716:/usr/include/c++/7/bits/random.h **** 	explicit
1717:/usr/include/c++/7/bits/random.h **** 	param_type(_RealType __a = _RealType(0),
1718:/usr/include/c++/7/bits/random.h **** 		   _RealType __b = _RealType(1))
1719:/usr/include/c++/7/bits/random.h **** 	: _M_a(__a), _M_b(__b)
1720:/usr/include/c++/7/bits/random.h **** 	{
1721:/usr/include/c++/7/bits/random.h **** 	  __glibcxx_assert(_M_a <= _M_b);
1722:/usr/include/c++/7/bits/random.h **** 	}
1723:/usr/include/c++/7/bits/random.h **** 
1724:/usr/include/c++/7/bits/random.h **** 	result_type
1725:/usr/include/c++/7/bits/random.h **** 	a() const
1726:/usr/include/c++/7/bits/random.h **** 	{ return _M_a; }
1727:/usr/include/c++/7/bits/random.h **** 
1728:/usr/include/c++/7/bits/random.h **** 	result_type
1729:/usr/include/c++/7/bits/random.h **** 	b() const
1730:/usr/include/c++/7/bits/random.h **** 	{ return _M_b; }
1731:/usr/include/c++/7/bits/random.h **** 
1732:/usr/include/c++/7/bits/random.h **** 	friend bool
1733:/usr/include/c++/7/bits/random.h **** 	operator==(const param_type& __p1, const param_type& __p2)
1734:/usr/include/c++/7/bits/random.h **** 	{ return __p1._M_a == __p2._M_a && __p1._M_b == __p2._M_b; }
1735:/usr/include/c++/7/bits/random.h **** 
1736:/usr/include/c++/7/bits/random.h **** 	friend bool
1737:/usr/include/c++/7/bits/random.h **** 	operator!=(const param_type& __p1, const param_type& __p2)
1738:/usr/include/c++/7/bits/random.h **** 	{ return !(__p1 == __p2); }
1739:/usr/include/c++/7/bits/random.h **** 
1740:/usr/include/c++/7/bits/random.h ****       private:
1741:/usr/include/c++/7/bits/random.h **** 	_RealType _M_a;
1742:/usr/include/c++/7/bits/random.h **** 	_RealType _M_b;
1743:/usr/include/c++/7/bits/random.h ****       };
1744:/usr/include/c++/7/bits/random.h **** 
1745:/usr/include/c++/7/bits/random.h ****     public:
1746:/usr/include/c++/7/bits/random.h ****       /**
1747:/usr/include/c++/7/bits/random.h ****        * @brief Constructs a uniform_real_distribution object.
1748:/usr/include/c++/7/bits/random.h ****        *
1749:/usr/include/c++/7/bits/random.h ****        * @param __a [IN]  The lower bound of the distribution.
1750:/usr/include/c++/7/bits/random.h ****        * @param __b [IN]  The upper bound of the distribution.
1751:/usr/include/c++/7/bits/random.h ****        */
1752:/usr/include/c++/7/bits/random.h ****       explicit
1753:/usr/include/c++/7/bits/random.h ****       uniform_real_distribution(_RealType __a = _RealType(0),
1754:/usr/include/c++/7/bits/random.h **** 				_RealType __b = _RealType(1))
1755:/usr/include/c++/7/bits/random.h ****       : _M_param(__a, __b)
1756:/usr/include/c++/7/bits/random.h ****       { }
1757:/usr/include/c++/7/bits/random.h **** 
1758:/usr/include/c++/7/bits/random.h ****       explicit
1759:/usr/include/c++/7/bits/random.h ****       uniform_real_distribution(const param_type& __p)
1760:/usr/include/c++/7/bits/random.h ****       : _M_param(__p)
1761:/usr/include/c++/7/bits/random.h ****       { }
1762:/usr/include/c++/7/bits/random.h **** 
1763:/usr/include/c++/7/bits/random.h ****       /**
1764:/usr/include/c++/7/bits/random.h ****        * @brief Resets the distribution state.
1765:/usr/include/c++/7/bits/random.h ****        *
1766:/usr/include/c++/7/bits/random.h ****        * Does nothing for the uniform real distribution.
1767:/usr/include/c++/7/bits/random.h ****        */
1768:/usr/include/c++/7/bits/random.h ****       void
1769:/usr/include/c++/7/bits/random.h ****       reset() { }
1770:/usr/include/c++/7/bits/random.h **** 
1771:/usr/include/c++/7/bits/random.h ****       result_type
1772:/usr/include/c++/7/bits/random.h ****       a() const
1773:/usr/include/c++/7/bits/random.h ****       { return _M_param.a(); }
1774:/usr/include/c++/7/bits/random.h **** 
1775:/usr/include/c++/7/bits/random.h ****       result_type
1776:/usr/include/c++/7/bits/random.h ****       b() const
1777:/usr/include/c++/7/bits/random.h ****       { return _M_param.b(); }
1778:/usr/include/c++/7/bits/random.h **** 
1779:/usr/include/c++/7/bits/random.h ****       /**
1780:/usr/include/c++/7/bits/random.h ****        * @brief Returns the parameter set of the distribution.
1781:/usr/include/c++/7/bits/random.h ****        */
1782:/usr/include/c++/7/bits/random.h ****       param_type
1783:/usr/include/c++/7/bits/random.h ****       param() const
1784:/usr/include/c++/7/bits/random.h ****       { return _M_param; }
1785:/usr/include/c++/7/bits/random.h **** 
1786:/usr/include/c++/7/bits/random.h ****       /**
1787:/usr/include/c++/7/bits/random.h ****        * @brief Sets the parameter set of the distribution.
1788:/usr/include/c++/7/bits/random.h ****        * @param __param The new parameter set of the distribution.
1789:/usr/include/c++/7/bits/random.h ****        */
1790:/usr/include/c++/7/bits/random.h ****       void
1791:/usr/include/c++/7/bits/random.h ****       param(const param_type& __param)
1792:/usr/include/c++/7/bits/random.h ****       { _M_param = __param; }
1793:/usr/include/c++/7/bits/random.h **** 
1794:/usr/include/c++/7/bits/random.h ****       /**
1795:/usr/include/c++/7/bits/random.h ****        * @brief Returns the inclusive lower bound of the distribution range.
1796:/usr/include/c++/7/bits/random.h ****        */
1797:/usr/include/c++/7/bits/random.h ****       result_type
1798:/usr/include/c++/7/bits/random.h ****       min() const
1799:/usr/include/c++/7/bits/random.h ****       { return this->a(); }
1800:/usr/include/c++/7/bits/random.h **** 
1801:/usr/include/c++/7/bits/random.h ****       /**
1802:/usr/include/c++/7/bits/random.h ****        * @brief Returns the inclusive upper bound of the distribution range.
1803:/usr/include/c++/7/bits/random.h ****        */
1804:/usr/include/c++/7/bits/random.h ****       result_type
1805:/usr/include/c++/7/bits/random.h ****       max() const
1806:/usr/include/c++/7/bits/random.h ****       { return this->b(); }
1807:/usr/include/c++/7/bits/random.h **** 
1808:/usr/include/c++/7/bits/random.h ****       /**
1809:/usr/include/c++/7/bits/random.h ****        * @brief Generating functions.
1810:/usr/include/c++/7/bits/random.h ****        */
1811:/usr/include/c++/7/bits/random.h ****       template<typename _UniformRandomNumberGenerator>
1812:/usr/include/c++/7/bits/random.h **** 	result_type
1813:/usr/include/c++/7/bits/random.h **** 	operator()(_UniformRandomNumberGenerator& __urng)
1814:/usr/include/c++/7/bits/random.h ****         { return this->operator()(__urng, _M_param); }
1815:/usr/include/c++/7/bits/random.h **** 
1816:/usr/include/c++/7/bits/random.h ****       template<typename _UniformRandomNumberGenerator>
1817:/usr/include/c++/7/bits/random.h **** 	result_type
1818:/usr/include/c++/7/bits/random.h **** 	operator()(_UniformRandomNumberGenerator& __urng,
1819:/usr/include/c++/7/bits/random.h **** 		   const param_type& __p)
1820:/usr/include/c++/7/bits/random.h **** 	{
1821:/usr/include/c++/7/bits/random.h **** 	  __detail::_Adaptor<_UniformRandomNumberGenerator, result_type>
1822:/usr/include/c++/7/bits/random.h **** 	    __aurng(__urng);
1823:/usr/include/c++/7/bits/random.h **** 	  return (__aurng() * (__p.b() - __p.a())) + __p.a();
 1220              		.loc 7 1823 0
 1221 0410 F20F5905 		mulsd	.LC10(%rip), %xmm0
 1221      00000000 
 1222              	.LBE854:
 1223              	.LBE853:
 1224              	.LBE852:
 1225              	.LBB859:
 1226              	.LBB860:
 1227              	.LBB861:
 1228              	.LBB862:
 1229              	.LBB863:
 185:/usr/include/c++/7/bits/random.h **** 	}
 1230              		.loc 7 185 0
 1231 0418 4889DF   		movq	%rbx, %rdi
 1232              	.LBE863:
 1233              	.LBE862:
 1234              	.LBE861:
 1235              	.LBE860:
 1236              	.LBE859:
 1237              	.LBB868:
 1238              	.LBB858:
 1239              	.LBB857:
 1240              		.loc 7 1823 0
 1241 041b F20F5805 		addsd	.LC7(%rip), %xmm0
 1241      00000000 
 1242              	.LBE857:
 1243              	.LBE858:
 1244              	.LBE868:
  75:main.cpp      ****         y[i] = dist(e2);
 1245              		.loc 2 75 0
 1246 0423 F20F1145 		movsd	%xmm0, -8(%rbp)
 1246      F8
 1247              	.LVL111:
 1248              	.LBB869:
 1249              	.LBB867:
 1250              	.LBB866:
 1251              	.LBB865:
 1252              	.LBB864:
 185:/usr/include/c++/7/bits/random.h **** 	}
 1253              		.loc 7 185 0
 1254 0428 E8000000 		call	_ZSt18generate_canonicalIdLm53ESt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm256748361
 1254      00
 1255              	.LVL112:
 1256              	.LBE864:
 1257              	.LBE865:
 1258              		.loc 7 1823 0
 1259 042d F20F5905 		mulsd	.LC10(%rip), %xmm0
 1259      00000000 
 1260 0435 F20F5805 		addsd	.LC7(%rip), %xmm0
 1260      00000000 
 1261              	.LBE866:
 1262              	.LBE867:
 1263              	.LBE869:
  76:main.cpp      ****     }
 1264              		.loc 2 76 0
 1265 043d F2410F11 		movsd	%xmm0, -8(%r12)
 1265      4424F8
  74:main.cpp      ****         x[i] = dist(e2);
 1266              		.loc 2 74 0
 1267 0444 4939EE   		cmpq	%rbp, %r14
 1268 0447 75B7     		jne	.L61
 1269              	.LVL113:
 1270              	.L60:
 1271              	.LBE871:
 1272              	.LBB872:
 1273              	.LBB873:
1584:/usr/include/c++/7/bits/random.h **** 
 1274              		.loc 7 1584 0
 1275 0449 4C89EF   		movq	%r13, %rdi
 1276 044c E8000000 		call	_ZNSt13random_device7_M_finiEv@PLT
 1276      00
 1277              	.LVL114:
 1278              	.LBE873:
 1279              	.LBE872:
  78:main.cpp      **** 
 1280              		.loc 2 78 0
 1281 0451 488B8424 		movq	10008(%rsp), %rax
 1281      18270000 
 1282 0459 64483304 		xorq	%fs:40, %rax
 1282      25280000 
 1282      00
 1283 0462 7531     		jne	.L75
 1284 0464 4881C420 		addq	$10016, %rsp
 1284      270000
 1285              		.cfi_remember_state
 1286              		.cfi_def_cfa_offset 48
 1287 046b 5B       		popq	%rbx
 1288              		.cfi_def_cfa_offset 40
 1289              	.LVL115:
 1290 046c 5D       		popq	%rbp
 1291              		.cfi_def_cfa_offset 32
 1292 046d 415C     		popq	%r12
 1293              		.cfi_def_cfa_offset 24
 1294 046f 415D     		popq	%r13
 1295              		.cfi_def_cfa_offset 16
 1296 0471 415E     		popq	%r14
 1297              		.cfi_def_cfa_offset 8
 1298 0473 C3       		ret
 1299              	.LVL116:
 1300              	.L66:
 1301              		.cfi_restore_state
 1302 0474 488BBC24 		movq	5008(%rsp), %rdi
 1302      90130000 
 1303              	.LBB874:
 1304              	.LBB875:
 1305              	.LBB876:
 1306              		.loc 6 220 0
 1307 047c 4883C310 		addq	$16, %rbx
 1308              	.LVL117:
 1309 0480 4889C5   		movq	%rax, %rbp
 1310              	.LVL118:
 1311 0483 4839DF   		cmpq	%rbx, %rdi
 1312 0486 7405     		je	.L63
 1313              	.LVL119:
 1314              	.LBB877:
 1315              	.LBB878:
 1316              	.LBB879:
 1317              	.LBB880:
 1318              		.loc 9 125 0
 1319 0488 E8000000 		call	_ZdlPv@PLT
 1319      00
 1320              	.LVL120:
 1321              	.L63:
 1322 048d 4889EF   		movq	%rbp, %rdi
 1323              	.LEHB2:
 1324 0490 E8000000 		call	_Unwind_Resume@PLT
 1324      00
 1325              	.LVL121:
 1326              	.LEHE2:
 1327              	.L75:
 1328              	.LBE880:
 1329              	.LBE879:
 1330              	.LBE878:
 1331              	.LBE877:
 1332              	.LBE876:
 1333              	.LBE875:
 1334              	.LBE874:
  78:main.cpp      **** 
 1335              		.loc 2 78 0
 1336 0495 E8000000 		call	__stack_chk_fail@PLT
 1336      00
 1337              	.LVL122:
 1338              	.L67:
 1339 049a 4889C3   		movq	%rax, %rbx
 1340              	.LVL123:
 1341              	.LBB881:
 1342              	.LBB882:
1584:/usr/include/c++/7/bits/random.h **** 
 1343              		.loc 7 1584 0
 1344 049d 4C89EF   		movq	%r13, %rdi
 1345 04a0 E8000000 		call	_ZNSt13random_device7_M_finiEv@PLT
 1345      00
 1346              	.LVL124:
 1347 04a5 4889DF   		movq	%rbx, %rdi
 1348              	.LEHB3:
 1349 04a8 E8000000 		call	_Unwind_Resume@PLT
 1349      00
 1350              	.LVL125:
 1351              	.LEHE3:
 1352              	.LBE882:
 1353              	.LBE881:
 1354              		.cfi_endproc
 1355              	.LFE3093:
 1356              		.globl	__gxx_personality_v0
 1357              		.section	.gcc_except_table,"a",@progbits
 1358              	.LLSDA3093:
 1359 0000 FF       		.byte	0xff
 1360 0001 FF       		.byte	0xff
 1361 0002 01       		.byte	0x1
 1362 0003 15       		.uleb128 .LLSDACSE3093-.LLSDACSB3093
 1363              	.LLSDACSB3093:
 1364 0004 74       		.uleb128 .LEHB0-.LFB3093
 1365 0005 05       		.uleb128 .LEHE0-.LEHB0
 1366 0006 E402     		.uleb128 .L66-.LFB3093
 1367 0008 00       		.uleb128 0
 1368 0009 9201     		.uleb128 .LEHB1-.LFB3093
 1369 000b 05       		.uleb128 .LEHE1-.LEHB1
 1370 000c 8A03     		.uleb128 .L67-.LFB3093
 1371 000e 00       		.uleb128 0
 1372 000f 8003     		.uleb128 .LEHB2-.LFB3093
 1373 0011 05       		.uleb128 .LEHE2-.LEHB2
 1374 0012 00       		.uleb128 0
 1375 0013 00       		.uleb128 0
 1376 0014 9803     		.uleb128 .LEHB3-.LFB3093
 1377 0016 05       		.uleb128 .LEHE3-.LEHB3
 1378 0017 00       		.uleb128 0
 1379 0018 00       		.uleb128 0
 1380              	.LLSDACSE3093:
 1381              		.text
 1383              		.section	.rodata.str1.1
 1384              	.LC11:
 1385 0026 42415345 		.string	"BASELINE METHOD:\n"
 1385      4C494E45 
 1385      204D4554 
 1385      484F443A 
 1385      0A00
 1386              		.section	.text.startup,"ax",@progbits
 1387              		.p2align 4,,15
 1388              		.globl	main
 1390              	main:
 1391              	.LFB3081:
  24:main.cpp      **** 
 1392              		.loc 2 24 0
 1393              		.cfi_startproc
 1394              	.LVL126:
 1395 0000 4154     		pushq	%r12
 1396              		.cfi_def_cfa_offset 16
 1397              		.cfi_offset 12, -16
 1398 0002 55       		pushq	%rbp
 1399              		.cfi_def_cfa_offset 24
 1400              		.cfi_offset 6, -24
  29:main.cpp      ****     auto *y = (double*) aligned_alloc(32, n * sizeof(double));
 1401              		.loc 2 29 0
 1402 0003 BE00127A 		movl	$8000000, %esi
 1402      00
  24:main.cpp      **** 
 1403              		.loc 2 24 0
 1404 0008 53       		pushq	%rbx
 1405              		.cfi_def_cfa_offset 32
 1406              		.cfi_offset 3, -32
  29:main.cpp      ****     auto *y = (double*) aligned_alloc(32, n * sizeof(double));
 1407              		.loc 2 29 0
 1408 0009 BF200000 		movl	$32, %edi
 1408      00
 1409 000e E8000000 		call	aligned_alloc@PLT
 1409      00
 1410              	.LVL127:
  30:main.cpp      **** 
 1411              		.loc 2 30 0
 1412 0013 BE00127A 		movl	$8000000, %esi
 1412      00
  29:main.cpp      ****     auto *y = (double*) aligned_alloc(32, n * sizeof(double));
 1413              		.loc 2 29 0
 1414 0018 4889C5   		movq	%rax, %rbp
 1415              	.LVL128:
  30:main.cpp      **** 
 1416              		.loc 2 30 0
 1417 001b BF200000 		movl	$32, %edi
 1417      00
 1418 0020 E8000000 		call	aligned_alloc@PLT
 1418      00
 1419              	.LVL129:
  32:main.cpp      **** 
 1420              		.loc 2 32 0
 1421 0025 4889EF   		movq	%rbp, %rdi
 1422 0028 4889C6   		movq	%rax, %rsi
 1423 002b BA40420F 		movl	$1000000, %edx
 1423      00
  30:main.cpp      **** 
 1424              		.loc 2 30 0
 1425 0030 4989C4   		movq	%rax, %r12
 1426              	.LVL130:
  32:main.cpp      **** 
 1427              		.loc 2 32 0
 1428 0033 E8000000 		call	_Z11fill_vectorPdS_m
 1428      00
 1429              	.LVL131:
 1430              	.LBB883:
 1431              	.LBB884:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 1432              		.loc 3 561 0
 1433 0038 488D3500 		leaq	.LC4(%rip), %rsi
 1433      000000
 1434 003f 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1434      000000
 1435 0046 BA010000 		movl	$1, %edx
 1435      00
 1436 004b E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 1436      00
 1437              	.LVL132:
 1438              	.LBE884:
 1439              	.LBE883:
 1440              	.LBB885:
 1441              	.LBB886:
 113:/usr/include/c++/7/ostream ****       }
 1442              		.loc 3 113 0
 1443 0050 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1443      000000
 1444 0057 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
 1444      00
 1445              	.LVL133:
 1446              	.LBE886:
 1447              	.LBE885:
  36:main.cpp      ****     cout << "BASELINE METHOD:\n" << endl;
 1448              		.loc 2 36 0
 1449 005c BF080000 		movl	$8, %edi
 1449      00
 1450 0061 E8000000 		call	_Znwm@PLT
 1450      00
 1451              	.LVL134:
 1452              	.LBB887:
 1453              	.LBB888:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 1454              		.loc 3 561 0
 1455 0066 488D3500 		leaq	.LC11(%rip), %rsi
 1455      000000
 1456              	.LBE888:
 1457              	.LBE887:
  36:main.cpp      ****     cout << "BASELINE METHOD:\n" << endl;
 1458              		.loc 2 36 0
 1459 006d 4889C3   		movq	%rax, %rbx
 1460              	.LVL135:
 1461              	.LBB892:
 1462              	.LBB889:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 1463              		.loc 3 561 0
 1464 0070 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1464      000000
 1465              	.LBE889:
 1466              	.LBE892:
 1467              	.LBB893:
 1468              	.LBB894:
 1469              		.file 10 "ednaive.h"
   1:ednaive.h     **** //
   2:ednaive.h     **** // Created by Leonardo Fuso on 15/12/17.
   3:ednaive.h     **** //
   4:ednaive.h     **** 
   5:ednaive.h     **** #ifndef EDNAIVE_H
   6:ednaive.h     **** #define EDNAIVE_H
   7:ednaive.h     **** 
   8:ednaive.h     **** #include "EuclideanDistance.h"
   9:ednaive.h     **** 
  10:ednaive.h     **** class Baseline : public EuclideanDistance
 1470              		.loc 10 10 0
 1471 0077 488D0500 		leaq	16+_ZTV8Baseline(%rip), %rax
 1471      000000
 1472              	.LVL136:
 1473              	.LBE894:
 1474              	.LBE893:
 1475              	.LBB896:
 1476              	.LBB890:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 1477              		.loc 3 561 0
 1478 007e BA110000 		movl	$17, %edx
 1478      00
 1479              	.LBE890:
 1480              	.LBE896:
 1481              	.LBB897:
 1482              	.LBB895:
 1483              		.loc 10 10 0
 1484 0083 488903   		movq	%rax, (%rbx)
 1485              	.LVL137:
 1486              	.LBE895:
 1487              	.LBE897:
 1488              	.LBB898:
 1489              	.LBB891:
 561:/usr/include/c++/7/ostream **** 			 static_cast<streamsize>(_Traits::length(__s)));
 1490              		.loc 3 561 0
 1491 0086 E8000000 		call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
 1491      00
 1492              	.LVL138:
 1493              	.LBE891:
 1494              	.LBE898:
 1495              	.LBB899:
 1496              	.LBB900:
 113:/usr/include/c++/7/ostream ****       }
 1497              		.loc 3 113 0
 1498 008b 488D3D00 		leaq	_ZSt4cout(%rip), %rdi
 1498      000000
 1499 0092 E8000000 		call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@PLT
 1499      00
 1500              	.LVL139:
 1501              	.LBE900:
 1502              	.LBE899:
  38:main.cpp      **** 
 1503              		.loc 2 38 0
 1504 0097 4C89E2   		movq	%r12, %rdx
 1505 009a 4889EE   		movq	%rbp, %rsi
 1506 009d 4889DF   		movq	%rbx, %rdi
 1507 00a0 B940420F 		movl	$1000000, %ecx
 1507      00
 1508 00a5 E8000000 		call	_Z5_testP17EuclideanDistancePKdS2_m
 1508      00
 1509              	.LVL140:
  49:main.cpp      **** 
 1510              		.loc 2 49 0
 1511 00aa 5B       		popq	%rbx
 1512              		.cfi_def_cfa_offset 24
 1513              	.LVL141:
 1514 00ab 31C0     		xorl	%eax, %eax
 1515 00ad 5D       		popq	%rbp
 1516              		.cfi_def_cfa_offset 16
 1517              	.LVL142:
 1518 00ae 415C     		popq	%r12
 1519              		.cfi_def_cfa_offset 8
 1520              	.LVL143:
 1521 00b0 C3       		ret
 1522              		.cfi_endproc
 1523              	.LFE3081:
 1525 00b1 0F1F4400 		.p2align 4,,15
 1525      00662E0F 
 1525      1F840000 
 1525      000000
 1527              	_GLOBAL__sub_I_main:
 1528              	.LFB3657:
 1529              		.loc 2 84 0
 1530              		.cfi_startproc
 1531              	.LVL144:
 1532              	.LBB901:
 1533              	.LBB902:
 1534              		.file 11 "/usr/include/c++/7/iostream"
   1:/usr/include/c++/7/iostream **** // Standard iostream objects -*- C++ -*-
   2:/usr/include/c++/7/iostream **** 
   3:/usr/include/c++/7/iostream **** // Copyright (C) 1997-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/iostream **** //
   5:/usr/include/c++/7/iostream **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/iostream **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/iostream **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/iostream **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/iostream **** // any later version.
  10:/usr/include/c++/7/iostream **** 
  11:/usr/include/c++/7/iostream **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/iostream **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/iostream **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/iostream **** // GNU General Public License for more details.
  15:/usr/include/c++/7/iostream **** 
  16:/usr/include/c++/7/iostream **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/iostream **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/iostream **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/iostream **** 
  20:/usr/include/c++/7/iostream **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/iostream **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/iostream **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/iostream **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/iostream **** 
  25:/usr/include/c++/7/iostream **** /** @file include/iostream
  26:/usr/include/c++/7/iostream ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/7/iostream ****  */
  28:/usr/include/c++/7/iostream **** 
  29:/usr/include/c++/7/iostream **** //
  30:/usr/include/c++/7/iostream **** // ISO C++ 14882: 27.3  Standard iostream objects
  31:/usr/include/c++/7/iostream **** //
  32:/usr/include/c++/7/iostream **** 
  33:/usr/include/c++/7/iostream **** #ifndef _GLIBCXX_IOSTREAM
  34:/usr/include/c++/7/iostream **** #define _GLIBCXX_IOSTREAM 1
  35:/usr/include/c++/7/iostream **** 
  36:/usr/include/c++/7/iostream **** #pragma GCC system_header
  37:/usr/include/c++/7/iostream **** 
  38:/usr/include/c++/7/iostream **** #include <bits/c++config.h>
  39:/usr/include/c++/7/iostream **** #include <ostream>
  40:/usr/include/c++/7/iostream **** #include <istream>
  41:/usr/include/c++/7/iostream **** 
  42:/usr/include/c++/7/iostream **** namespace std _GLIBCXX_VISIBILITY(default)
  43:/usr/include/c++/7/iostream **** {
  44:/usr/include/c++/7/iostream **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  45:/usr/include/c++/7/iostream **** 
  46:/usr/include/c++/7/iostream ****   /**
  47:/usr/include/c++/7/iostream ****    *  @name Standard Stream Objects
  48:/usr/include/c++/7/iostream ****    *
  49:/usr/include/c++/7/iostream ****    *  The &lt;iostream&gt; header declares the eight <em>standard stream
  50:/usr/include/c++/7/iostream ****    *  objects</em>.  For other declarations, see
  51:/usr/include/c++/7/iostream ****    *  http://gcc.gnu.org/onlinedocs/libstdc++/manual/io.html
  52:/usr/include/c++/7/iostream ****    *  and the @link iosfwd I/O forward declarations @endlink
  53:/usr/include/c++/7/iostream ****    *
  54:/usr/include/c++/7/iostream ****    *  They are required by default to cooperate with the global C
  55:/usr/include/c++/7/iostream ****    *  library's @c FILE streams, and to be available during program
  56:/usr/include/c++/7/iostream ****    *  startup and termination. For more information, see the section of the
  57:/usr/include/c++/7/iostream ****    *  manual linked to above.
  58:/usr/include/c++/7/iostream ****   */
  59:/usr/include/c++/7/iostream ****   //@{
  60:/usr/include/c++/7/iostream ****   extern istream cin;		/// Linked to standard input
  61:/usr/include/c++/7/iostream ****   extern ostream cout;		/// Linked to standard output
  62:/usr/include/c++/7/iostream ****   extern ostream cerr;		/// Linked to standard error (unbuffered)
  63:/usr/include/c++/7/iostream ****   extern ostream clog;		/// Linked to standard error (buffered)
  64:/usr/include/c++/7/iostream **** 
  65:/usr/include/c++/7/iostream **** #ifdef _GLIBCXX_USE_WCHAR_T
  66:/usr/include/c++/7/iostream ****   extern wistream wcin;		/// Linked to standard input
  67:/usr/include/c++/7/iostream ****   extern wostream wcout;	/// Linked to standard output
  68:/usr/include/c++/7/iostream ****   extern wostream wcerr;	/// Linked to standard error (unbuffered)
  69:/usr/include/c++/7/iostream ****   extern wostream wclog;	/// Linked to standard error (buffered)
  70:/usr/include/c++/7/iostream **** #endif
  71:/usr/include/c++/7/iostream ****   //@}
  72:/usr/include/c++/7/iostream **** 
  73:/usr/include/c++/7/iostream ****   // For construction of filebuffers for cout, cin, cerr, clog et. al.
  74:/usr/include/c++/7/iostream ****   static ios_base::Init __ioinit;
 1535              		.loc 11 74 0
 1536 00c0 488D3D00 		leaq	_ZStL8__ioinit(%rip), %rdi
 1536      000000
 1537              	.LBE902:
 1538              	.LBE901:
 1539              		.loc 2 84 0
 1540 00c7 4883EC08 		subq	$8, %rsp
 1541              		.cfi_def_cfa_offset 16
 1542              	.LBB905:
 1543              	.LBB903:
 1544              		.loc 11 74 0
 1545 00cb E8000000 		call	_ZNSt8ios_base4InitC1Ev@PLT
 1545      00
 1546              	.LVL145:
 1547 00d0 488B3D00 		movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rdi
 1547      000000
 1548 00d7 488D1500 		leaq	__dso_handle(%rip), %rdx
 1548      000000
 1549 00de 488D3500 		leaq	_ZStL8__ioinit(%rip), %rsi
 1549      000000
 1550              	.LBE903:
 1551              	.LBE905:
 1552              		.loc 2 84 0
 1553 00e5 4883C408 		addq	$8, %rsp
 1554              		.cfi_def_cfa_offset 8
 1555              	.LBB906:
 1556              	.LBB904:
 1557              		.loc 11 74 0
 1558 00e9 E9000000 		jmp	__cxa_atexit@PLT
 1558      00
 1559              	.LVL146:
 1560              	.LBE904:
 1561              	.LBE906:
 1562              		.cfi_endproc
 1563              	.LFE3657:
 1565              		.section	.init_array,"aw"
 1566              		.align 8
 1567 0000 00000000 		.quad	_GLOBAL__sub_I_main
 1567      00000000 
 1568              		.local	_ZStL8__ioinit
 1569              		.comm	_ZStL8__ioinit,1,1
 1570              		.section	.rodata.cst8,"aM",@progbits,8
 1571              		.align 8
 1572              	.LC1:
 1573 0000 00000000 		.long	0
 1574 0004 00408F40 		.long	1083129856
 1575              		.align 8
 1576              	.LC6:
 1577 0008 00000000 		.long	0
 1578 000c 0088C340 		.long	1086556160
 1579              		.align 8
 1580              	.LC7:
 1581 0010 00000000 		.long	0
 1582 0014 0000F03F 		.long	1072693248
 1583              		.section	.rodata.cst4,"aM",@progbits,4
 1584              		.align 4
 1585              	.LC8:
 1586 0000 0000804F 		.long	1333788672
 1587              		.section	.rodata.cst8
 1588              		.align 8
 1589              	.LC10:
 1590 0018 00000000 		.long	0
 1591 001c 00C06240 		.long	1080213504
 1592              		.text
 1593              	.Letext0:
 1594              		.file 12 "/usr/include/c++/7/bits/basic_string.tcc"
 1595              		.file 13 "/usr/include/c++/7/bits/stringfwd.h"
 1596              		.file 14 "/usr/include/c++/7/cwchar"
 1597              		.file 15 "/usr/include/c++/7/new"
 1598              		.file 16 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 1599              		.file 17 "/usr/include/c++/7/bits/exception_ptr.h"
 1600              		.file 18 "/usr/include/c++/7/type_traits"
 1601              		.file 19 "/usr/include/c++/7/bits/cpp_type_traits.h"
 1602              		.file 20 "/usr/include/c++/7/bits/stl_pair.h"
 1603              		.file 21 "/usr/include/c++/7/bits/stl_iterator_base_types.h"
 1604              		.file 22 "/usr/include/c++/7/debug/debug.h"
 1605              		.file 23 "/usr/include/c++/7/cstdint"
 1606              		.file 24 "/usr/include/c++/7/clocale"
 1607              		.file 25 "/usr/include/c++/7/bits/allocator.h"
 1608              		.file 26 "/usr/include/c++/7/cstdlib"
 1609              		.file 27 "/usr/include/c++/7/cstdio"
 1610              		.file 28 "/usr/include/c++/7/bits/alloc_traits.h"
 1611              		.file 29 "/usr/include/c++/7/initializer_list"
 1612              		.file 30 "/usr/include/c++/7/chrono"
 1613              		.file 31 "/usr/include/c++/7/system_error"
 1614              		.file 32 "/usr/include/c++/7/bits/ios_base.h"
 1615              		.file 33 "/usr/include/c++/7/cwctype"
 1616              		.file 34 "/usr/include/c++/7/bits/ostream.tcc"
 1617              		.file 35 "/usr/include/c++/7/iosfwd"
 1618              		.file 36 "/usr/include/c++/7/ctime"
 1619              		.file 37 "<built-in>"
 1620              		.file 38 "/usr/include/c++/7/ratio"
 1621              		.file 39 "/usr/include/c++/7/cmath"
 1622              		.file 40 "/usr/include/c++/7/bits/uniform_int_dist.h"
 1623              		.file 41 "/usr/include/c++/7/bits/ptr_traits.h"
 1624              		.file 42 "/usr/include/c++/7/bits/stl_iterator_base_funcs.h"
 1625              		.file 43 "/usr/include/c++/7/bits/move.h"
 1626              		.file 44 "/usr/include/c++/7/bits/ostream_insert.h"
 1627              		.file 45 "/usr/include/c++/7/bits/functexcept.h"
 1628              		.file 46 "/usr/include/c++/7/bits/predefined_ops.h"
 1629              		.file 47 "/usr/include/c++/7/ext/numeric_traits.h"
 1630              		.file 48 "/usr/include/c++/7/ext/alloc_traits.h"
 1631              		.file 49 "/usr/include/c++/7/bits/stl_iterator.h"
 1632              		.file 50 "/usr/include/c++/7/ext/type_traits.h"
 1633              		.file 51 "/usr/lib/gcc/x86_64-linux-gnu/7/include/stddef.h"
 1634              		.file 52 "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h"
 1635              		.file 53 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h"
 1636              		.file 54 "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h"
 1637              		.file 55 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h"
 1638              		.file 56 "/usr/include/libio.h"
 1639              		.file 57 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
 1640              		.file 58 "/usr/include/wchar.h"
 1641              		.file 59 "/usr/include/x86_64-linux-gnu/bits/wchar2.h"
 1642              		.file 60 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 1643              		.file 61 "/usr/include/x86_64-linux-gnu/bits/types.h"
 1644              		.file 62 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 1645              		.file 63 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 1646              		.file 64 "/usr/include/stdint.h"
 1647              		.file 65 "/usr/include/locale.h"
 1648              		.file 66 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
 1649              		.file 67 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
 1650              		.file 68 "/usr/include/time.h"
 1651              		.file 69 "/usr/include/x86_64-linux-gnu/c++/7/bits/atomic_word.h"
 1652              		.file 70 "/usr/include/stdlib.h"
 1653              		.file 71 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h"
 1654              		.file 72 "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h"
 1655              		.file 73 "/usr/include/x86_64-linux-gnu/bits/stdlib.h"
 1656              		.file 74 "/usr/include/_G_config.h"
 1657              		.file 75 "/usr/include/stdio.h"
 1658              		.file 76 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h"
 1659              		.file 77 "/usr/include/x86_64-linux-gnu/bits/stdio2.h"
 1660              		.file 78 "/usr/include/x86_64-linux-gnu/bits/stdio.h"
 1661              		.file 79 "/usr/include/errno.h"
 1662              		.file 80 "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h"
 1663              		.file 81 "/usr/include/wctype.h"
 1664              		.file 82 "StopWatch.h"
 1665              		.file 83 "/usr/include/math.h"
 1666              		.file 84 "/usr/include/c++/7/math.h"
 1667              		.file 85 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
 1668              		.file 86 "EuclideanDistance.h"
 25676              		.align 8
 25679              	DW.ref.__gxx_personality_v0:
 25680 0000 00000000 		.quad	__gxx_personality_v0
 25680      00000000 
 25681              		.hidden	__dso_handle
 25682              		.ident	"GCC: (Ubuntu 7.2.0-8ubuntu3) 7.2.0"
 25683              		.section	.note.GNU-stack,"",@progbits
   1              		.file	"StopWatch.cpp"
   2              		.text
   3              	.Ltext0:
   4              		.align 2
   5              		.p2align 4,,15
   6              		.globl	_ZN9StopWatchC2Ev
   8              	_ZN9StopWatchC2Ev:
   9              	.LFB316:
  10              		.file 1 "StopWatch.cpp"
   1:StopWatch.cpp **** /* 
   2:StopWatch.cpp ****  * File:   StopWatch.cpp
   3:StopWatch.cpp ****  * Author: KjellKod
   4:StopWatch.cpp ****  * From: https://github.com/KjellKod/StopWatch
   5:StopWatch.cpp ****  * 
   6:StopWatch.cpp ****  * Created on 2014-02-07 
   7:StopWatch.cpp ****  */
   8:StopWatch.cpp **** 
   9:StopWatch.cpp **** #include "StopWatch.h"
  10:StopWatch.cpp **** StopWatch::StopWatch() : mStart(clock::now()) {
  11              		.loc 1 10 0
  12              		.cfi_startproc
  13              	.LVL0:
  14 0000 53       		pushq	%rbx
  15              		.cfi_def_cfa_offset 16
  16              		.cfi_offset 3, -16
  17              		.loc 1 10 0
  18 0001 4889FB   		movq	%rdi, %rbx
  19              	.LBB100:
  20 0004 E8000000 		call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
  20      00
  21              	.LVL1:
  22 0009 488903   		movq	%rax, (%rbx)
  23              	.LBE100:
  11:StopWatch.cpp ****    static_assert(std::chrono::steady_clock::is_steady, "Serious OS/C++ library issues. Steady clock
  12:StopWatch.cpp ****    // FYI:  This would fail  static_assert(std::chrono::high_resolution_clock::is_steady(), "High R
  13:StopWatch.cpp **** }
  24              		.loc 1 13 0
  25 000c 5B       		popq	%rbx
  26              		.cfi_def_cfa_offset 8
  27              	.LVL2:
  28 000d C3       		ret
  29              		.cfi_endproc
  30              	.LFE316:
  32              		.globl	_ZN9StopWatchC1Ev
  33              		.set	_ZN9StopWatchC1Ev,_ZN9StopWatchC2Ev
  34              		.align 2
  35 000e 6690     		.p2align 4,,15
  36              		.globl	_ZN9StopWatchC2ERKS_
  38              	_ZN9StopWatchC2ERKS_:
  39              	.LFB319:
  14:StopWatch.cpp **** 
  15:StopWatch.cpp **** StopWatch::StopWatch(const StopWatch& other): mStart(other.mStart) { 
  40              		.loc 1 15 0
  41              		.cfi_startproc
  42              	.LVL3:
  43              	.LBB101:
  44              		.loc 1 15 0
  45 0010 488B06   		movq	(%rsi), %rax
  46 0013 488907   		movq	%rax, (%rdi)
  47              	.LBE101:
  16:StopWatch.cpp **** }
  48              		.loc 1 16 0
  49 0016 C3       		ret
  50              		.cfi_endproc
  51              	.LFE319:
  53              		.globl	_ZN9StopWatchC1ERKS_
  54              		.set	_ZN9StopWatchC1ERKS_,_ZN9StopWatchC2ERKS_
  55 0017 90       		.align 2
  56 0018 0F1F8400 		.p2align 4,,15
  56      00000000 
  57              		.globl	_ZN9StopWatchaSERKS_
  59              	_ZN9StopWatchaSERKS_:
  60              	.LFB321:
  17:StopWatch.cpp **** 
  18:StopWatch.cpp **** /// @return StopWatch::StopWatch&  - assignment operator.
  19:StopWatch.cpp **** StopWatch& StopWatch::operator=(const StopWatch& rhs) {
  61              		.loc 1 19 0
  62              		.cfi_startproc
  63              	.LVL4:
  20:StopWatch.cpp ****       mStart = rhs.mStart;
  64              		.loc 1 20 0
  65 0020 488B16   		movq	(%rsi), %rdx
  19:StopWatch.cpp ****       mStart = rhs.mStart;
  66              		.loc 1 19 0
  67 0023 4889F8   		movq	%rdi, %rax
  68              		.loc 1 20 0
  69 0026 488917   		movq	%rdx, (%rdi)
  21:StopWatch.cpp ****       return *this;
  22:StopWatch.cpp **** }
  70              		.loc 1 22 0
  71 0029 C3       		ret
  72              		.cfi_endproc
  73              	.LFE321:
  75              		.align 2
  76 002a 660F1F44 		.p2align 4,,15
  76      0000
  77              		.globl	_ZNK9StopWatch9ElapsedUsEv
  79              	_ZNK9StopWatch9ElapsedUsEv:
  80              	.LFB322:
  23:StopWatch.cpp **** 
  24:StopWatch.cpp **** /// @return the elapsed microseconds since start
  25:StopWatch.cpp **** uint64_t StopWatch::ElapsedUs() const {
  81              		.loc 1 25 0
  82              		.cfi_startproc
  83              	.LVL5:
  84 0030 53       		pushq	%rbx
  85              		.cfi_def_cfa_offset 16
  86              		.cfi_offset 3, -16
  87              		.loc 1 25 0
  88 0031 4889FB   		movq	%rdi, %rbx
  26:StopWatch.cpp ****    return std::chrono::duration_cast<microseconds>(clock::now() - mStart).count();
  89              		.loc 1 26 0
  90 0034 E8000000 		call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
  90      00
  91              	.LVL6:
  92              	.LBB102:
  93              	.LBB103:
  94              	.LBB104:
  95              		.file 2 "/usr/include/c++/7/chrono"
   1:/usr/include/c++/7/chrono **** // <chrono> -*- C++ -*-
   2:/usr/include/c++/7/chrono **** 
   3:/usr/include/c++/7/chrono **** // Copyright (C) 2008-2017 Free Software Foundation, Inc.
   4:/usr/include/c++/7/chrono **** //
   5:/usr/include/c++/7/chrono **** // This file is part of the GNU ISO C++ Library.  This library is free
   6:/usr/include/c++/7/chrono **** // software; you can redistribute it and/or modify it under the
   7:/usr/include/c++/7/chrono **** // terms of the GNU General Public License as published by the
   8:/usr/include/c++/7/chrono **** // Free Software Foundation; either version 3, or (at your option)
   9:/usr/include/c++/7/chrono **** // any later version.
  10:/usr/include/c++/7/chrono **** 
  11:/usr/include/c++/7/chrono **** // This library is distributed in the hope that it will be useful,
  12:/usr/include/c++/7/chrono **** // but WITHOUT ANY WARRANTY; without even the implied warranty of
  13:/usr/include/c++/7/chrono **** // MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  14:/usr/include/c++/7/chrono **** // GNU General Public License for more details.
  15:/usr/include/c++/7/chrono **** 
  16:/usr/include/c++/7/chrono **** // Under Section 7 of GPL version 3, you are granted additional
  17:/usr/include/c++/7/chrono **** // permissions described in the GCC Runtime Library Exception, version
  18:/usr/include/c++/7/chrono **** // 3.1, as published by the Free Software Foundation.
  19:/usr/include/c++/7/chrono **** 
  20:/usr/include/c++/7/chrono **** // You should have received a copy of the GNU General Public License and
  21:/usr/include/c++/7/chrono **** // a copy of the GCC Runtime Library Exception along with this program;
  22:/usr/include/c++/7/chrono **** // see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see
  23:/usr/include/c++/7/chrono **** // <http://www.gnu.org/licenses/>.
  24:/usr/include/c++/7/chrono **** 
  25:/usr/include/c++/7/chrono **** /** @file include/chrono
  26:/usr/include/c++/7/chrono ****  *  This is a Standard C++ Library header.
  27:/usr/include/c++/7/chrono ****  */
  28:/usr/include/c++/7/chrono **** 
  29:/usr/include/c++/7/chrono **** #ifndef _GLIBCXX_CHRONO
  30:/usr/include/c++/7/chrono **** #define _GLIBCXX_CHRONO 1
  31:/usr/include/c++/7/chrono **** 
  32:/usr/include/c++/7/chrono **** #pragma GCC system_header
  33:/usr/include/c++/7/chrono **** 
  34:/usr/include/c++/7/chrono **** #if __cplusplus < 201103L
  35:/usr/include/c++/7/chrono **** # include <bits/c++0x_warning.h>
  36:/usr/include/c++/7/chrono **** #else
  37:/usr/include/c++/7/chrono **** 
  38:/usr/include/c++/7/chrono **** #include <ratio>
  39:/usr/include/c++/7/chrono **** #include <type_traits>
  40:/usr/include/c++/7/chrono **** #include <limits>
  41:/usr/include/c++/7/chrono **** #include <ctime>
  42:/usr/include/c++/7/chrono **** #include <bits/parse_numbers.h> // for literals support.
  43:/usr/include/c++/7/chrono **** 
  44:/usr/include/c++/7/chrono **** #ifdef _GLIBCXX_USE_C99_STDINT_TR1
  45:/usr/include/c++/7/chrono **** 
  46:/usr/include/c++/7/chrono **** namespace std _GLIBCXX_VISIBILITY(default)
  47:/usr/include/c++/7/chrono **** {
  48:/usr/include/c++/7/chrono ****   /**
  49:/usr/include/c++/7/chrono ****    * @defgroup chrono Time
  50:/usr/include/c++/7/chrono ****    * @ingroup utilities
  51:/usr/include/c++/7/chrono ****    *
  52:/usr/include/c++/7/chrono ****    * Classes and functions for time.
  53:/usr/include/c++/7/chrono ****    * @{
  54:/usr/include/c++/7/chrono ****    */
  55:/usr/include/c++/7/chrono **** 
  56:/usr/include/c++/7/chrono ****   /** @namespace std::chrono
  57:/usr/include/c++/7/chrono ****    *  @brief ISO C++ 2011 entities sub-namespace for time and date.
  58:/usr/include/c++/7/chrono ****    */
  59:/usr/include/c++/7/chrono ****   namespace chrono
  60:/usr/include/c++/7/chrono ****   {
  61:/usr/include/c++/7/chrono ****   _GLIBCXX_BEGIN_NAMESPACE_VERSION
  62:/usr/include/c++/7/chrono **** 
  63:/usr/include/c++/7/chrono ****     template<typename _Rep, typename _Period = ratio<1>>
  64:/usr/include/c++/7/chrono ****       struct duration;
  65:/usr/include/c++/7/chrono **** 
  66:/usr/include/c++/7/chrono ****     template<typename _Clock, typename _Dur = typename _Clock::duration>
  67:/usr/include/c++/7/chrono ****       struct time_point;
  68:/usr/include/c++/7/chrono **** 
  69:/usr/include/c++/7/chrono ****   _GLIBCXX_END_NAMESPACE_VERSION
  70:/usr/include/c++/7/chrono ****   }
  71:/usr/include/c++/7/chrono **** 
  72:/usr/include/c++/7/chrono **** _GLIBCXX_BEGIN_NAMESPACE_VERSION
  73:/usr/include/c++/7/chrono **** 
  74:/usr/include/c++/7/chrono ****   // 20.11.4.3 specialization of common_type (for duration, sfinae-friendly)
  75:/usr/include/c++/7/chrono **** 
  76:/usr/include/c++/7/chrono ****   template<typename _CT, typename _Period1, typename _Period2>
  77:/usr/include/c++/7/chrono ****     struct __duration_common_type_wrapper
  78:/usr/include/c++/7/chrono ****     {
  79:/usr/include/c++/7/chrono ****     private:
  80:/usr/include/c++/7/chrono ****       typedef __static_gcd<_Period1::num, _Period2::num> __gcd_num;
  81:/usr/include/c++/7/chrono ****       typedef __static_gcd<_Period1::den, _Period2::den> __gcd_den;
  82:/usr/include/c++/7/chrono ****       typedef typename _CT::type __cr;
  83:/usr/include/c++/7/chrono ****       typedef ratio<__gcd_num::value,
  84:/usr/include/c++/7/chrono ****         (_Period1::den / __gcd_den::value) * _Period2::den> __r;
  85:/usr/include/c++/7/chrono ****     public:
  86:/usr/include/c++/7/chrono ****       typedef __success_type<chrono::duration<__cr, __r>> type;
  87:/usr/include/c++/7/chrono ****     };
  88:/usr/include/c++/7/chrono **** 
  89:/usr/include/c++/7/chrono ****   template<typename _Period1, typename _Period2>
  90:/usr/include/c++/7/chrono ****     struct __duration_common_type_wrapper<__failure_type, _Period1, _Period2>
  91:/usr/include/c++/7/chrono ****     { typedef __failure_type type; };
  92:/usr/include/c++/7/chrono **** 
  93:/usr/include/c++/7/chrono ****   template<typename _Rep1, typename _Period1, typename _Rep2, typename _Period2>
  94:/usr/include/c++/7/chrono ****     struct common_type<chrono::duration<_Rep1, _Period1>,
  95:/usr/include/c++/7/chrono ****              chrono::duration<_Rep2, _Period2>>
  96:/usr/include/c++/7/chrono ****     : public __duration_common_type_wrapper<typename __member_type_wrapper<
  97:/usr/include/c++/7/chrono ****              common_type<_Rep1, _Rep2>>::type, _Period1, _Period2>::type
  98:/usr/include/c++/7/chrono ****     { };
  99:/usr/include/c++/7/chrono **** 
 100:/usr/include/c++/7/chrono ****   // 20.11.4.3 specialization of common_type (for time_point, sfinae-friendly)
 101:/usr/include/c++/7/chrono **** 
 102:/usr/include/c++/7/chrono ****   template<typename _CT, typename _Clock>
 103:/usr/include/c++/7/chrono ****     struct __timepoint_common_type_wrapper
 104:/usr/include/c++/7/chrono ****     {
 105:/usr/include/c++/7/chrono ****       typedef __success_type<chrono::time_point<_Clock, typename _CT::type>>
 106:/usr/include/c++/7/chrono ****         type;
 107:/usr/include/c++/7/chrono ****     };
 108:/usr/include/c++/7/chrono **** 
 109:/usr/include/c++/7/chrono ****   template<typename _Clock>
 110:/usr/include/c++/7/chrono ****     struct __timepoint_common_type_wrapper<__failure_type, _Clock>
 111:/usr/include/c++/7/chrono ****     { typedef __failure_type type; };
 112:/usr/include/c++/7/chrono **** 
 113:/usr/include/c++/7/chrono ****   template<typename _Clock, typename _Duration1, typename _Duration2>
 114:/usr/include/c++/7/chrono ****     struct common_type<chrono::time_point<_Clock, _Duration1>,
 115:/usr/include/c++/7/chrono ****              chrono::time_point<_Clock, _Duration2>>
 116:/usr/include/c++/7/chrono ****     : public __timepoint_common_type_wrapper<typename __member_type_wrapper<
 117:/usr/include/c++/7/chrono ****              common_type<_Duration1, _Duration2>>::type, _Clock>::type
 118:/usr/include/c++/7/chrono ****     { };
 119:/usr/include/c++/7/chrono **** 
 120:/usr/include/c++/7/chrono **** _GLIBCXX_END_NAMESPACE_VERSION
 121:/usr/include/c++/7/chrono **** 
 122:/usr/include/c++/7/chrono ****   namespace chrono
 123:/usr/include/c++/7/chrono ****   {
 124:/usr/include/c++/7/chrono ****   _GLIBCXX_BEGIN_NAMESPACE_VERSION
 125:/usr/include/c++/7/chrono **** 
 126:/usr/include/c++/7/chrono ****     // Primary template for duration_cast impl.
 127:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _CF, typename _CR,
 128:/usr/include/c++/7/chrono **** 	     bool _NumIsOne = false, bool _DenIsOne = false>
 129:/usr/include/c++/7/chrono ****       struct __duration_cast_impl
 130:/usr/include/c++/7/chrono ****       {
 131:/usr/include/c++/7/chrono **** 	template<typename _Rep, typename _Period>
 132:/usr/include/c++/7/chrono **** 	  static constexpr _ToDur
 133:/usr/include/c++/7/chrono **** 	  __cast(const duration<_Rep, _Period>& __d)
 134:/usr/include/c++/7/chrono **** 	  {
 135:/usr/include/c++/7/chrono **** 	    typedef typename _ToDur::rep			__to_rep;
 136:/usr/include/c++/7/chrono **** 	    return _ToDur(static_cast<__to_rep>(static_cast<_CR>(__d.count())
 137:/usr/include/c++/7/chrono **** 	      * static_cast<_CR>(_CF::num)
 138:/usr/include/c++/7/chrono **** 	      / static_cast<_CR>(_CF::den)));
 139:/usr/include/c++/7/chrono **** 	  }
 140:/usr/include/c++/7/chrono ****       };
 141:/usr/include/c++/7/chrono **** 
 142:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _CF, typename _CR>
 143:/usr/include/c++/7/chrono ****       struct __duration_cast_impl<_ToDur, _CF, _CR, true, true>
 144:/usr/include/c++/7/chrono ****       {
 145:/usr/include/c++/7/chrono **** 	template<typename _Rep, typename _Period>
 146:/usr/include/c++/7/chrono **** 	  static constexpr _ToDur
 147:/usr/include/c++/7/chrono **** 	  __cast(const duration<_Rep, _Period>& __d)
 148:/usr/include/c++/7/chrono **** 	  {
 149:/usr/include/c++/7/chrono **** 	    typedef typename _ToDur::rep			__to_rep;
 150:/usr/include/c++/7/chrono **** 	    return _ToDur(static_cast<__to_rep>(__d.count()));
 151:/usr/include/c++/7/chrono **** 	  }
 152:/usr/include/c++/7/chrono ****       };
 153:/usr/include/c++/7/chrono **** 
 154:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _CF, typename _CR>
 155:/usr/include/c++/7/chrono ****       struct __duration_cast_impl<_ToDur, _CF, _CR, true, false>
 156:/usr/include/c++/7/chrono ****       {
 157:/usr/include/c++/7/chrono **** 	template<typename _Rep, typename _Period>
 158:/usr/include/c++/7/chrono **** 	  static constexpr _ToDur
 159:/usr/include/c++/7/chrono **** 	  __cast(const duration<_Rep, _Period>& __d)
 160:/usr/include/c++/7/chrono **** 	  {
 161:/usr/include/c++/7/chrono **** 	    typedef typename _ToDur::rep			__to_rep;
 162:/usr/include/c++/7/chrono **** 	    return _ToDur(static_cast<__to_rep>(
 163:/usr/include/c++/7/chrono **** 	      static_cast<_CR>(__d.count()) / static_cast<_CR>(_CF::den)));
 164:/usr/include/c++/7/chrono **** 	  }
 165:/usr/include/c++/7/chrono ****       };
 166:/usr/include/c++/7/chrono **** 
 167:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _CF, typename _CR>
 168:/usr/include/c++/7/chrono ****       struct __duration_cast_impl<_ToDur, _CF, _CR, false, true>
 169:/usr/include/c++/7/chrono ****       {
 170:/usr/include/c++/7/chrono **** 	template<typename _Rep, typename _Period>
 171:/usr/include/c++/7/chrono **** 	  static constexpr _ToDur
 172:/usr/include/c++/7/chrono **** 	  __cast(const duration<_Rep, _Period>& __d)
 173:/usr/include/c++/7/chrono **** 	  {
 174:/usr/include/c++/7/chrono **** 	    typedef typename _ToDur::rep			__to_rep;
 175:/usr/include/c++/7/chrono **** 	    return _ToDur(static_cast<__to_rep>(
 176:/usr/include/c++/7/chrono **** 	      static_cast<_CR>(__d.count()) * static_cast<_CR>(_CF::num)));
 177:/usr/include/c++/7/chrono **** 	  }
 178:/usr/include/c++/7/chrono ****       };
 179:/usr/include/c++/7/chrono **** 
 180:/usr/include/c++/7/chrono ****     template<typename _Tp>
 181:/usr/include/c++/7/chrono ****       struct __is_duration
 182:/usr/include/c++/7/chrono ****       : std::false_type
 183:/usr/include/c++/7/chrono ****       { };
 184:/usr/include/c++/7/chrono **** 
 185:/usr/include/c++/7/chrono ****     template<typename _Rep, typename _Period>
 186:/usr/include/c++/7/chrono ****       struct __is_duration<duration<_Rep, _Period>>
 187:/usr/include/c++/7/chrono ****       : std::true_type
 188:/usr/include/c++/7/chrono ****       { };
 189:/usr/include/c++/7/chrono **** 
 190:/usr/include/c++/7/chrono ****     /// duration_cast
 191:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _Rep, typename _Period>
 192:/usr/include/c++/7/chrono ****       constexpr typename enable_if<__is_duration<_ToDur>::value,
 193:/usr/include/c++/7/chrono **** 				   _ToDur>::type
 194:/usr/include/c++/7/chrono ****       duration_cast(const duration<_Rep, _Period>& __d)
 195:/usr/include/c++/7/chrono ****       {
 196:/usr/include/c++/7/chrono **** 	typedef typename _ToDur::period				__to_period;
 197:/usr/include/c++/7/chrono **** 	typedef typename _ToDur::rep				__to_rep;
 198:/usr/include/c++/7/chrono **** 	typedef ratio_divide<_Period, __to_period> 		__cf;
 199:/usr/include/c++/7/chrono **** 	typedef typename common_type<__to_rep, _Rep, intmax_t>::type
 200:/usr/include/c++/7/chrono **** 	  							__cr;
 201:/usr/include/c++/7/chrono **** 	typedef  __duration_cast_impl<_ToDur, __cf, __cr,
 202:/usr/include/c++/7/chrono **** 				      __cf::num == 1, __cf::den == 1> __dc;
 203:/usr/include/c++/7/chrono **** 	return __dc::__cast(__d);
 204:/usr/include/c++/7/chrono ****       }
 205:/usr/include/c++/7/chrono **** 
 206:/usr/include/c++/7/chrono ****     /// treat_as_floating_point
 207:/usr/include/c++/7/chrono ****     template<typename _Rep>
 208:/usr/include/c++/7/chrono ****       struct treat_as_floating_point
 209:/usr/include/c++/7/chrono ****       : is_floating_point<_Rep>
 210:/usr/include/c++/7/chrono ****       { };
 211:/usr/include/c++/7/chrono **** 
 212:/usr/include/c++/7/chrono **** #if __cplusplus > 201402L
 213:/usr/include/c++/7/chrono ****     template <typename _Rep>
 214:/usr/include/c++/7/chrono ****       inline constexpr bool treat_as_floating_point_v =
 215:/usr/include/c++/7/chrono ****         treat_as_floating_point<_Rep>::value;
 216:/usr/include/c++/7/chrono **** #endif // C++17
 217:/usr/include/c++/7/chrono **** 
 218:/usr/include/c++/7/chrono **** #if __cplusplus > 201402L
 219:/usr/include/c++/7/chrono **** # define __cpp_lib_chrono 201510
 220:/usr/include/c++/7/chrono **** 
 221:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _Rep, typename _Period>
 222:/usr/include/c++/7/chrono ****       constexpr enable_if_t<__is_duration<_ToDur>::value, _ToDur>
 223:/usr/include/c++/7/chrono ****       floor(const duration<_Rep, _Period>& __d)
 224:/usr/include/c++/7/chrono ****       {
 225:/usr/include/c++/7/chrono **** 	auto __to = chrono::duration_cast<_ToDur>(__d);
 226:/usr/include/c++/7/chrono **** 	if (__to > __d)
 227:/usr/include/c++/7/chrono **** 	  return __to - _ToDur{1};
 228:/usr/include/c++/7/chrono **** 	return __to;
 229:/usr/include/c++/7/chrono ****       }
 230:/usr/include/c++/7/chrono **** 
 231:/usr/include/c++/7/chrono ****     template<typename _ToDur, typename _Rep, typename _Period>
 232:/usr/include/c++/7/chrono ****       constexpr enable_if_t<__is_duration<_ToDur>::value, _ToDur>
 233:/usr/include/c++/7/chrono ****       ceil(const duration<_Rep, _Period>& __d)
 234:/usr/include/c++/7/chrono ****       {
 235:/usr/include/c++/7/chrono **** 	auto __to = chrono::duration_cast<_ToDur>(__d);
 236:/usr/include/c++/7/chrono **** 	if (__to < __d)
 237:/usr/include/c++/7/chrono **** 	  return __to + _ToDur{1};
 238:/usr/include/c++/7/chrono **** 	return __to;
 239:/usr/include/c++/7/chrono ****       }
 240:/usr/include/c++/7/chrono **** 
 241:/usr/include/c++/7/chrono ****     template <typename _ToDur, typename _Rep, typename _Period>
 242:/usr/include/c++/7/chrono ****       constexpr enable_if_t<
 243:/usr/include/c++/7/chrono **** 	__and_<__is_duration<_ToDur>,
 244:/usr/include/c++/7/chrono **** 	       __not_<treat_as_floating_point<typename _ToDur::rep>>>::value,
 245:/usr/include/c++/7/chrono **** 	_ToDur>
 246:/usr/include/c++/7/chrono ****       round(const duration<_Rep, _Period>& __d)
 247:/usr/include/c++/7/chrono ****       {
 248:/usr/include/c++/7/chrono **** 	_ToDur __t0 = chrono::floor<_ToDur>(__d);
 249:/usr/include/c++/7/chrono **** 	_ToDur __t1 = __t0 + _ToDur{1};
 250:/usr/include/c++/7/chrono **** 	auto __diff0 = __d - __t0;
 251:/usr/include/c++/7/chrono **** 	auto __diff1 = __t1 - __d;
 252:/usr/include/c++/7/chrono **** 	if (__diff0 == __diff1)
 253:/usr/include/c++/7/chrono **** 	{
 254:/usr/include/c++/7/chrono **** 	    if (__t0.count() & 1)
 255:/usr/include/c++/7/chrono **** 		return __t1;
 256:/usr/include/c++/7/chrono **** 	    return __t0;
 257:/usr/include/c++/7/chrono **** 	}
 258:/usr/include/c++/7/chrono **** 	else if (__diff0 < __diff1)
 259:/usr/include/c++/7/chrono **** 	    return __t0;
 260:/usr/include/c++/7/chrono **** 	return __t1;
 261:/usr/include/c++/7/chrono ****       }
 262:/usr/include/c++/7/chrono **** 
 263:/usr/include/c++/7/chrono ****     template<typename _Rep, typename _Period>
 264:/usr/include/c++/7/chrono ****       constexpr
 265:/usr/include/c++/7/chrono ****       enable_if_t<numeric_limits<_Rep>::is_signed, duration<_Rep, _Period>>
 266:/usr/include/c++/7/chrono ****       abs(duration<_Rep, _Period> __d)
 267:/usr/include/c++/7/chrono ****       {
 268:/usr/include/c++/7/chrono **** 	if (__d >= __d.zero())
 269:/usr/include/c++/7/chrono **** 	  return __d;
 270:/usr/include/c++/7/chrono **** 	return -__d;
 271:/usr/include/c++/7/chrono ****       }
 272:/usr/include/c++/7/chrono **** #endif // C++17
 273:/usr/include/c++/7/chrono **** 
 274:/usr/include/c++/7/chrono ****     /// duration_values
 275:/usr/include/c++/7/chrono ****     template<typename _Rep>
 276:/usr/include/c++/7/chrono ****       struct duration_values
 277:/usr/include/c++/7/chrono ****       {
 278:/usr/include/c++/7/chrono **** 	static constexpr _Rep
 279:/usr/include/c++/7/chrono **** 	zero()
 280:/usr/include/c++/7/chrono **** 	{ return _Rep(0); }
 281:/usr/include/c++/7/chrono **** 
 282:/usr/include/c++/7/chrono **** 	static constexpr _Rep
 283:/usr/include/c++/7/chrono **** 	max()
 284:/usr/include/c++/7/chrono **** 	{ return numeric_limits<_Rep>::max(); }
 285:/usr/include/c++/7/chrono **** 
 286:/usr/include/c++/7/chrono **** 	static constexpr _Rep
 287:/usr/include/c++/7/chrono **** 	min()
 288:/usr/include/c++/7/chrono **** 	{ return numeric_limits<_Rep>::lowest(); }
 289:/usr/include/c++/7/chrono ****       };
 290:/usr/include/c++/7/chrono **** 
 291:/usr/include/c++/7/chrono ****     template<typename _Tp>
 292:/usr/include/c++/7/chrono ****       struct __is_ratio
 293:/usr/include/c++/7/chrono ****       : std::false_type
 294:/usr/include/c++/7/chrono ****       { };
 295:/usr/include/c++/7/chrono **** 
 296:/usr/include/c++/7/chrono ****     template<intmax_t _Num, intmax_t _Den>
 297:/usr/include/c++/7/chrono ****       struct __is_ratio<ratio<_Num, _Den>>
 298:/usr/include/c++/7/chrono ****       : std::true_type
 299:/usr/include/c++/7/chrono ****       { };
 300:/usr/include/c++/7/chrono **** 
 301:/usr/include/c++/7/chrono ****     /// duration
 302:/usr/include/c++/7/chrono ****     template<typename _Rep, typename _Period>
 303:/usr/include/c++/7/chrono ****       struct duration
 304:/usr/include/c++/7/chrono ****       {
 305:/usr/include/c++/7/chrono **** 	typedef _Rep						rep;
 306:/usr/include/c++/7/chrono **** 	typedef _Period 					period;
 307:/usr/include/c++/7/chrono **** 
 308:/usr/include/c++/7/chrono **** 	static_assert(!__is_duration<_Rep>::value, "rep cannot be a duration");
 309:/usr/include/c++/7/chrono **** 	static_assert(__is_ratio<_Period>::value,
 310:/usr/include/c++/7/chrono **** 		      "period must be a specialization of ratio");
 311:/usr/include/c++/7/chrono **** 	static_assert(_Period::num > 0, "period must be positive");
 312:/usr/include/c++/7/chrono **** 
 313:/usr/include/c++/7/chrono **** 	// 20.11.5.1 construction / copy / destroy
 314:/usr/include/c++/7/chrono **** 	constexpr duration() = default;
 315:/usr/include/c++/7/chrono **** 
 316:/usr/include/c++/7/chrono **** 	// NB: Make constexpr implicit. This cannot be explicitly
 317:/usr/include/c++/7/chrono **** 	// constexpr, as any UDT that is not a literal type with a
 318:/usr/include/c++/7/chrono **** 	// constexpr copy constructor will be ill-formed.
 319:/usr/include/c++/7/chrono **** 	duration(const duration&) = default;
 320:/usr/include/c++/7/chrono **** 
 321:/usr/include/c++/7/chrono **** 	template<typename _Rep2, typename = typename
 322:/usr/include/c++/7/chrono **** 	       enable_if<is_convertible<_Rep2, rep>::value
 323:/usr/include/c++/7/chrono **** 			 && (treat_as_floating_point<rep>::value
 324:/usr/include/c++/7/chrono **** 			     || !treat_as_floating_point<_Rep2>::value)>::type>
 325:/usr/include/c++/7/chrono **** 	  constexpr explicit duration(const _Rep2& __rep)
 326:/usr/include/c++/7/chrono **** 	  : __r(static_cast<rep>(__rep)) { }
 327:/usr/include/c++/7/chrono **** 
 328:/usr/include/c++/7/chrono **** 	template<typename _Rep2, typename _Period2, typename = typename
 329:/usr/include/c++/7/chrono **** 	       enable_if<treat_as_floating_point<rep>::value
 330:/usr/include/c++/7/chrono **** 			 || (ratio_divide<_Period2, period>::den == 1
 331:/usr/include/c++/7/chrono **** 			     && !treat_as_floating_point<_Rep2>::value)>::type>
 332:/usr/include/c++/7/chrono **** 	  constexpr duration(const duration<_Rep2, _Period2>& __d)
 333:/usr/include/c++/7/chrono **** 	  : __r(duration_cast<duration>(__d).count()) { }
 334:/usr/include/c++/7/chrono **** 
 335:/usr/include/c++/7/chrono **** 	~duration() = default;
 336:/usr/include/c++/7/chrono **** 	duration& operator=(const duration&) = default;
 337:/usr/include/c++/7/chrono **** 
 338:/usr/include/c++/7/chrono **** 	// 20.11.5.2 observer
 339:/usr/include/c++/7/chrono **** 	constexpr rep
 340:/usr/include/c++/7/chrono **** 	count() const
 341:/usr/include/c++/7/chrono **** 	{ return __r; }
 342:/usr/include/c++/7/chrono **** 
 343:/usr/include/c++/7/chrono **** 	// 20.11.5.3 arithmetic
 344:/usr/include/c++/7/chrono **** 	constexpr duration
 345:/usr/include/c++/7/chrono **** 	operator+() const
 346:/usr/include/c++/7/chrono **** 	{ return *this; }
 347:/usr/include/c++/7/chrono **** 
 348:/usr/include/c++/7/chrono **** 	constexpr duration
 349:/usr/include/c++/7/chrono **** 	operator-() const
 350:/usr/include/c++/7/chrono **** 	{ return duration(-__r); }
 351:/usr/include/c++/7/chrono **** 
 352:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 353:/usr/include/c++/7/chrono **** 	operator++()
 354:/usr/include/c++/7/chrono **** 	{
 355:/usr/include/c++/7/chrono **** 	  ++__r;
 356:/usr/include/c++/7/chrono **** 	  return *this;
 357:/usr/include/c++/7/chrono **** 	}
 358:/usr/include/c++/7/chrono **** 
 359:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration
 360:/usr/include/c++/7/chrono **** 	operator++(int)
 361:/usr/include/c++/7/chrono **** 	{ return duration(__r++); }
 362:/usr/include/c++/7/chrono **** 
 363:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 364:/usr/include/c++/7/chrono **** 	operator--()
 365:/usr/include/c++/7/chrono **** 	{
 366:/usr/include/c++/7/chrono **** 	  --__r;
 367:/usr/include/c++/7/chrono **** 	  return *this;
 368:/usr/include/c++/7/chrono **** 	}
 369:/usr/include/c++/7/chrono **** 
 370:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration
 371:/usr/include/c++/7/chrono **** 	operator--(int)
 372:/usr/include/c++/7/chrono **** 	{ return duration(__r--); }
 373:/usr/include/c++/7/chrono **** 
 374:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 375:/usr/include/c++/7/chrono **** 	operator+=(const duration& __d)
 376:/usr/include/c++/7/chrono **** 	{
 377:/usr/include/c++/7/chrono **** 	  __r += __d.count();
 378:/usr/include/c++/7/chrono **** 	  return *this;
 379:/usr/include/c++/7/chrono **** 	}
 380:/usr/include/c++/7/chrono **** 
 381:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 382:/usr/include/c++/7/chrono **** 	operator-=(const duration& __d)
 383:/usr/include/c++/7/chrono **** 	{
 384:/usr/include/c++/7/chrono **** 	  __r -= __d.count();
 385:/usr/include/c++/7/chrono **** 	  return *this;
 386:/usr/include/c++/7/chrono **** 	}
 387:/usr/include/c++/7/chrono **** 
 388:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 389:/usr/include/c++/7/chrono **** 	operator*=(const rep& __rhs)
 390:/usr/include/c++/7/chrono **** 	{
 391:/usr/include/c++/7/chrono **** 	  __r *= __rhs;
 392:/usr/include/c++/7/chrono **** 	  return *this;
 393:/usr/include/c++/7/chrono **** 	}
 394:/usr/include/c++/7/chrono **** 
 395:/usr/include/c++/7/chrono **** 	_GLIBCXX17_CONSTEXPR duration&
 396:/usr/include/c++/7/chrono **** 	operator/=(const rep& __rhs)
 397:/usr/include/c++/7/chrono **** 	{
 398:/usr/include/c++/7/chrono **** 	  __r /= __rhs;
 399:/usr/include/c++/7/chrono **** 	  return *this;
 400:/usr/include/c++/7/chrono **** 	}
 401:/usr/include/c++/7/chrono **** 
 402:/usr/include/c++/7/chrono **** 	// DR 934.
 403:/usr/include/c++/7/chrono **** 	template<typename _Rep2 = rep>
 404:/usr/include/c++/7/chrono **** 	  _GLIBCXX17_CONSTEXPR
 405:/usr/include/c++/7/chrono **** 	  typename enable_if<!treat_as_floating_point<_Rep2>::value,
 406:/usr/include/c++/7/chrono **** 			     duration&>::type
 407:/usr/include/c++/7/chrono **** 	  operator%=(const rep& __rhs)
 408:/usr/include/c++/7/chrono **** 	  {
 409:/usr/include/c++/7/chrono **** 	    __r %= __rhs;
 410:/usr/include/c++/7/chrono **** 	    return *this;
 411:/usr/include/c++/7/chrono **** 	  }
 412:/usr/include/c++/7/chrono **** 
 413:/usr/include/c++/7/chrono **** 	template<typename _Rep2 = rep>
 414:/usr/include/c++/7/chrono **** 	  _GLIBCXX17_CONSTEXPR
 415:/usr/include/c++/7/chrono **** 	  typename enable_if<!treat_as_floating_point<_Rep2>::value,
 416:/usr/include/c++/7/chrono **** 			     duration&>::type
 417:/usr/include/c++/7/chrono **** 	  operator%=(const duration& __d)
 418:/usr/include/c++/7/chrono **** 	  {
 419:/usr/include/c++/7/chrono **** 	    __r %= __d.count();
 420:/usr/include/c++/7/chrono **** 	    return *this;
 421:/usr/include/c++/7/chrono **** 	  }
 422:/usr/include/c++/7/chrono **** 
 423:/usr/include/c++/7/chrono **** 	// 20.11.5.4 special values
 424:/usr/include/c++/7/chrono **** 	static constexpr duration
 425:/usr/include/c++/7/chrono **** 	zero()
 426:/usr/include/c++/7/chrono **** 	{ return duration(duration_values<rep>::zero()); }
 427:/usr/include/c++/7/chrono **** 
 428:/usr/include/c++/7/chrono **** 	static constexpr duration
 429:/usr/include/c++/7/chrono **** 	min()
 430:/usr/include/c++/7/chrono **** 	{ return duration(duration_values<rep>::min()); }
 431:/usr/include/c++/7/chrono **** 
 432:/usr/include/c++/7/chrono **** 	static constexpr duration
 433:/usr/include/c++/7/chrono **** 	max()
 434:/usr/include/c++/7/chrono **** 	{ return duration(duration_values<rep>::max()); }
 435:/usr/include/c++/7/chrono **** 
 436:/usr/include/c++/7/chrono ****       private:
 437:/usr/include/c++/7/chrono **** 	rep __r;
 438:/usr/include/c++/7/chrono ****       };
 439:/usr/include/c++/7/chrono **** 
 440:/usr/include/c++/7/chrono ****     template<typename _Rep1, typename _Period1,
 441:/usr/include/c++/7/chrono **** 	     typename _Rep2, typename _Period2>
 442:/usr/include/c++/7/chrono ****       constexpr typename common_type<duration<_Rep1, _Period1>,
 443:/usr/include/c++/7/chrono **** 				     duration<_Rep2, _Period2>>::type
 444:/usr/include/c++/7/chrono ****       operator+(const duration<_Rep1, _Period1>& __lhs,
 445:/usr/include/c++/7/chrono **** 		const duration<_Rep2, _Period2>& __rhs)
 446:/usr/include/c++/7/chrono ****       {
 447:/usr/include/c++/7/chrono **** 	typedef duration<_Rep1, _Period1>			__dur1;
 448:/usr/include/c++/7/chrono **** 	typedef duration<_Rep2, _Period2>			__dur2;
 449:/usr/include/c++/7/chrono **** 	typedef typename common_type<__dur1,__dur2>::type	__cd;
 450:/usr/include/c++/7/chrono **** 	return __cd(__cd(__lhs).count() + __cd(__rhs).count());
 451:/usr/include/c++/7/chrono ****       }
 452:/usr/include/c++/7/chrono **** 
 453:/usr/include/c++/7/chrono ****     template<typename _Rep1, typename _Period1,
 454:/usr/include/c++/7/chrono **** 	     typename _Rep2, typename _Period2>
 455:/usr/include/c++/7/chrono ****       constexpr typename common_type<duration<_Rep1, _Period1>,
 456:/usr/include/c++/7/chrono **** 				     duration<_Rep2, _Period2>>::type
 457:/usr/include/c++/7/chrono ****       operator-(const duration<_Rep1, _Period1>& __lhs,
 458:/usr/include/c++/7/chrono **** 		const duration<_Rep2, _Period2>& __rhs)
 459:/usr/include/c++/7/chrono ****       {
 460:/usr/include/c++/7/chrono **** 	typedef duration<_Rep1, _Period1>			__dur1;
 461:/usr/include/c++/7/chrono **** 	typedef duration<_Rep2, _Period2>			__dur2;
 462:/usr/include/c++/7/chrono **** 	typedef typename common_type<__dur1,__dur2>::type	__cd;
 463:/usr/include/c++/7/chrono **** 	return __cd(__cd(__lhs).count() - __cd(__rhs).count());
  96              		.loc 2 463 0
  97 0039 482B03   		subq	(%rbx), %rax
  98              	.LBE104:
  99              	.LBE103:
 100              	.LBE102:
 101              	.LBB107:
 102              	.LBB108:
 103              	.LBB109:
 104              	.LBB110:
 163:/usr/include/c++/7/chrono **** 	  }
 105              		.loc 2 163 0
 106 003c 48BACFF7 		movabsq	$2361183241434822607, %rdx
 106      53E3A59B 
 106      C420
 107              	.LBE110:
 108              	.LBE109:
 109              	.LBE108:
 110              	.LBE107:
  27:StopWatch.cpp **** }
 111              		.loc 1 27 0
 112 0046 5B       		popq	%rbx
 113              		.cfi_def_cfa_offset 8
 114              	.LVL7:
 115              	.LBB114:
 116              	.LBB106:
 117              	.LBB105:
 118              		.loc 2 463 0
 119 0047 4889C1   		movq	%rax, %rcx
 120              	.LBE105:
 121              	.LBE106:
 122              	.LBE114:
 123              	.LBB115:
 124              	.LBB113:
 125              	.LBB112:
 126              	.LBB111:
 163:/usr/include/c++/7/chrono **** 	  }
 127              		.loc 2 163 0
 128 004a 48F7EA   		imulq	%rdx
 129 004d 48C1F93F 		sarq	$63, %rcx
 130 0051 48C1FA07 		sarq	$7, %rdx
 131 0055 4889D0   		movq	%rdx, %rax
 132 0058 4829C8   		subq	%rcx, %rax
 133              	.LBE111:
 134              	.LBE112:
 135              	.LBE113:
 136              	.LBE115:
 137              		.loc 1 27 0
 138 005b C3       		ret
 139              		.cfi_endproc
 140              	.LFE322:
 142              		.align 2
 143 005c 0F1F4000 		.p2align 4,,15
 144              		.globl	_ZNK9StopWatch9ElapsedMsEv
 146              	_ZNK9StopWatch9ElapsedMsEv:
 147              	.LFB323:
  28:StopWatch.cpp **** 
  29:StopWatch.cpp **** /// @return the elapsed milliseconds since start
  30:StopWatch.cpp **** uint64_t StopWatch::ElapsedMs() const {
 148              		.loc 1 30 0
 149              		.cfi_startproc
 150              	.LVL8:
 151 0060 53       		pushq	%rbx
 152              		.cfi_def_cfa_offset 16
 153              		.cfi_offset 3, -16
 154              		.loc 1 30 0
 155 0061 4889FB   		movq	%rdi, %rbx
  31:StopWatch.cpp ****    return std::chrono::duration_cast<milliseconds>(clock::now() - mStart).count();
 156              		.loc 1 31 0
 157 0064 E8000000 		call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
 157      00
 158              	.LVL9:
 159              	.LBB116:
 160              	.LBB117:
 161              	.LBB118:
 162              		.loc 2 463 0
 163 0069 482B03   		subq	(%rbx), %rax
 164              	.LBE118:
 165              	.LBE117:
 166              	.LBE116:
 167              	.LBB121:
 168              	.LBB122:
 169              	.LBB123:
 170              	.LBB124:
 163:/usr/include/c++/7/chrono **** 	  }
 171              		.loc 2 163 0
 172 006c 48BADB34 		movabsq	$4835703278458516699, %rdx
 172      B6D782DE 
 172      1B43
 173              	.LBE124:
 174              	.LBE123:
 175              	.LBE122:
 176              	.LBE121:
  32:StopWatch.cpp **** }
 177              		.loc 1 32 0
 178 0076 5B       		popq	%rbx
 179              		.cfi_def_cfa_offset 8
 180              	.LVL10:
 181              	.LBB128:
 182              	.LBB120:
 183              	.LBB119:
 184              		.loc 2 463 0
 185 0077 4889C1   		movq	%rax, %rcx
 186              	.LBE119:
 187              	.LBE120:
 188              	.LBE128:
 189              	.LBB129:
 190              	.LBB127:
 191              	.LBB126:
 192              	.LBB125:
 163:/usr/include/c++/7/chrono **** 	  }
 193              		.loc 2 163 0
 194 007a 48F7EA   		imulq	%rdx
 195 007d 48C1F93F 		sarq	$63, %rcx
 196 0081 48C1FA12 		sarq	$18, %rdx
 197 0085 4889D0   		movq	%rdx, %rax
 198 0088 4829C8   		subq	%rcx, %rax
 199              	.LBE125:
 200              	.LBE126:
 201              	.LBE127:
 202              	.LBE129:
 203              		.loc 1 32 0
 204 008b C3       		ret
 205              		.cfi_endproc
 206              	.LFE323:
 208              		.align 2
 209 008c 0F1F4000 		.p2align 4,,15
 210              		.globl	_ZNK9StopWatch10ElapsedSecEv
 212              	_ZNK9StopWatch10ElapsedSecEv:
 213              	.LFB324:
  33:StopWatch.cpp **** 
  34:StopWatch.cpp **** /// @return the elapsed seconds since start
  35:StopWatch.cpp **** uint64_t StopWatch::ElapsedSec() const {
 214              		.loc 1 35 0
 215              		.cfi_startproc
 216              	.LVL11:
 217 0090 53       		pushq	%rbx
 218              		.cfi_def_cfa_offset 16
 219              		.cfi_offset 3, -16
 220              		.loc 1 35 0
 221 0091 4889FB   		movq	%rdi, %rbx
  36:StopWatch.cpp ****    return std::chrono::duration_cast<seconds>(clock::now() - mStart).count();
 222              		.loc 1 36 0
 223 0094 E8000000 		call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
 223      00
 224              	.LVL12:
 225              	.LBB130:
 226              	.LBB131:
 227              	.LBB132:
 228              		.loc 2 463 0
 229 0099 482B03   		subq	(%rbx), %rax
 230              	.LBE132:
 231              	.LBE131:
 232              	.LBE130:
 233              	.LBB135:
 234              	.LBB136:
 235              	.LBB137:
 236              	.LBB138:
 163:/usr/include/c++/7/chrono **** 	  }
 237              		.loc 2 163 0
 238 009c 48BAB394 		movabsq	$1237940039285380275, %rdx
 238      D626E80B 
 238      2E11
 239              	.LBE138:
 240              	.LBE137:
 241              	.LBE136:
 242              	.LBE135:
  37:StopWatch.cpp **** }
 243              		.loc 1 37 0
 244 00a6 5B       		popq	%rbx
 245              		.cfi_def_cfa_offset 8
 246              	.LVL13:
 247              	.LBB142:
 248              	.LBB134:
 249              	.LBB133:
 250              		.loc 2 463 0
 251 00a7 4889C1   		movq	%rax, %rcx
 252              	.LBE133:
 253              	.LBE134:
 254              	.LBE142:
 255              	.LBB143:
 256              	.LBB141:
 257              	.LBB140:
 258              	.LBB139:
 163:/usr/include/c++/7/chrono **** 	  }
 259              		.loc 2 163 0
 260 00aa 48F7EA   		imulq	%rdx
 261 00ad 48C1F93F 		sarq	$63, %rcx
 262 00b1 48C1FA1A 		sarq	$26, %rdx
 263 00b5 4889D0   		movq	%rdx, %rax
 264 00b8 4829C8   		subq	%rcx, %rax
 265              	.LBE139:
 266              	.LBE140:
 267              	.LBE141:
 268              	.LBE143:
 269              		.loc 1 37 0
 270 00bb C3       		ret
 271              		.cfi_endproc
 272              	.LFE324:
 274              		.align 2
 275 00bc 0F1F4000 		.p2align 4,,15
 276              		.globl	_ZN9StopWatch7RestartEv
 278              	_ZN9StopWatch7RestartEv:
 279              	.LFB325:
  38:StopWatch.cpp **** /**
  39:StopWatch.cpp ****  * Resets the start point
  40:StopWatch.cpp ****  * @return the updated start point
  41:StopWatch.cpp ****  */
  42:StopWatch.cpp **** std::chrono::steady_clock::time_point StopWatch::Restart() {
 280              		.loc 1 42 0
 281              		.cfi_startproc
 282              	.LVL14:
 283 00c0 53       		pushq	%rbx
 284              		.cfi_def_cfa_offset 16
 285              		.cfi_offset 3, -16
 286              		.loc 1 42 0
 287 00c1 4889FB   		movq	%rdi, %rbx
  43:StopWatch.cpp ****    mStart = clock::now();
 288              		.loc 1 43 0
 289 00c4 E8000000 		call	_ZNSt6chrono3_V212steady_clock3nowEv@PLT
 289      00
 290              	.LVL15:
 291 00c9 488903   		movq	%rax, (%rbx)
  44:StopWatch.cpp ****    return mStart;
  45:StopWatch.cpp **** }
 292              		.loc 1 45 0
 293 00cc 5B       		popq	%rbx
 294              		.cfi_def_cfa_offset 8
 295              	.LVL16:
 296 00cd C3       		ret
 297              		.cfi_endproc
 298              	.LFE325:
 300              	.Letext0:
 301              		.file 3 "/usr/include/c++/7/type_traits"
 302              		.file 4 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 303              		.file 5 "/usr/include/c++/7/cstdint"
 304              		.file 6 "/usr/include/c++/7/ctime"
 305              		.file 7 "<built-in>"
 306              		.file 8 "/usr/include/c++/7/ratio"
 307              		.file 9 "/usr/include/x86_64-linux-gnu/bits/types.h"
 308              		.file 10 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h"
 309              		.file 11 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
 310              		.file 12 "/usr/include/stdint.h"
 311              		.file 13 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h"
 312              		.file 14 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h"
 313              		.file 15 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h"
 314              		.file 16 "/usr/include/time.h"
 315              		.file 17 "StopWatch.h"
   1              		.file	"ednaive.cpp"
   2              		.text
   3              	.Ltext0:
   4              		.section	.text._ZN8BaselineD2Ev,"axG",@progbits,_ZN8BaselineD5Ev,comdat
   5              		.align 2
   6              		.p2align 4,,15
   7              		.weak	_ZN8BaselineD2Ev
   9              	_ZN8BaselineD2Ev:
  10              	.LFB251:
  11              		.file 1 "ednaive.h"
   1:ednaive.h     **** //
   2:ednaive.h     **** // Created by Leonardo Fuso on 15/12/17.
   3:ednaive.h     **** //
   4:ednaive.h     **** 
   5:ednaive.h     **** #ifndef EDNAIVE_H
   6:ednaive.h     **** #define EDNAIVE_H
   7:ednaive.h     **** 
   8:ednaive.h     **** #include "EuclideanDistance.h"
   9:ednaive.h     **** 
  10:ednaive.h     **** class Baseline : public EuclideanDistance
  12              		.loc 1 10 0
  13              		.cfi_startproc
  14              	.LVL0:
  15              		.loc 1 10 0
  16 0000 F3C3     		rep ret
  17              		.cfi_endproc
  18              	.LFE251:
  20              		.weak	_ZN8BaselineD1Ev
  21              		.set	_ZN8BaselineD1Ev,_ZN8BaselineD2Ev
  22              		.text
  23              		.align 2
  24              		.p2align 4,,15
  25              		.globl	_ZN8Baseline9calculateEPKdS1_m
  27              	_ZN8Baseline9calculateEPKdS1_m:
  28              	.LFB245:
  29              		.file 2 "ednaive.cpp"
   1:ednaive.cpp   **** //
   2:ednaive.cpp   **** // Created by Leonardo Fuso on 15/12/17.
   3:ednaive.cpp   **** //
   4:ednaive.cpp   **** 
   5:ednaive.cpp   **** #include "ednaive.h"
   6:ednaive.cpp   **** 
   7:ednaive.cpp   **** 
   8:ednaive.cpp   **** double Baseline::calculate(const double *x, const double *y, size_t n) {
  30              		.loc 2 8 0
  31              		.cfi_startproc
  32              	.LVL1:
  33              	.LBB13:
   9:ednaive.cpp   ****     double result = 0;
  10:ednaive.cpp   ****     for (; n > 0; --n) {
  34              		.loc 2 10 0
  35 0000 4885C9   		testq	%rcx, %rcx
  36 0003 743B     		je	.L6
  37              	.LBE13:
   9:ednaive.cpp   ****     double result = 0;
  38              		.loc 2 9 0
  39 0005 660FEFD2 		pxor	%xmm2, %xmm2
  40 0009 660FEFC0 		pxor	%xmm0, %xmm0
  41              	.LVL2:
  42 000d 0F1F00   		.p2align 4,,10
  43              		.p2align 3
  44              	.L5:
  45              	.LBB16:
  46              	.LBB14:
  11:ednaive.cpp   ****         const double num = x[n] - y[n];
  47              		.loc 2 11 0 discriminator 1
  48 0010 F20F100C 		movsd	(%rsi,%rcx,8), %xmm1
  48      CE
  49 0015 F20F5C0C 		subsd	(%rdx,%rcx,8), %xmm1
  49      CA
  50              	.LVL3:
  51              	.LBE14:
  10:ednaive.cpp   ****         const double num = x[n] - y[n];
  52              		.loc 2 10 0 discriminator 1
  53 001a 4883E901 		subq	$1, %rcx
  54              	.LVL4:
  55              	.LBB15:
  12:ednaive.cpp   ****         result += num * num;
  56              		.loc 2 12 0 discriminator 1
  57 001e F20F59C9 		mulsd	%xmm1, %xmm1
  58              	.LVL5:
  59 0022 F20F58C1 		addsd	%xmm1, %xmm0
  60              	.LVL6:
  61              	.LBE15:
  10:ednaive.cpp   ****         const double num = x[n] - y[n];
  62              		.loc 2 10 0 discriminator 1
  63 0026 75E8     		jne	.L5
  64 0028 660F2ED0 		ucomisd	%xmm0, %xmm2
  65              	.LBE16:
  13:ednaive.cpp   ****     }
  14:ednaive.cpp   ****     return sqrt(result);
  66              		.loc 2 14 0
  67 002c F20F51C8 		sqrtsd	%xmm0, %xmm1
  68 0030 7717     		ja	.L12
  15:ednaive.cpp   **** }
  69              		.loc 2 15 0
  70 0032 660F28C1 		movapd	%xmm1, %xmm0
  71              	.LVL7:
  72 0036 C3       		ret
  73              	.LVL8:
  74 0037 660F1F84 		.p2align 4,,10
  74      00000000 
  74      00
  75              		.p2align 3
  76              	.L6:
  14:ednaive.cpp   **** }
  77              		.loc 2 14 0
  78 0040 660FEFC9 		pxor	%xmm1, %xmm1
  79              		.loc 2 15 0
  80 0044 660F28C1 		movapd	%xmm1, %xmm0
  81 0048 C3       		ret
  82              	.LVL9:
  83              	.L12:
   8:ednaive.cpp   ****     double result = 0;
  84              		.loc 2 8 0
  85 0049 4883EC18 		subq	$24, %rsp
  86              		.cfi_def_cfa_offset 32
  87 004d F20F114C 		movsd	%xmm1, 8(%rsp)
  87      2408
  14:ednaive.cpp   **** }
  88              		.loc 2 14 0
  89 0053 E8000000 		call	sqrt@PLT
  89      00
  90              	.LVL10:
  91 0058 F20F104C 		movsd	8(%rsp), %xmm1
  91      2408
  92              		.loc 2 15 0
  93 005e 4883C418 		addq	$24, %rsp
  94              		.cfi_def_cfa_offset 8
  95 0062 660F28C1 		movapd	%xmm1, %xmm0
  96 0066 C3       		ret
  97              		.cfi_endproc
  98              	.LFE245:
 100              		.section	.text._ZN8BaselineD0Ev,"axG",@progbits,_ZN8BaselineD5Ev,comdat
 101              		.align 2
 102              		.p2align 4,,15
 103              		.weak	_ZN8BaselineD0Ev
 105              	_ZN8BaselineD0Ev:
 106              	.LFB253:
 107              		.loc 1 10 0
 108              		.cfi_startproc
 109              	.LVL11:
 110              		.loc 1 10 0
 111 0000 BE080000 		movl	$8, %esi
 111      00
 112 0005 E9000000 		jmp	_ZdlPvm@PLT
 112      00
 113              	.LVL12:
 114              		.cfi_endproc
 115              	.LFE253:
 117              		.weak	_ZTS17EuclideanDistance
 118              		.section	.rodata._ZTS17EuclideanDistance,"aG",@progbits,_ZTS17EuclideanDistance,comdat
 119              		.align 16
 122              	_ZTS17EuclideanDistance:
 123 0000 31374575 		.string	"17EuclideanDistance"
 123      636C6964 
 123      65616E44 
 123      69737461 
 123      6E636500 
 124              		.weak	_ZTI17EuclideanDistance
 125              		.section	.data.rel.ro._ZTI17EuclideanDistance,"awG",@progbits,_ZTI17EuclideanDistance,comdat
 126              		.align 8
 129              	_ZTI17EuclideanDistance:
 130 0000 00000000 		.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
 130      00000000 
 131 0008 00000000 		.quad	_ZTS17EuclideanDistance
 131      00000000 
 132              		.weak	_ZTS8Baseline
 133              		.section	.rodata._ZTS8Baseline,"aG",@progbits,_ZTS8Baseline,comdat
 134              		.align 8
 137              	_ZTS8Baseline:
 138 0000 38426173 		.string	"8Baseline"
 138      656C696E 
 138      6500
 139              		.weak	_ZTI8Baseline
 140              		.section	.data.rel.ro._ZTI8Baseline,"awG",@progbits,_ZTI8Baseline,comdat
 141              		.align 8
 144              	_ZTI8Baseline:
 145 0000 00000000 		.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
 145      00000000 
 146 0008 00000000 		.quad	_ZTS8Baseline
 146      00000000 
 147 0010 00000000 		.quad	_ZTI17EuclideanDistance
 147      00000000 
 148              		.weak	_ZTV8Baseline
 149              		.section	.data.rel.ro.local._ZTV8Baseline,"awG",@progbits,_ZTV8Baseline,comdat
 150              		.align 8
 153              	_ZTV8Baseline:
 154 0000 00000000 		.quad	0
 154      00000000 
 155 0008 00000000 		.quad	_ZTI8Baseline
 155      00000000 
 156 0010 00000000 		.quad	_ZN8BaselineD1Ev
 156      00000000 
 157 0018 00000000 		.quad	_ZN8BaselineD0Ev
 157      00000000 
 158 0020 00000000 		.quad	_ZN8Baseline9calculateEPKdS1_m
 158      00000000 
 159              		.text
 160              	.Letext0:
 161              		.file 3 "/usr/include/c++/7/bits/cpp_type_traits.h"
 162              		.file 4 "/usr/include/c++/7/cmath"
 163              		.file 5 "/usr/include/x86_64-linux-gnu/c++/7/bits/c++config.h"
 164              		.file 6 "/usr/include/glob.h"
 165              		.file 7 "/usr/include/math.h"
 166              		.file 8 "/usr/include/c++/7/math.h"
 167              		.file 9 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
 168              		.file 10 "/usr/include/stdlib.h"
 169              		.file 11 "EuclideanDistance.h"
 170              		.file 12 "<built-in>"
