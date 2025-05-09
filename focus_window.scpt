FasdUAS 1.101.10   ��   ��    k             l     ��  ��    Z T AppleScript to find and focus a window with an EXACT title for a given application.     � 	 	 �   A p p l e S c r i p t   t o   f i n d   a n d   f o c u s   a   w i n d o w   w i t h   a n   E X A C T   t i t l e   f o r   a   g i v e n   a p p l i c a t i o n .   
  
 l     ��  ��    &   Expects two arguments when run:     �   @   E x p e c t s   t w o   a r g u m e n t s   w h e n   r u n :      l     ��  ��    a [ 1. targetAppName (string): The exact name of the application (e.g., "iTerm2", "Terminal").     �   �   1 .   t a r g e t A p p N a m e   ( s t r i n g ) :   T h e   e x a c t   n a m e   o f   t h e   a p p l i c a t i o n   ( e . g . ,   " i T e r m 2 " ,   " T e r m i n a l " ) .      l     ��  ��    U O 2. exactWindowTitle (string): The exact title of the window to find and focus.     �   �   2 .   e x a c t W i n d o w T i t l e   ( s t r i n g ) :   T h e   e x a c t   t i t l e   o f   t h e   w i n d o w   t o   f i n d   a n d   f o c u s .      l     ��������  ��  ��     ��  i         I     �� ��
�� .aevtoappnull  �   � ****  o      ���� 0 argv  ��    k    t      !   l     �� " #��   "    --- Argument Handling ---    # � $ $ 4   - - -   A r g u m e n t   H a n d l i n g   - - - !  % & % q       ' ' �� (�� 0 targetappname targetAppName ( ������ $0 exactwindowtitle exactWindowTitle��   &  ) * ) l     ��������  ��  ��   *  + , + Z     > - .�� / - >     0 1 0 l     2���� 2 I    �� 3��
�� .corecnte****       **** 3 o     ���� 0 argv  ��  ��  ��   1 m    ����  . k   
   4 4  5 6 5 l  
 
�� 7 8��   7 8 2 Error if incorrect number of arguments are passed    8 � 9 9 d   E r r o r   i f   i n c o r r e c t   n u m b e r   o f   a r g u m e n t s   a r e   p a s s e d 6  : ; : I  
 �� < =
�� .sysonotfnull��� ��� TEXT < m   
  > > � ? ? � S c r i p t   r e q u i r e s   e x a c t l y   2   a r g u m e n t s :   A p p N a m e   a n d   E x a c t W i n d o w T i t l e = �� @��
�� 
appr @ m     A A � B B 4 A p p l e S c r i p t   A r g u m e n t   E r r o r��   ;  C�� C R     �� D E
�� .ascrerr ****      � **** D b     F G F b     H I H m     J J � K K d I n v a l i d   n u m b e r   o f   a r g u m e n t s .   E x p e c t e d   2 ,   r e c e i v e d   I l    L���� L I   �� M��
�� .corecnte****       **** M o    ���� 0 argv  ��  ��  ��   G m     N N � O O  . E �� P��
�� 
errn P m    �����T��  ��  ��   / k   # > Q Q  R S R r   # ) T U T n   # ' V W V 4   $ '�� X
�� 
cobj X m   % &����  W o   # $���� 0 argv   U o      ���� 0 targetappname targetAppName S  Y Z Y r   * 0 [ \ [ n   * . ] ^ ] 4   + .�� _
�� 
cobj _ m   , -����  ^ o   * +���� 0 argv   \ o      ���� $0 exactwindowtitle exactWindowTitle Z  `�� ` I  1 >�� a��
�� .ascrcmnt****      � **** a b   1 : b c b b   1 8 d e d b   1 6 f g f b   1 4 h i h m   1 2 j j � k k < S c r i p t   r u n n i n g   w i t h   A p p N a m e :   ' i o   2 3���� 0 targetappname targetAppName g m   4 5 l l � m m " ' ,   E x a c t   T i t l e :   ' e o   6 7���� $0 exactwindowtitle exactWindowTitle c m   8 9 n n � o o  '��  ��   ,  p q p l  ? ?��������  ��  ��   q  r s r l  ? ?�� t u��   t   --- Main Logic ---    u � v v &   - - -   M a i n   L o g i c   - - - s  w x w l  ? ?�� y z��   y < 6 Exit silently if the target application isn't running    z � { { l   E x i t   s i l e n t l y   i f   t h e   t a r g e t   a p p l i c a t i o n   i s n ' t   r u n n i n g x  | } | Q   ? � ~  � ~ O   B g � � � Z   F f � ����� � H   F O � � l  F N ����� � I  F N�� ���
�� .coredoexnull���     **** � 4   F J�� �
�� 
prcs � o   H I���� 0 targetappname targetAppName��  ��  ��   � k   R b � �  � � � I  R _�� ���
�� .ascrcmnt****      � **** � b   R [ � � � b   R W � � � m   R U � � � � �  P r o c e s s   ' � o   U V���� 0 targetappname targetAppName � m   W Z � � � � � * '   n o t   f o u n d .   E x i t i n g .��   �  ��� � L   ` b����  ��  ��  ��   � m   B C � ��                                                                                  sevs  alis    \  Macintosh HD               �E)BD ����System Events.app                                              �����E)        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��    R      �� ���
�� .ascrerr ****      � **** � o      ���� "0 checkprocesserr checkProcessErr��   � k   o � � �  � � � I  o ��� � �
�� .sysonotfnull��� ��� TEXT � b   o t � � � m   o r � � � � � 0 E r r o r   c h e c k i n g   p r o c e s s :   � o   r s���� 0 targetappname targetAppName � �� � �
�� 
appr � m   u x � � � � � " A p p l e S c r i p t   E r r o r � �� ���
�� 
subt � o   { |���� "0 checkprocesserr checkProcessErr��   �  ��� � R   � ��� ���
�� .ascrerr ****      � **** � b   � � � � � m   � � � � � � � 0 E r r o r   c h e c k i n g   p r o c e s s :   � o   � ����� "0 checkprocesserr checkProcessErr��  ��   }  � � � l  � ���������  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � < 6 Try to find and focus the window with the exact title    � � � � l   T r y   t o   f i n d   a n d   f o c u s   t h e   w i n d o w   w i t h   t h e   e x a c t   t i t l e �  � � � Q   �r � � � � k   �? � �  � � � l  �= � � � � O   �= � � � l  �< � � � � O   �< � � � k   �; � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � ���
�� 
null � o      ���� 0 targetwindow targetWindow �  � � � l  � ��� � ���   � 2 , Loop through the windows of the application    � � � � X   L o o p   t h r o u g h   t h e   w i n d o w s   o f   t h e   a p p l i c a t i o n �  � � � X   � � ��� � � Q   � � � � � � k   � � � �  � � � l  � ��� � ���   �    --- EXACT title match ---    � � � � 4   - - -   E X A C T   t i t l e   m a t c h   - - - �  ��� � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 w   � o   � ����� $0 exactwindowtitle exactWindowTitle � k   � � � �  � � � r   � � � � � o   � ����� 0 w   � o      ���� 0 targetwindow targetWindow �  ��� � l  � � � � � �  S   � � �   Found it, stop looking    � � � � .   F o u n d   i t ,   s t o p   l o o k i n g��  ��  ��  ��   � R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 readnameerr readNameErr��   � k   � � � �  � � � l  � ��� � ���   � H B Ignore if a window's name can't be read (e.g., transient windows)    � � � � �   I g n o r e   i f   a   w i n d o w ' s   n a m e   c a n ' t   b e   r e a d   ( e . g . ,   t r a n s i e n t   w i n d o w s ) �  ��� � I  � ��� ���
�� .ascrcmnt****      � **** � b   � � � � � m   � � � � � � � B C o u l d   n o t   r e a d   n a m e   o f   a   w i n d o w :   � o   � ����� 0 readnameerr readNameErr��  ��  �� 0 w   � 2  � ���
�� 
cwin �  � � � l  � ���������  ��  ��   �    l  � �����   %  If a matching window was found    � >   I f   a   m a t c h i n g   w i n d o w   w a s   f o u n d  Z   �9��	 >  � �

 o   � ����� 0 targetwindow targetWindow m   � ���
�� 
null k   �'  I  � �����
�� .ascrcmnt****      � **** m   � � � v F o u n d   m a t c h i n g   w i n d o w .   A c t i v a t i n g   a p p   a n d   r a i s i n g   w i n d o w . . .��    l  � �����   %  Activate the application first    � >   A c t i v a t e   t h e   a p p l i c a t i o n   f i r s t  O  � I ����~
�� .miscactvnull��� ��� null�  �~   4   � ��}
�} 
capp o   � ��|�| 0 targetappname targetAppName  l 		�{�{   "  Short delay seems necessary    �   8   S h o r t   d e l a y   s e e m s   n e c e s s a r y !"! I 	�z#�y
�z .sysodelanull��� ��� nmbr# m  	$$ ?�      �y  " %&% l �x'(�x  ' 6 0 Tell System Events to raise the specific window   ( �)) `   T e l l   S y s t e m   E v e n t s   t o   r a i s e   t h e   s p e c i f i c   w i n d o w& *+* I �w,�v
�w .prcsperfnull���     actT, n  -.- 4  �u/
�u 
actT/ m  00 �11  A X R a i s e. o  �t�t 0 targetwindow targetWindow�v  + 2�s2 I  '�r3�q
�r .ascrcmnt****      � ****3 m   #44 �55 2 A X R a i s e   a c t i o n   p e r f o r m e d .�q  �s  ��  	 k  *966 787 I *7�p9�o
�p .ascrcmnt****      � ****9 b  *3:;: b  */<=< m  *->> �?? F N o   w i n d o w   f o u n d   w i t h   e x a c t   t i t l e :   '= o  -.�n�n $0 exactwindowtitle exactWindowTitle; m  /2@@ �AA  '�o  8 BCB l 88�mDE�m  D + % Optional: Notify if window not found   E �FF J   O p t i o n a l :   N o t i f y   i f   w i n d o w   n o t   f o u n dC G�lG l 88�kHI�k  H � � display notification "Window not found: '" & exactWindowTitle & "'" with title "Focus Window Info" subtitle ("In application: " & targetAppName)   I �JJ"   d i s p l a y   n o t i f i c a t i o n   " W i n d o w   n o t   f o u n d :   ' "   &   e x a c t W i n d o w T i t l e   &   " ' "   w i t h   t i t l e   " F o c u s   W i n d o w   I n f o "   s u b t i t l e   ( " I n   a p p l i c a t i o n :   "   &   t a r g e t A p p N a m e )�l   K�jK l ::�i�h�g�i  �h  �g  �j   � 4   � ��fL
�f 
prcsL o   � ��e�e 0 targetappname targetAppName �   end tell process    � �MM "   e n d   t e l l   p r o c e s s � m   � �NN�                                                                                  sevs  alis    \  Macintosh HD               �E)BD ����System Events.app                                              �����E)        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   �   end tell System Events    � �OO .   e n d   t e l l   S y s t e m   E v e n t s � P�dP l >>�c�b�a�c  �b  �a  �d   � R      �`QR
�` .ascrerr ****      � ****Q o      �_�_ 0 errmsg errMsgR �^S�]
�^ 
errnS o      �\�\ 0 errnum errNum�]   � k  GrTT UVU l GG�[WX�[  W   Minimal error notice   X �YY *   M i n i m a l   e r r o r   n o t i c eV Z[Z I GZ�Z\�Y
�Z .ascrcmnt****      � ****\ b  GV]^] b  GR_`_ b  GPaba b  GLcdc m  GJee �ff 8 E r r o r   d u r i n g   f o c u s   a t t e m p t :  d o  JK�X�X 0 errmsg errMsgb m  LOgg �hh    (` o  PQ�W�W 0 errnum errNum^ m  RUii �jj  )�Y  [ k�Vk I [r�Ulm
�U .sysonotfnull��� ��� TEXTl b  [dnon b  [`pqp m  [^rr �ss . E r r o r   f o c u s i n g   w i n d o w   'q o  ^_�T�T $0 exactwindowtitle exactWindowTitleo m  `ctt �uu  'm �Svw
�S 
apprv m  ehxx �yy " A p p l e S c r i p t   E r r o rw �Rz�Q
�R 
subtz o  kl�P�P 0 errmsg errMsg�Q  �V   � {�O{ l ss�N�M�L�N  �M  �L  �O  ��       �K|}~�K  | �J�I
�J .aevtoappnull  �   � ****�I 0 targetwindow targetWindow} �H �G�F��E
�H .aevtoappnull  �   � ****�G 0 argv  �F   �D�C�B�A�@�?�>�=�D 0 argv  �C 0 targetappname targetAppName�B $0 exactwindowtitle exactWindowTitle�A "0 checkprocesserr checkProcessErr�@ 0 w  �? 0 readnameerr readNameErr�> 0 errmsg errMsg�= 0 errnum errNum� 4�< >�; A�:�9�8 J N�7 j l n�6 ��5�4 � ��3�2 � ��1�0 ��/�.�-�,�+�* ��)�($�'�&0�%4>@�$�egirtx
�< .corecnte****       ****
�; 
appr
�: .sysonotfnull��� ��� TEXT
�9 
errn�8�T
�7 
cobj
�6 .ascrcmnt****      � ****
�5 
prcs
�4 .coredoexnull���     ****�3 "0 checkprocesserr checkProcessErr�2  
�1 
subt�0 
�/ 
null�. 0 targetwindow targetWindow
�- 
cwin
�, 
kocl
�+ 
pnam�* 0 readnameerr readNameErr
�) 
capp
�( .miscactvnull��� ��� null
�' .sysodelanull��� ��� nmbr
�& 
actT
�% .prcsperfnull���     actT�$ 0 errmsg errMsg� �#�"�!
�# 
errn�" 0 errnum errNum�!  �Eu�j  l ���l O)��l�j  %�%Y ��k/E�O��l/E�O�%�%�%�%j O *� "*�/j  a �%a %j OhY hUW #X  a �%�a a �a  O)ja �%O �� �*�/ �a E` O C*a -[a �l  kh  �a ,�  �E` OY hW X  a  �%j [OY��O_ a  ;a !j O*a "�/ *j #UOa $j %O_ a &a '/j (Oa )j Y a *�%a +%j OPOPUUOPW 2X , -a .�%a /%�%a 0%j Oa 1�%a 2%�a 3a �a  OP~ �� �� �� ���  ���
� 
prcs� ���  i T e r m 2
� 
cwin
�  
cobj� ascr  ��ޭ