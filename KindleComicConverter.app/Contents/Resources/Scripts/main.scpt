FasdUAS 1.101.10   ��   ��    k             l      ��  ��   5/
# Copyright (c) 2012 Ciro Mattia Gonano <ciromattia@gmail.com>
#
# Permission to use, copy, modify, and/or distribute this software for
# any purpose with or without fee is hereby granted, provided that the
# above copyright notice and this permission notice appear in all
# copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
# WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE
# AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL
# DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS OF USE, DATA
# OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER
# TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.
#
# This script heavily relies on KindleStrip (C) by Paul Durrant and released in public domain
# 	(http://www.mobileread.com/forums/showthread.php?t=96903)
# Also, you need to have kindlegen v2.7 (with KF8 support) which is downloadable
# 	from Amazon website.
#
# Changelog:
#	1.0: first release
#	1.10: add CBZ/CBR support to comic2ebook.py
#	1.11: add CBZ/CBR support to KindleComicConverter
#	1.2: added image page splitting and optimizations
#
# Todo:
#	- bundle a script to manipulate images (to get rid of Mangle/E-nki/whatsoever)
     � 	 	
^ 
 #   C o p y r i g h t   ( c )   2 0 1 2   C i r o   M a t t i a   G o n a n o   < c i r o m a t t i a @ g m a i l . c o m > 
 # 
 #   P e r m i s s i o n   t o   u s e ,   c o p y ,   m o d i f y ,   a n d / o r   d i s t r i b u t e   t h i s   s o f t w a r e   f o r 
 #   a n y   p u r p o s e   w i t h   o r   w i t h o u t   f e e   i s   h e r e b y   g r a n t e d ,   p r o v i d e d   t h a t   t h e 
 #   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   a p p e a r   i n   a l l 
 #   c o p i e s . 
 # 
 #   T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S "   A N D   T H E   A U T H O R   D I S C L A I M S   A L L 
 #   W A R R A N T I E S   W I T H   R E G A R D   T O   T H I S   S O F T W A R E   I N C L U D I N G   A L L   I M P L I E D 
 #   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y   A N D   F I T N E S S .   I N   N O   E V E N T   S H A L L   T H E 
 #   A U T H O R   B E   L I A B L E   F O R   A N Y   S P E C I A L ,   D I R E C T ,   I N D I R E C T ,   O R   C O N S E Q U E N T I A L 
 #   D A M A G E S   O R   A N Y   D A M A G E S   W H A T S O E V E R   R E S U L T I N G   F R O M   L O S S   O F   U S E ,   D A T A 
 #   O R   P R O F I T S ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   N E G L I G E N C E   O R   O T H E R 
 #   T O R T I O U S   A C T I O N ,   A R I S I N G   O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   U S E   O R 
 #   P E R F O R M A N C E   O F   T H I S   S O F T W A R E . 
 # 
 #   T h i s   s c r i p t   h e a v i l y   r e l i e s   o n   K i n d l e S t r i p   ( C )   b y   P a u l   D u r r a n t   a n d   r e l e a s e d   i n   p u b l i c   d o m a i n 
 #   	 ( h t t p : / / w w w . m o b i l e r e a d . c o m / f o r u m s / s h o w t h r e a d . p h p ? t = 9 6 9 0 3 ) 
 #   A l s o ,   y o u   n e e d   t o   h a v e   k i n d l e g e n   v 2 . 7   ( w i t h   K F 8   s u p p o r t )   w h i c h   i s   d o w n l o a d a b l e 
 #   	 f r o m   A m a z o n   w e b s i t e . 
 # 
 #   C h a n g e l o g : 
 # 	 1 . 0 :   f i r s t   r e l e a s e 
 # 	 1 . 1 0 :   a d d   C B Z / C B R   s u p p o r t   t o   c o m i c 2 e b o o k . p y 
 # 	 1 . 1 1 :   a d d   C B Z / C B R   s u p p o r t   t o   K i n d l e C o m i c C o n v e r t e r 
 # 	 1 . 2 :   a d d e d   i m a g e   p a g e   s p l i t t i n g   a n d   o p t i m i z a t i o n s 
 # 
 #   T o d o : 
 # 	 -   b u n d l e   a   s c r i p t   t o   m a n i p u l a t e   i m a g e s   ( t o   g e t   r i d   o f   M a n g l e / E - n k i / w h a t s o e v e r ) 
   
  
 l     ��������  ��  ��        p         ������ "0 comic2ebookpath comic2ebookPath��        p         ������ 0 kindlegenpath kindlegenPath��        p         ������ "0 kindlestrippath KindleStripPath��        p         ������ 0 thetitle TheTitle��        p         ������ 0 parentfolder ParentFolder��        l     ��������  ��  ��        i          I      �������� (0 getcomic2ebookpath GetComic2EbookPath��  ��     k     G ! !  " # " r      $ % $ n      & ' & 1    ��
�� 
psxp ' 4     �� (
�� 
file ( l    )���� ) b     * + * l   	 ,���� , I   	�� - .
�� .earsffdralis        afdr -  f     . �� /��
�� 
rtyp / m    ��
�� 
ctxt��  ��  ��   + m   	 
 0 0 � 1 1 B C o n t e n t s : R e s o u r c e s : c o m i c 2 e b o o k . p y��  ��   % o      ���� "0 comic2ebookpath comic2ebookPath #  2 3 2 r     4 5 4 m    ��
