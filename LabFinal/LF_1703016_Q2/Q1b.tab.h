/* A Bison parser, made by GNU Bison 2.4.2.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2006, 2009-2010 Free Software
   Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     INT_TYPE = 258,
     DOUBLE_TYPE = 259,
     SINGLE_TYPE = 260,
     AS_TYPE = 261,
     ID = 262,
     FUNCTION = 263,
     FUNCTION_DECLARE = 264,
     RET = 265,
     LET = 266,
     INT_NUM = 267,
     FLOAT_NUM = 268,
     LP = 269,
     RP = 270,
     LB = 271,
     RB = 272,
     SEMI = 273,
     COMMA = 274,
     ASSIGN = 275,
     MOD = 276,
     EQUAL = 277,
     PLUS_SIGN = 278,
     PLUS_SOMAN = 279,
     GREATER_SIGN = 280,
     SMALLER_SIGN = 281,
     MINUS_SIGN = 282,
     DIM = 283,
     FOR = 284,
     TO = 285,
     NEXT = 286,
     START = 287,
     END = 288,
     PRINT = 289,
     IF = 290,
     ELSEIF = 291,
     ELSE = 292,
     THEN = 293
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


