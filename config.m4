dnl $Id$

PHP_ARG_ENABLE(zephir_parser, whether to enable Zephir Parser,
[ --enable-zephir_parser   Enable Zephir Parser])

if test "$PHP_ZEPHIR_PARSER" = "yes"; then
	AC_DEFINE(HAVE_ZEPHIR_PARSER, 1, [Whether you have Zephir Parser])
	zephir_parser_sources="zephir_parser.c parser/parser.c parser/scanner.c"
	PHP_NEW_EXTENSION(zephir_parser, $zephir_parser_sources, $ext_shared, "")
	PHP_SUBST(ZEPHIR_PARSER_SHARED_LIBADD)

	old_CPPFLAGS=$CPPFLAGS
	CPPFLAGS="$CPPFLAGS $INCLUDES"

	CPPFLAGS=$old_CPPFLAGS
fi