�� boovfals 5 o      ���� 0 
fileexists   3  6 7 6 O   + 8 9 8 Z   * : ;���� : I    �� <��
�� .coredoexbool        obj  < c     = > = o    ���� "0 comic2ebookpath comic2ebookPath > m    ��
�� 
psxf��   ; r   # & ? @ ? m   # $��
�� boovtrue @ o      ���� 0 
fileexists  ��  ��   9 m     A A�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   7  B C B Z   , D D E���� D l  , . F���� F H   , . G G o   , -���� 0 
fileexists  ��  ��   E I  1 @�� H I
�� .sysodlogaskr        TEXT H m   1 2 J J � K K v T h e   c o m i c 2 e b o o k   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . I �� L M
�� 
appr L m   3 4 N N � O O ( K i n d l e C o m i c C o n v e r t e r M �� P Q
�� 
btns P J   5 8 R R  S�� S m   5 6 T T � U U  E x i t��   Q �� V��
�� 
dflt V m   9 :���� ��  ��  ��   C  W�� W L   E G X X o   E F���� 0 
fileexists  ��     Y Z Y l     ��������  ��  ��   Z  [ \ [ i     ] ^ ] I      �������� $0 getkindlegenpath GetKindlegenPath��  ��   ^ k     = _ _  ` a ` r      b c b n      d e d 1    ��
�� 
psxp e 4     �� f
�� 
file f l    g���� g m     h h � i i H M a c i n t o s h   H D : u s r : l o c a l : b i n : k i n d l e g e n��  ��   c o      ���� 0 kindlegenpath kindlegenPath a  j k j r   	  l m l m   	 
��
�� boovfals m o      ���� 0 
fileexists   k  n o n O   # p q p Z   " r s���� r I   �� t��
�� .coredoexbool        obj  t c     u v u o    ���� 0 kindlegenpath kindlegenPath v m    ��
�� 
psxf��   s r     w x w m    ��
�� boovtrue x o      ���� 0 
fileexists  ��  ��   q m     y y�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   o  z { z Z   $ : | }���� | l  $ & ~���� ~ H   $ &   o   $ %���� 0 
fileexists  ��  ��   } I  ) 6�� � �
�� .sysodlogaskr        TEXT � m   ) * � � � � � * K i n d l e g e n   i s   m i s s i n g . � �� � �
�� 
appr � m   + , � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   - 0 � �  ��� � m   - . � � � � �  E x i t��   � �� ���
�� 
dflt � m   1 2���� ��  ��  ��   {  ��� � L   ; = � � o   ; <���� 0 
fileexists  ��   \  � � � l     ��������  ��  ��   �  � � � i     � � � I      �������� (0 getkindlestrippath GetKindleStripPath��  ��   � k     G � �  � � � r      � � � n      � � � 1    ��
�� 
psxp � 4     �� �
�� 
file � l    ����� � b     � � � l   	 ����� � I   	�� � �
�� .earsffdralis        afdr �  f     � �� ���
�� 
rtyp � m    ��
�� 
ctxt��  ��  ��   � m   	 
 � � � � � B C o n t e n t s : R e s o u r c e s : k i n d l e s t r i p . p y��  ��   � o      ���� "0 kindlestrippath KindleStripPath �  � � � r     � � � m    ��
�� boovfals � o      ���� 0 
fileexists   �  � � � O   + � � � Z   * � ����� � I    �� ���
�� .coredoexbool        obj  � c     � � � o    ���� "0 kindlestrippath KindleStripPath � m    ��
�� 
psxf��   � r   # & � � � m   # $��
�� boovtrue � o      ���� 0 
fileexists  ��  ��   � m     � ��                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  � � � Z   , D � ����� � l  , . ����� � H   , . � � o   , -���� 0 
fileexists  ��  ��   � I  1 @�� � �
�� .sysodlogaskr        TEXT � m   1 2 � � � � � � T h e   k i n d l e s t r i p   p y t h o n   s c r i p t   i s   m i s s i n g   f r o m   t h i s   p a c k a g e .   P l e a s e   g e t   a   f r e s h   c o p y . � �� � �
�� 
appr � m   3 4 � � � � � ( K i n d l e C o m i c C o n v e r t e r � �� � �
�� 
btns � J   5 8 � �  ��� � m   5 6 � � � � �  E x i t��   � �� ��
�� 
dflt � m   9 :�~�~ �  ��  ��   �  ��} � L   E G � � o   E F�|�| 0 
fileexists  �}   �  � � � l     �{�z�y�{  �z  �y   �  � � � i     � � � I      �x�w�v�x (0 getexecutablepaths GetExecutablePaths�w  �v   � L      � � F      � � � F      � � � I     �u�t�s�u (0 getcomic2ebookpath GetComic2EbookPath�t  �s   � I    �r�q�p�r $0 getkindlegenpath GetKindlegenPath�q  �p   � I    �o�n�m�o (0 getkindlestrippath GetKindleStripPath�n  �m   �  � � � l     �l�k�j�l  �k  �j   �  � � � i     � � � I      �i ��h�i 0 
extractcbr 
ExtractCBR �  � � � o      �g�g 0 filepath filePath �  ��f � o      �e�e 0 dstdir dstDir�f  �h   � k     c � �  � � � r      � � � n      � � � 1    �d
�d 
psxp � 4     �c �
�c 
file � l    ��b�a � b     � � � l   	 ��`�_ � I   	�^ � �
�^ .earsffdralis        afdr �  f     � �] ��\
�] 
rtyp � m    �[
�[ 
ctxt�\  �`  �_   � m   	 
 � � � � � 0 C o n t e n t s : R e s o u r c e s : u n r a r�b  �a   � o      �Z�Z 0 	unrarpath 	UnrarPath �  � � � r     � � � m    �Y
�Y boovfals � o      �X�X 0 
fileexists   �  � � � O   + � � � Z   * � ��W�V � I    �U ��T
�U .coredoexbool        obj  � c       o    �S�S 0 	unrarpath 	UnrarPath m    �R
�R 
psxf�T   � r   # & m   # $�Q
�Q boovtrue o      �P�P 0 
fileexists  �W  �V   � m    �                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �  Z   , E�O�N l  , .	�M�L	 H   , .

 o   , -�K�K 0 
fileexists  �M  �L   k   1 A  I  1 >�J
�J .sysodlogaskr        TEXT m   1 2 � d T h e   u n r a r   e x e c u t a b l e   i s   m i s s i n g   f r o m   t h i s   p a c k a g e . �I
�I 
appr m   3 4 � ( K i n d l e C o m i c C o n v e r t e r �H
�H 
btns J   5 8 �G m   5 6 �  E x i t�G   �F�E
�F 
dflt m   9 :�D�D �E   �C L   ? A m   ? @�B
�B boovfals�C  �O  �N   �A I  F c�@ �?
�@ .sysoexecTEXT���     TEXT  b   F _!"! b   F Y#$# b   F U%&% b   F O'(' l  F K)�>�=) n   F K*+* 1   G K�<
�< 
strq+ o   F G�;�; 0 	unrarpath 	UnrarPath�>  �=  ( m   K N,, �--    x  & l  O T.�:�9. n   O T/0/ 1   P T�8
�8 
strq0 o   O P�7�7 0 filepath filePath�:  �9  $ m   U X11 �22   " l  Y ^3�6�53 n   Y ^454 1   Z ^�4
�4 
strq5 o   Y Z�3�3 0 dstdir dstDir�6  �5  �?  �A   � 676 l     �2�1�0�2  �1  �0  7 898 i    :;: I      �/<�.�/ 0 
extractcbz 
ExtractCBZ< =>= o      �-�- 0 filepath filePath> ?�,? o      �+�+ 0 dstdir dstDir�,  �.  ; I    �*@�)
�* .sysoexecTEXT���     TEXT@ b     ABA b     CDC b     EFE m     GG �HH * / u s r / b i n / u n z i p   - j   - d  F l   I�(�'I n    JKJ 1    �&
�& 
strqK o    �%�% 0 dstdir dstDir�(  �'  D m    LL �MM   B l   
N�$�#N n    
OPO 1    
�"
�" 
strqP o    �!�! 0 filepath filePath�$  �#  �)  9 QRQ l     � ���   �  �  R STS i    UVU I      �W�� 0 
extractcbx 
ExtractCBxW X�X o      �� 0 cbxfile  �  �  V k     �YY Z[Z O    \]\ r    ^_^ c    `a` l   
b��b n    
cdc 1    
�
� 
pnamd 4    �e
� 
filee o    �� 0 cbxfile  �  �  a m   
 �
� 
ctxt_ o      �� 0 filename fileName] m     ff�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  [ ghg r    iji m    kk �ll  j o      �� 0 fileextension fileExtensionh mnm Z    <op��o E    qrq o    �� 0 filename fileNamer m    ss �tt  .p k    8uu vwv r    xyx m    zz �{{  .y n     |}| 1    �
� 
txdl} 1    �
� 
ascrw ~~ r     (��� b     &��� m     !�� ���  .� l  ! %���� n   ! %��� 4  " %�
�
�
 
citm� m   # $�	�	��� o   ! "�� 0 filename fileName�  �  � o      �� 0 fileextension fileExtension ��� r   ) 8��� c   ) 6��� l  ) 4���� n   ) 4��� 7 * 4���
� 
citm� m   . 0�� � m   1 3����� o   ) *� �  0 filename fileName�  �  � m   4 5��
�� 
TEXT� o      ���� 0 filename fileName�  �  �  n ��� r   = B��� n   = @��� 1   > @��
�� 
psxp� o   = >���� 0 cbxfile  � o      ���� 0 filepath filePath� ��� r   C L��� b   C J��� b   C H��� n   C F��� 1   D F��
�� 
psxp� o   C D���� 0 parentfolder ParentFolder� o   F G���� 0 filename fileName� m   H I�� ���  /� o      ���� 0 
extractdir 
extractDir� ��� r   M T��� b   M R��� o   M N���� 0 parentfolder ParentFolder� m   N Q�� ��� 0 K i n d l e C o m i c C o n v e r t e r . l o g� o      ���� 0 resultsfile resultsFile� ��� Q   U ����� Z   X ������� G   X i��� =  X ]��� o   X Y���� 0 fileextension fileExtension� m   Y \�� ���  . c b z� =  ` e��� o   ` a���� 0 fileextension fileExtension� m   a d�� ���  . z i p� r   l u��� I   l s������� 0 
extractcbz 
ExtractCBZ� ��� o   m n���� 0 filepath filePath� ���� o   n o���� 0 
extractdir 
extractDir��  ��  � o      ���� 0 shellresult  � ��� =  x }��� o   x y���� 0 fileextension fileExtension� m   y |�� ���  . c b r� ���� r   � ���� I   � �������� 0 
extractcbr 
ExtractCBR� ��� o   � ����� 0 filepath filePath� ���� o   � ����� 0 
extractdir 
extractDir��  ��  � o      ���� 0 shellresult  ��  ��  � R      ����
�� .ascrerr ****      � ****� l     ������ o      ���� 0 error_message  ��  ��  � �����
�� 
errn� l     ������ o      ���� 0 error_number  ��  ��  ��  � r   � ���� o   � ����� 0 error_message  � o      ���� 0 shellresult  � ��� Z   � �������� G   � ���� ?   � ���� l  � ������� I  � ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   � ��� ��� 
 E r r o r� �����
�� 
psin� o   � ����� 0 shellresult  ��  ��  ��  � m   � �����  � ?   � ���� l  � ������� I  � ������
�� .sysooffslong    ��� null��  � ����
�� 
psof� m   � ��� ���  W a r n i n g� �����
�� 
psin� o   � ����� 0 shellresult  ��  ��  ��  � m   � �����  � I  � �����
�� .sysodlogaskr        TEXT� o   � ����� 0 shellresult  � �����
�� 
appr� m   � ��� ��� 
 E r r o r��  ��  ��  � ���� L   � ��� o   � ����� 0 
extractdir 
extractDir��  T ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 comic2ebook Comic2Ebook�  ��  o      ���� 0 dir  ��  ��  � k     j  r      n      1    ��
�� 
psxp o     ���� 0 dir   o      ���� 0 dirpath dirPath 	 r    

 b    	 o    ���� 0 parentfolder ParentFolder m     � 0 K i n d l e C o m i c C o n v e r t e r . l o g o      ���� 0 resultsfile resultsFile	  r     b     b     b     b     b     m     �  p y t h o n   l    ����  n    !"! 1    ��
�� 
strq" o    ���� "0 comic2ebookpath comic2ebookPath��  ��   m    ## �$$ 
   K H D   l   %����% n    &'& 1    ��
�� 
strq' o    ���� 0 dirpath dirPath��  ��   m    (( �))    l   *����* n    +,+ 1    ��
�� 
strq, o    ���� 0 thetitle TheTitle��  ��   o      ���� 0 shellcommand   -.- Q     5/01/ r   # *232 I  # (��4��
�� .sysoexecTEXT���     TEXT4 o   # $���� 0 shellcommand  ��  3 o      ���� 0 shellresult  0 R      ��56
�� .ascrerr ****      � ****5 l     7����7 o      ���� 0 error_message  ��  ��  6 ��8��
�� 
errn8 l     9����9 o      ���� 0 error_number  ��  ��  ��  1 r   2 5:;: o   2 3���� 0 error_message  ; o      ���� 0 shellresult  . <=< Z   6 g>?����> G   6 U@A@ ?   6 ABCB l  6 ?D����D I  6 ?����E
�� .sysooffslong    ��� null��  E ��FG
�� 
psofF m   8 9HH �II 
 E r r o rG ��J��
�� 
psinJ o   : ;���� 0 shellresult  ��  ��  ��  C m   ? @����  A ?   D QKLK l  D OM����M I  D O����N
�� .sysooffslong    ��� null��  N ��OP
�� 
psofO m   F IQQ �RR  W a r n i n gP ��S��
�� 
psinS o   J K���� 0 shellresult  ��  ��  ��  L m   O P����  ? I  X c��TU
�� .sysodlogaskr        TEXTT o   X Y���� 0 shellresult  U ��V�
�� 
apprV m   \ _WW �XX 
 E r r o r�  ��  ��  = Y�~Y L   h j�}�}  �~  � Z[Z l     �|�{�z�|  �{  �z  [ \]\ i     #^_^ I      �y`�x�y 0 	kindlegen 	Kindlegen` a�wa o      �v�v 0 dir  �w  �x  _ k     `bb cdc r     efe b     ghg n     iji 1    �u
�u 
psxpj o     �t�t 0 dir  h m    kk �ll  / c o n t e n t . o p ff o      �s�s 0 opfpath opfPathd mnm r    opo b    qrq o    	�r�r 0 parentfolder ParentFolderr m   	 
ss �tt 0 K i n d l e C o m i c C o n v e r t e r . l o gp o      �q�q 0 resultsfile resultsFilen uvu r    wxw b    yzy b    {|{ o    �p�p 0 kindlegenpath kindlegenPath| m    }} �~~   z l   �o�n n    ��� 1    �m
�m 
strq� o    �l�l 0 opfpath opfPath�o  �n  x o      �k�k 0 shellcommand  v ��� Q    -���� r    "��� I    �j��i
�j .sysoexecTEXT���     TEXT� o    �h�h 0 shellcommand  �i  � o      �g�g 0 shellresult  � R      �f��
�f .ascrerr ****      � ****� l     ��e�d� o      �c�c 0 error_message  �e  �d  � �b��a
�b 
errn� l     ��`�_� o      �^�^ 0 error_number  �`  �_  �a  � r   * -��� o   * +�]�] 0 error_message  � o      �\�\ 0 shellresult  � ��� Z   . ]���[�Z� G   . K��� ?   . 9��� l  . 7��Y�X� I  . 7�W�V�
�W .sysooffslong    ��� null�V  � �U��
�U 
psof� m   0 1�� ��� 
 E r r o r� �T��S
�T 
psin� o   2 3�R�R 0 shellresult  �S  �Y  �X  � m   7 8�Q�Q  � ?   < G��� l  < E��P�O� I  < E�N�M�
�N .sysooffslong    ��� null�M  � �L��
�L 
psof� m   > ?�� ���  W a r n i n g� �K��J
�K 
psin� o   @ A�I�I 0 shellresult  �J  �P  �O  � m   E F�H�H  � I  N Y�G��
�G .sysodlogaskr        TEXT� o   N O�F�F 0 shellresult  � �E��D
�E 
appr� m   R U�� ��� 
 E r r o r�D  �[  �Z  � ��C� L   ^ `�B�B  �C  ] ��� l     �A�@�?�A  �@  �?  � ��� i   $ '��� I      �>��=�> 0 	stripfile 	StripFile� ��<� o      �;�; 0 dir  �<  �=  � k     ��� ��� r     ��� b     ��� n     ��� 1    �:
�: 
psxp� o     �9�9 0 dir  � m    �� ���  / c o n t e n t . m o b i� o      �8�8 0 origfilepath origFilePath� ��� r    ��� b    ��� b    ��� n    ��� 1   	 �7
�7 
psxp� o    	�6�6 0 parentfolder ParentFolder� o    �5�5 0 thetitle TheTitle� m    �� ��� 
 . m o b i� o      �4�4 $0 strippedfilepath strippedFilePath� ��� r    ��� b    ��� o    �3�3 0 parentfolder ParentFolder� m    �� ��� $ k i n d l e s t r i p l o g . t x t� o      �2�2 0 resultsfile resultsFile� ��� r    +��� b    )��� b    %��� b    #��� b    ��� b    ��� m    �� ���  p y t h o n  � l   ��1�0� n    ��� 1    �/
�/ 
strq� o    �.�. "0 kindlestrippath KindleStripPath�1  �0  � m    �� ���   � l   "��-�,� n    "��� 1     "�+
�+ 
strq� o     �*�* 0 origfilepath origFilePath�-  �,  � m   # $�� ���   � l  % (��)�(� n   % (��� 1   & (�'
�' 
strq� o   % &�&�& $0 strippedfilepath strippedFilePath�)  �(  � o      �%�% 0 shellcommand  � ��� Q   , A���� r   / 6��� I  / 4�$��#
�$ .sysoexecTEXT���     TEXT� o   / 0�"�" 0 shellcommand  �#  � o      �!�! 0 shellresult  � R      � ��
�  .ascrerr ****      � ****� l     ���� o      �� 0 error_message  �  �  � ���
� 
errn� l     ���� o      �� 0 error_number  �  �  �  � r   > A   o   > ?�� 0 error_message   o      �� 0 shellresult  �  Z   B ��� G   B i ?   B Q	 l  B O
��
 I  B O��
� .sysooffslong    ��� null�   �
� 
psof m   D E � 
 E r r o r ��
� 
psin o   H I�� 0 shellresult  �  �  �  	 m   O P��   ?   T e l  T c�
�	 I  T c��
� .sysooffslong    ��� null�   �
� 
psof m   V Y �  W a r n i n g ��
� 
psin o   \ ]�� 0 shellresult  �  �
  �	   m   c d��   k   l �  r   l | I  l z� 
� .rdwropenshor       file 4   l r� !
�  
file! o   p q���� 0 resultsfile resultsFile  ��"��
�� 
perm" m   u v��
�� boovtrue��   o      ���� 0 fileref fileRef #$# I  } ���%&
�� .rdwrseofnull���     ****% o   } ~���� 0 fileref fileRef& ��'��
�� 
set2' m   � �����  ��  $ ()( I  � ���*+
�� .rdwrwritnull���     ***** o   � ����� 0 shellresult  + ��,��
�� 
refn, o   � ����� 0 fileref fileRef��  ) -��- I  � ���.��
�� .rdwrclosnull���     ****. o   � ����� 0 fileref fileRef��  ��  �  �   /��/ L   � �����  ��  � 010 l     ��������  ��  ��  1 232 i   ( +454 I     ������
�� .aevtoappnull  �   � ****��  ��  5 Z     67����6 l    8����8 I     �������� (0 getexecutablepaths GetExecutablePaths��  ��  ��  ��  7 k    99 :;: r    <=< m    	>> �?? � D r a g   &   D r o p   i m a g e s   f o l d e r s   o n t o   t h i s   A p p l e s c r i p t   a p p l i c a t i o n   t o   c o n v e r t   t h e m   t o   a   P a n e l V i e w   M o b i p o c k e t   e b o o k s .= o      ���� 0 
dialogtext 
dialogText; @��@ I   ��AB
�� .sysodlogaskr        TEXTA o    ���� 0 
dialogtext 
dialogTextB ��CD
�� 
apprC m    EE �FF ( K i n d l e C o m i c C o n v e r t e rD ��GH
�� 
btnsG J    II J��J m    KK �LL  O K��  H ��M��
�� 
dfltM m    ���� ��  ��  ��  ��  3 NON l     ��������  ��  ��  O PQP i   , /RSR I     ��T��
�� .aevtodocnull  �    alisT o      ���� 0 
some_items  ��  S Z     �UV����U l    W����W I     �������� (0 getexecutablepaths GetExecutablePaths��  ��  ��  ��  V X    �X��YX k    �ZZ [\[ O   $]^] l 	  #_����_ r    #`a` c    !bcb l   d����d n    efe m    ��
�� 
ctnrf o    ���� 0 	this_item  ��  ��  c m     ��
�� 
ctxta o      ���� 0 parentfolder ParentFolder��  ��  ^ m    gg�                                                                                  MACS  alis    t  Macintosh HD               �8�H+     N
Finder.app                                                      �S��        ����  	                CoreServices    �8҈      �͒       N   H   G  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  \ hih Z   % hjk��lj l  % .m����m =  % .non n   % ,pqp 1   * ,��
�� 
asdrq l  % *r����r I  % *��s��
�� .sysonfo4asfe        files o   % &���� 0 	this_item  ��  ��  ��  o m   , -��
�� boovfals��  ��  k k   1 Ztt uvu r   1 6wxw c   1 4yzy o   1 2���� 0 	this_item  z m   2 3��
�� 
ctxtx o      ���� 0 filename fileNamev {��{ Z   7 Z|}��~| E   7 :� o   7 8���� 0 filename fileName� m   8 9�� ���  .} k   = T�� ��� r   = B��� m   = >�� ���  .� n     ��� 1   ? A��
�� 
txdl� 1   > ?��
�� 
ascr� ���� r   C T��� c   C R��� l  C N������ n   C N��� 7 D N����
�� 
citm� m   H J���� � m   K M������� o   C D���� 0 filename fileName��  ��  � m   N Q��
�� 
TEXT� o      ���� 0 dir  ��  ��  ~ r   W Z��� o   W X���� 0 filename fileName� o      ���� 0 dir  ��  ��  l k   ] h�� ��� r   ] b��� c   ] `��� o   ] ^���� 0 	this_item  � m   ^ _��
�� 
ctxt� o      ���� 0 filename fileName� ���� r   c h��� c   c f��� o   c d���� 0 	this_item  � m   d e��
�� 
ctxt� o      ���� 0 dir  ��  i ��� r   i |��� I  i z�����
�� .sysoexecTEXT���     TEXT� b   i v��� m   i l�� ���  b a s e n a m e  � l  l u������ n   l u��� 1   q u��
�� 
strq� l  l q������ n   l q��� 1   m q��
�� 
psxp� o   l m���� 0 dir  ��  ��  ��  ��  ��  � o      ���� 0 dirname  � ��� r   } ���� I  } �����
�� .sysodlogaskr        TEXT� b   } ���� m   } ��� ��� 2 E n t e r   a   t i t l e   f o r   f o l d e r  � l  � ������� n   � ���� 1   � ���
�� 
strq� o   � ����� 0 dirname  ��  ��  � �����
�� 
dtxt� o   � ����� 0 dirname  ��  � o      ���� 0 temp  � ��� r   � ���� l  � ������� n   � ���� 1   � ���
�� 
ttxt� o   � ����� 0 temp  ��  ��  � o      ���� 0 thetitle TheTitle� ��� I   � �������� 0 comic2ebook Comic2Ebook� ��� o   � ��~�~ 0 filename fileName�  ��  � ��� I   � ��}��|�} 0 	kindlegen 	Kindlegen� ��{� o   � ��z�z 0 dir  �{  �|  � ��y� I   � ��x��w�x 0 	stripfile 	StripFile� ��v� o   � ��u�u 0 dir  �v  �w  �y  �� 0 	this_item  Y o    �t�t 0 
some_items  ��  ��  Q ��s� l     �r�q�p�r  �q  �p  �s       �o�������������������n�m�l�k�j�i�h�o  � �g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�g (0 getcomic2ebookpath GetComic2EbookPath�f $0 getkindlegenpath GetKindlegenPath�e (0 getkindlestrippath GetKindleStripPath�d (0 getexecutablepaths GetExecutablePaths�c 0 
extractcbr 
ExtractCBR�b 0 
extractcbz 
ExtractCBZ�a 0 
extractcbx 
ExtractCBx�` 0 comic2ebook Comic2Ebook�_ 0 	kindlegen 	Kindlegen�^ 0 	stripfile 	StripFile
�] .aevtoappnull  �   � ****
�\ .aevtodocnull  �    alis�[ "0 comic2ebookpath comic2ebookPath�Z 0 kindlegenpath kindlegenPath�Y "0 kindlestrippath KindleStripPath�X 0 parentfolder ParentFolder�W 0 thetitle TheTitle�V  �U  �T  �S  �R  �Q  �P  � �O  �N�M���L�O (0 getcomic2ebookpath GetComic2EbookPath�N  �M  � �K�K 0 
fileexists  � �J�I�H�G 0�F�E A�D�C J�B N�A T�@�?�>
�J 
file
�I 
rtyp
�H 
ctxt
�G .earsffdralis        afdr
�F 
psxp�E "0 comic2ebookpath comic2ebookPath
�D 
psxf
�C .coredoexbool        obj 
�B 
appr
�A 
btns
�@ 
dflt�? 
�> .sysodlogaskr        TEXT�L H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� �= ^�<�;���:�= $0 getkindlegenpath GetKindlegenPath�<  �;  � �9�9 0 
fileexists  � �8 h�7�6 y�5�4 ��3 ��2 ��1�0�/
�8 
file
�7 
psxp�6 0 kindlegenpath kindlegenPath
�5 
psxf
�4 .coredoexbool        obj 
�3 
appr
�2 
btns
�1 
dflt�0 
�/ .sysodlogaskr        TEXT�: >*��/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� Y hO�� �. ��-�,���+�. (0 getkindlestrippath GetKindleStripPath�-  �,  � �*�* 0 
fileexists  � �)�(�'�& ��%�$ ��#�" ��! ��  ����
�) 
file
�( 
rtyp
�' 
ctxt
�& .earsffdralis        afdr
�% 
psxp�$ "0 kindlestrippath KindleStripPath
�# 
psxf
�" .coredoexbool        obj 
�! 
appr
�  
btns
� 
dflt� 
� .sysodlogaskr        TEXT�+ H*�)��l �%/�,E�OfE�O� ��&j 	 eE�Y hUO� �����kv�ka  Y hO�� � ������� (0 getexecutablepaths GetExecutablePaths�  �  �  � ����� (0 getcomic2ebookpath GetComic2EbookPath� $0 getkindlegenpath GetKindlegenPath
� 
bool� (0 getkindlestrippath GetKindleStripPath� *j+  	 	*j+ �&	 	*j+ �&� � ������� 0 
extractcbr 
ExtractCBR� ��� �  ��� 0 filepath filePath� 0 dstdir dstDir�  � ����
� 0 filepath filePath� 0 dstdir dstDir� 0 	unrarpath 	UnrarPath�
 0 
fileexists  � �	��� ������� ������,1��
�	 
file
� 
rtyp
� 
ctxt
� .earsffdralis        afdr
� 
psxp
� 
psxf
� .coredoexbool        obj 
� 
appr
� 
btns
�  
dflt�� 
�� .sysodlogaskr        TEXT
�� 
strq
�� .sysoexecTEXT���     TEXT� d*�)��l �%/�,E�OfE�O� ��&j  eE�Y hUO� �����kv�k� OfY hO�a ,a %�a ,%a %�a ,%j � ��;���������� 0 
extractcbz 
ExtractCBZ�� ����� �  ������ 0 filepath filePath�� 0 dstdir dstDir��  � ������ 0 filepath filePath�� 0 dstdir dstDir� G��L��
�� 
strq
�� .sysoexecTEXT���     TEXT�� ��,%�%��,%j � ��V���������� 0 
extractcbx 
ExtractCBx�� ����� �  ���� 0 cbxfile  ��  � 	�������������������� 0 cbxfile  �� 0 filename fileName�� 0 fileextension fileExtension�� 0 filepath filePath�� 0 
extractdir 
extractDir�� 0 resultsfile resultsFile�� 0 shellresult  �� 0 error_message  �� 0 error_number  � "f������ksz��������������������������������������������
�� 
file
�� 
pnam
�� 
ctxt
�� 
ascr
�� 
txdl
�� 
citm����
�� 
TEXT
�� 
psxp�� 0 parentfolder ParentFolder
�� 
bool�� 0 
extractcbz 
ExtractCBZ�� 0 
extractcbr 
ExtractCBR�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
appr
�� .sysodlogaskr        TEXT�� �� *�/�,�&E�UO�E�O�� #���,FO��i/%E�O�[�\[Zk\Z�2�&E�Y hO��,E�O��,�%�%E�O�a %E�O :�a  
 �a  a & *��l+ E�Y �a   *��l+ E�Y hW 
X  �E�O*a a a �a  j
 *a a a �a  ja & �a a  l !Y hO�� ������������� 0 comic2ebook Comic2Ebook�� ����� �  ���� 0 dir  ��  � ���������������� 0 dir  �� 0 dirpath dirPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  � ��������#(���������H������Q����W��
�� 
psxp�� 0 parentfolder ParentFolder�� "0 comic2ebookpath comic2ebookPath
�� 
strq�� 0 thetitle TheTitle
�� .sysoexecTEXT���     TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�� k��,E�O��%E�O���,%�%��,%�%��,%E�O �j 	E�W 
X 
 �E�O*���� j
 *�a �� ja & �a a l Y hOh� ��_���������� 0 	kindlegen 	Kindlegen�� ����� �  ���� 0 dir  ��  � ���������������� 0 dir  �� 0 opfpath opfPath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  � ��k��s��}������������������������
�� 
psxp�� 0 parentfolder ParentFolder�� 0 kindlegenpath kindlegenPath
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 error_message  � ������
�� 
errn�� 0 error_number  ��  
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
bool
�� 
appr
�� .sysodlogaskr        TEXT�� a��,�%E�O��%E�O��%��,%E�O �j E�W 
X  	�E�O*���� j
 *���� ja & �a a l Y hOh� ������� ���� 0 	stripfile 	StripFile�� ����   ���� 0 dir  ��    	�������������������� 0 dir  �� 0 origfilepath origFilePath�� $0 strippedfilepath strippedFilePath�� 0 resultsfile resultsFile�� 0 shellcommand  �� 0 shellresult  �� 0 error_message  �� 0 error_number  �� 0 fileref fileRef �����~����}�|���{�z�y�x�w�v�u�t�s�r�q�p�o�n�m
�� 
psxp� 0 parentfolder ParentFolder�~ 0 thetitle TheTitle�} "0 kindlestrippath KindleStripPath
�| 
strq
�{ .sysoexecTEXT���     TEXT�z 0 error_message   �l�k�j
�l 
errn�k 0 error_number  �j  
�y 
psof
�x 
psin�w 
�v .sysooffslong    ��� null
�u 
bool
�t 
file
�s 
perm
�r .rdwropenshor       file
�q 
set2
�p .rdwrseofnull���     ****
�o 
refn
�n .rdwrwritnull���     ****
�m .rdwrclosnull���     ****�� ���,�%E�O��,�%�%E�O��%E�O���,%�%��,%�%��,%E�O �j E�W 
X  �E�O*��a �a  j
 *�a a �a  ja & /*a �/a el E�O�a jl O�a �l O�j Y hOh� �i5�h�g�f
�i .aevtoappnull  �   � ****�h  �g     
�e>�d�cE�bK�a�`�_�e (0 getexecutablepaths GetExecutablePaths�d 0 
dialogtext 
dialogText
�c 
appr
�b 
btns
�a 
dflt�` 
�_ .sysodlogaskr        TEXT�f *j+   �E�O�����kv�k� 	Y h� �^S�]�\�[
�^ .aevtodocnull  �    alis�] 0 
some_items  �\   �Z�Y�X�W�V�U�Z 0 
some_items  �Y 0 	this_item  �X 0 filename fileName�W 0 dir  �V 0 dirname  �U 0 temp   �T�S�R�Qg�P�O�N�M�L���K�J�I�H�G��F�E�D��C�B�A�@�?�>�=�T (0 getexecutablepaths GetExecutablePaths
�S 
kocl
�R 
cobj
�Q .corecnte****       ****
�P 
ctnr
�O 
ctxt�N 0 parentfolder ParentFolder
�M .sysonfo4asfe        file
�L 
asdr
�K 
ascr
�J 
txdl
�I 
citm�H��
�G 
TEXT
�F 
psxp
�E 
strq
�D .sysoexecTEXT���     TEXT
�C 
dtxt
�B .sysodlogaskr        TEXT
�A 
ttxt�@ 0 thetitle TheTitle�? 0 comic2ebook Comic2Ebook�> 0 	kindlegen 	Kindlegen�= 0 	stripfile 	StripFile�[ �*j+   � ��[��l kh � 	��,�&E�UO�j �,f  .��&E�O�� ���,FO�[�\[Zk\Z�2a &E�Y �E�Y ��&E�O��&E�Oa �a ,a ,%j E�Oa �a ,%a �l E�O�a ,E` O*�k+ O*�k+ O*�k+ [OY�cY h� � � / U s e r s / l e s t a t / A p p l i c a t i o n s / k c c / K i n d l e C o m i c C o n v e r t e r . a p p / C o n t e n t s / R e s o u r c e s / c o m i c 2 e b o o k . p y� �		 0 / u s r / l o c a l / b i n / k i n d l e g e n� �

 � / U s e r s / l e s t a t / A p p l i c a t i o n s / k c c / K i n d l e C o m i c C o n v e r t e r . a p p / C o n t e n t s / R e s o u r c e s / k i n d l e s t r i p . p y� � H M a c i n t o s h   H D : U s e r s : l e s t a t : D o w n l o a d s :� �  E s c a f l o w n e _ c a p 1�n  �m  �l  �k  �j  �i  �h   ascr  ��ޭ