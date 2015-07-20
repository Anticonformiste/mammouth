module.exports =
    REGEX:
        startTag: /\{\{/
        endTag: /\}\}/

        EMPTYLINE: /(^[\u0020\u00A0\u1680\u180E\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200A\u202F\u205F\u3000]*[\n\r\u2028\u2029])/gmi
        IDENTIFIER: /(([$A-Za-z_\x7f-\uffff][$\w\x7f-\uffff]*)( [^\n\S]* : (?!:) )?)/
        INDENT: /(^[ \t]*)/gm
        LINETERMINATOR: /[\n\r\u2028\u2029]/
        RAWTEXT: /// (
            (
                (
                    ?!(
                        {{
                        |}}
                    )
                )
                ([\n\r\u2028\u2029]|.)
            )*
        ) ///