# 2025-08-11 學習日誌

- [ ] 設定 yazi 个 editor 佮 keymaps
- [ ] ISO 8859-1 table
- [I] 祕訣：gh API mode md to html converter

## AI 設定 yazi 个 editor 佮 keymaps

editor 佇 ~/.config/yazi/yazi.toml 指定，keymap 佇 ~/.config/yazi/keymap.toml
指定。

## ISO 8859-1 table

AI 共我寫一支 python script `~/bin/extended_ascii.py`，執行結果：

```text
Extended ASCII Table (128-255)
============================================================
DEC  HEX  OCT   CHAR  Description
------------------------------------------------------------
128   80  200   .    € (Euro sign in Windows-1252)
129   81  201   .
130   82  202   .
131   83  203   .
132   84  204   .
133   85  205   .
134   86  206   .
135   87  207   .
136   88  210   .
137   89  211   .
138   8A  212   .
139   8B  213   .
140   8C  214   .
141   8D  215   .
142   8E  216   .
143   8F  217   .
144   90  220   .
145   91  221   .
146   92  222   .
147   93  223   .
148   94  224   .
149   95  225   .
150   96  226   .
151   97  227   .
152   98  230   .
153   99  231   .
154   9A  232   .
155   9B  233   .
156   9C  234   .
157   9D  235   .
158   9E  236   .
159   9F  237   .
160   A0  240   NBSP NBSP (Non-breaking space)
161   A1  241   ¡    ¡ (Inverted exclamation)
162   A2  242   ¢    ¢ (Cent sign)
163   A3  243   £    £ (Pound sign)
164   A4  244   ¤    ¤ (Currency sign)
165   A5  245   ¥    ¥ (Yen sign)
166   A6  246   ¦    ¦ (Broken bar)
167   A7  247   §    § (Section sign)
168   A8  250   ¨    ¨ (Diaeresis)
169   A9  251   ©    © (Copyright sign)
170   AA  252   ª    ª (Feminine ordinal)
171   AB  253   «    « (Left angle quote)
172   AC  254   ¬    ¬ (Not sign)
173   AD  255   .    ­ (Soft hyphen)
174   AE  256   ®    ® (Registered sign)
175   AF  257   ¯    ¯ (Macron)
176   B0  260   °    ° (Degree sign)
177   B1  261   ±    ± (Plus-minus sign)
178   B2  262   ²    ² (Superscript two)
179   B3  263   ³    ³ (Superscript three)
180   B4  264   ´    ´ (Acute accent)
181   B5  265   µ    µ (Micro sign)
182   B6  266   ¶    ¶ (Pilcrow sign)
183   B7  267   ·    · (Middle dot)
184   B8  270   ¸    ¸ (Cedilla)
185   B9  271   ¹    ¹ (Superscript one)
186   BA  272   º    º (Masculine ordinal)
187   BB  273   »    » (Right angle quote)
188   BC  274   ¼    ¼ (One quarter)
189   BD  275   ½    ½ (One half)
190   BE  276   ¾    ¾ (Three quarters)
191   BF  277   ¿    ¿ (Inverted question)
192   C0  300   À
193   C1  301   Á
194   C2  302   Â
195   C3  303   Ã
196   C4  304   Ä
197   C5  305   Å
198   C6  306   Æ
199   C7  307   Ç
200   C8  310   È
201   C9  311   É
202   CA  312   Ê
203   CB  313   Ë
204   CC  314   Ì
205   CD  315   Í
206   CE  316   Î
207   CF  317   Ï
208   D0  320   Ð
209   D1  321   Ñ
210   D2  322   Ò
211   D3  323   Ó
212   D4  324   Ô
213   D5  325   Õ
214   D6  326   Ö
215   D7  327   ×
216   D8  330   Ø
217   D9  331   Ù
218   DA  332   Ú
219   DB  333   Û
220   DC  334   Ü
221   DD  335   Ý
222   DE  336   Þ
223   DF  337   ß
224   E0  340   à
225   E1  341   á
226   E2  342   â
227   E3  343   ã
228   E4  344   ä
229   E5  345   å
230   E6  346   æ
231   E7  347   ç
232   E8  350   è
233   E9  351   é
234   EA  352   ê
235   EB  353   ë
236   EC  354   ì
237   ED  355   í
238   EE  356   î
239   EF  357   ï
240   F0  360   ð
241   F1  361   ñ
242   F2  362   ò
243   F3  363   ó
244   F4  364   ô
245   F5  365   õ
246   F6  366   ö
247   F7  367   ÷
248   F8  370   ø
249   F9  371   ù
250   FA  372   ú
251   FB  373   û
252   FC  374   ü
253   FD  375   ý
254   FE  376   þ
255   FF  377   ÿ

Note: The exact characters displayed for codes 128-255 depend on
the character encoding. ISO 8859-1 (Latin-1) is the most common
extended ASCII standard, but Windows-1252 and others also exist.

To see the standard 7-bit ASCII table (0-127), use: man ascii
```

注意 0xA0 可能我有需要，佇漢字逝尾加上這，是毋是會使幫助 markdown to html
converter 或者是 browser 正確處理漢字間个空格（勿有空格）？

我想錯矣，nbsp 猶原會有空格，是予 `Mr. Job`, `10 km` 即種情形用个。

## keymap `<C-Space>` to insert non-breaking space in Neovim

這是一逝真長个漢字文本，欲來試驗 non-breaking space 是毋是有效，效果按怎，寫到
遮刁工拗行會發生啥乜代誌，包括 markdown preview 佮轉換做 html 了後个效果，實
在使儂期待啊！

163, 164 逝尾有 nbsp，normal mode 用 `ga` 佇 statusline 就看會著是 0xa0，毋是
0x20。雖然 `<C-Space>` 有效，總是毋是我目前需要的。

## md to html CJK lines display

```markdown
一二三
四五六
七八九
```

轉做 html 了後，以下三種，第三種較符合咱對 html display 个期待：

> 一二三
四五六
七八九

<!-- --- -->

> 一二三 四五六 七八九

<!-- --- -->

> 一二三四五六七八九

### 祕訣：gh API mode md to html converter

Interactive mode: `gh markdown-preview`

API mode to generate html from md:

```shell
gh api markdown --field text="$(cat chinese-text-test.md)" --field mode=gfm > rendered.html
```

### 干焦 HTML comment 會使當做 continuation marker

```markdown
一二三<!--
-->四五六<!--
-->七八九
```

gh markdown-preview 就會變做：

> 一二三四五六七八九

測試檔佇 `~/.config/nvim-as1/test/chinese-text-test.md`
