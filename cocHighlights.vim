
HIGHLIGHTS						*coc-highlights*

To customize a highlight, simply use |:highlight| command in your vimrc, like:
>
	" make error texts have a red color
	highlight CocErrorHighlight ctermfg=Red  guifg=#ff0000
<
Type |:highlight| command with group name to check current highlight.

Note: don't use `:hi default` for overwriting the highlights.

Note: user defined highlight commands should appear after the |:colorscheme|
command and use |ColorScheme| autocmd to make sure customized highlights works
after color scheme change.

Markdown related~

*CocBold* for bold text.
*CocItalic* for italic text.
*CocUnderline* for underlined text.
*CocStrikeThrough* for strikethrough text, like usage of deprecated API.
*CocMarkdownCode* for inline code in markdown content.
*CocMarkdownHeader* for markdown header in floating window/popup.
*CocMarkdownLink* for markdown link text in floating window/popup.

Diagnostics related~

*CocFadeOut* for faded out text, such as for highlighting unnecessary code.
*CocErrorSign* for error signs.
*CocWarningSign* for warning signs.
*CocInfoSign* for information signs.
*CocHintSign* for hint signs.
*CocErrorVirtualText* for error virtual text.
*CocWarningVirtualText* for warning virtual text.
*CocInfoVirtualText* for information virtual text.
*CocHintVirtualText* for hint virtual text.
*CocErrorHighlight* for error code range.
*CocWarningHighlight* for warning code range.
*CocInfoHighlight* for information code range.
*CocHintHighlight* for hint code range.
*CocDeprecatedHighlight* for deprecated code range, links to
|CocStrikeThrough| by default.
*CocUnusedHighlight* for unnecessary code range, links to |CocFadeOut| by
default.
*CocErrorLine* line highlight of sign which contains error.
*CocWarningLine* line highlight of sign which contains warning.
*CocInfoLine* line highlight of sign which information. 
*CocHintLine* line highlight of sign which contains hint.

Document highlight related~

Highlights used for highlighting same symbols in the buffer at the current
cursor position.

*CocHighlightText* default symbol highlight.
*CocHighlightRead* for `Read` kind of document symbol.
*CocHighlightWrite* for `Write` kind of document symbol.

Float window/popup related~

*CocFloating* default highlight group of floating windows/popups.
Default link to |NormalFloat| on neovim and|`Pmenu| on vim.
*CocErrorFloat* for errors in floating windows/popups.
*CocWarningFloat* for warnings in floating windows/popups.
*CocInfoFloat* for infos in floating windows/popups.
*CocHintFloat* for hints in floating windows/popups.

List related~

*CocSelectedText* for sign text of selected lines.
*CocSelectedLine* for line highlight of selected lines.
*CocListMode* for mode in statusline of CocList.
*CocListPath* for current cwd in statusline of CocList.

Tree view related~

CocTree* 						*CocTree*

*CocTreeTitle* for title in tree view.
*CocTreeDescription* for description beside label.
*CocTreeOpenClose* for open and close icon in tree view.
*CocTreeSelected* for highlight lines contains selected node.

Symbol icons~

CocSymbol* 						*CocSymbol*

Highlight groups for symbol icons, including:

*CocSymbolFile*
*CocSymbolModule*
*CocSymbolNamespace*
*CocSymbolPackage*
*CocSymbolClass*
*CocSymbolMethod*
*CocSymbolProperty*
*CocSymbolField*
*CocSymbolConstructor*
*CocSymbolEnum*
*CocSymbolInterface*
*CocSymbolFunction*
*CocSymbolVariable*
*CocSymbolConstant*
*CocSymbolString*
*CocSymbolNumber*
*CocSymbolBoolean*
*CocSymbolArray*
*CocSymbolObject*
*CocSymbolKey*
*CocSymbolNull*
*CocSymbolEnumMember*
*CocSymbolStruct*
*CocSymbolEvent*
*CocSymbolOperator*
*CocSymbolTypeParameter*
*CocSymbolDefault*

Note: Use configuration `suggest.completionItemKindLabels` for customized icon
characters.

Others~

*CocCodeLens* for virtual text of codeLens.
*CocCursorRange* for ranges of activated cursors.
*CocHoverRange* for range of current hovered symbol.
*CocMenuSel* for current menu item in menu dialog, works on neovim only since
vim doesn't support change highlight group of cursorline inside popup.
*CocSelectedRange* for highlight ranges of outgoing calls.

Semantic highlights~

CocSem_*						*CocSem*

  Used for words whose semantics are provided by the language server, which
  typically analyzes source code more deeply than vim's builtin syntax parser.

  Basic defaults are provided for the "standard" token kinds, but any kind
  supported by the server can be highlighted by creating the highlight group.

  Default (enabled by setting `g:coc_default_semantic_highlight_groups = 1`):
  `hi default link CocSem_namespace Identifier`
  `hi default link CocSem_type Type`
  `hi default link CocSem_class Structure`
  `hi default link CocSem_enum Type`
  `hi default link CocSem_interface Type`
  `hi default link CocSem_struct Structure`
  `hi default link CocSem_typeParameter Type`
  `hi default link CocSem_parameter Identifier`
  `hi default link CocSem_variable Identifier`
  `hi default link CocSem_property Identifier`
  `hi default link CocSem_enumMember Constant`
  `hi default link CocSem_event Identifier`
  `hi default link CocSem_function Function`
  `hi default link CocSem_method Function`
  `hi default link CocSem_macro Macro`
  `hi default link CocSem_keyword Keyword`
  `hi default link CocSem_modifier StorageClass`
  `hi default link CocSem_comment Comment`
  `hi default link CocSem_string String`
  `hi default link CocSem_number Number`
  `hi default link CocSem_regexp Normal`
  `hi default link CocSem_operator Operator`

==============================================================================
TREE SUPPORT 						*coc-tree*


