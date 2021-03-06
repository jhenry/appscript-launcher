FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Appcript Launcher     � 	 	 $   A p p c r i p t   L a u n c h e r   
  
 l     ��  ��    3 - Author: Justin Henry http://greengaloshes.cc     �   Z   A u t h o r :   J u s t i n   H e n r y   h t t p : / / g r e e n g a l o s h e s . c c      l     ��  ��    B < Purpose: Provide an application that allows the launching,      �   x   P u r p o s e :   P r o v i d e   a n   a p p l i c a t i o n   t h a t   a l l o w s   t h e   l a u n c h i n g ,        l     ��  ��    @ :          via URL protocol, of arbitrary scripts within a      �   t                     v i a   U R L   p r o t o c o l ,   o f   a r b i t r a r y   s c r i p t s   w i t h i n   a        l     ��  ��    $           specified directory.     �   <                     s p e c i f i e d   d i r e c t o r y .      l     ��������  ��  ��       !   l     ��������  ��  ��   !  " # " l     ��������  ��  ��   #  $ % $ l     �� & '��   & C = Use this block to test the function without actually having     ' � ( ( z   U s e   t h i s   b l o c k   t o   t e s t   t h e   f u n c t i o n   w i t h o u t   a c t u a l l y   h a v i n g   %  ) * ) l     �� + ,��   +    to launch it from a URL .    , � - - 4   t o   l a u n c h   i t   f r o m   a   U R L   . *  . / . i      0 1 0 I     ������
�� .aevtoappnull  �   � ****��  ��   1 k     ; 2 2  3 4 3 l     �� 5 6��   5 $  Sample url format for testing    6 � 7 7 <   S a m p l e   u r l   f o r m a t   f o r   t e s t i n g 4  8 9 8 r      : ; : m      < < � = = � a p p s c r i p t : / / c o m . g r e e n g a l o s h e s . A p p l e S c r i p t . A p p s c r i p t L a u n c h e r ? r u n = f l e x t i m e . r b & n a m e = b o b & d u r a t i o n = 5 m i n s ; o      ���� 0 the_text   9  > ? > l   ��������  ��  ��   ?  @ A @ r     B C B I    
�� D���� 0 get_argument_string   D  E�� E o    ���� 0 the_text  ��  ��   C l      F���� F o      ���� 0 argument_string  ��  ��   A  G H G r     I J I I    �� K���� 0 get_script_name   K  L�� L o    ���� 0 the_text  ��  ��   J o      ���� 0 
the_script   H  M N M l   ��������  ��  ��   N  O P O r    ! Q R Q n     S T S 1    ��
�� 
psxp T l    U���� U I   �� V W
�� .earsffdralis        afdr V m    ��
�� afdrasup W �� X��
�� 
from X m    ��
�� fldmfldu��  ��  ��   R o      ���� 0 scripts_path   P  Y Z Y r   " % [ \ [ m   " # ] ] � ^ ^  A p p s c r i p t / \ o      ���� 0 
the_folder   Z  _ ` _ l  & &��������  ��  ��   `  a�� a I  & ;�� b��
�� .sysoexecTEXT���     TEXT b b   & 7 c d c b   & 3 e f e b   & / g h g b   & - i j i b   & + k l k m   & ' m m � n n 
 r u b y   l n   ' * o p o 1   ( *��
�� 
strq p o   ' (���� 0 scripts_path   j o   + ,���� 0 
the_folder   h o   - .���� 0 
the_script   f 1   / 2��
�� 
spac d n   3 6 q r q 1   4 6��
�� 
strq r l  3 4 s���� s o   3 4���� 0 argument_string  ��  ��  ��  ��   /  t u t l     ��������  ��  ��   u  v w v l     ��������  ��  ��   w  x y x l     �� z {��   z ' ! Main block of the application.      { � | | B   M a i n   b l o c k   o f   t h e   a p p l i c a t i o n .     y  } ~ } l     ��  ���    > 8 Launched when passed a URL, as specified in Info.plist.    � � � � p   L a u n c h e d   w h e n   p a s s e d   a   U R L ,   a s   s p e c i f i e d   i n   I n f o . p l i s t . ~  � � � i     � � � I     �� ���
�� .GURLGURLnull��� ��� TEXT � o      ���� 0 this_url this_URL��   � k     7 � �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 4 . Grab the argument string and the script name,    � � � � \   G r a b   t h e   a r g u m e n t   s t r i n g   a n d   t h e   s c r i p t   n a m e , �  � � � l     �� � ���   � 9 3 as passed via the commands in the argument string.    � � � � f   a s   p a s s e d   v i a   t h e   c o m m a n d s   i n   t h e   a r g u m e n t   s t r i n g . �  � � � r      � � � I     �� ����� 0 get_argument_string   �  ��� � o    ���� 0 this_url this_URL��  ��   � l      ����� � o      ���� 0 argument_string  ��  ��   �  � � � r   	  � � � I   	 �� ����� 0 get_script_name   �  ��� � o   
 ���� 0 this_url this_URL��  ��   � o      ���� 0 
the_script   �  � � � l   ��������  ��  ��   �  � � � l   �� � ���   � 6 0 Get the path to the application support folder     � � � � `   G e t   t h e   p a t h   t o   t h e   a p p l i c a t i o n   s u p p o r t   f o l d e r   �  � � � l   �� � ���   � 7 1 in the user's home directory.  We'll be looking     � � � � b   i n   t h e   u s e r ' s   h o m e   d i r e c t o r y .     W e ' l l   b e   l o o k i n g   �  � � � l   �� � ���   � 7 1 in the "Appscript" folder within that directory.    � � � � b   i n   t h e   " A p p s c r i p t "   f o l d e r   w i t h i n   t h a t   d i r e c t o r y . �  � � � l   �� � ���   � S M Final path would be something like ~/Library/Application\ Support/Appscript/    � � � � �   F i n a l   p a t h   w o u l d   b e   s o m e t h i n g   l i k e   ~ / L i b r a r y / A p p l i c a t i o n \   S u p p o r t / A p p s c r i p t / �  � � � r     � � � n     � � � 1    ��
�� 
psxp � l    ����� � I   �� � �
�� .earsffdralis        afdr � m    ��
�� afdrasup � �� ���
�� 
from � m    ��
�� fldmfldu��  ��  ��   � o      ���� 0 scripts_path   �  � � � r    ! � � � m     � � � � �  A p p s c r i p t / � o      ���� 0 
the_folder   �  � � � l  " "��������  ��  ��   �  � � � l  " "�� � ���   � = 7 Run the command, passing arguments as retrieved above.    � � � � n   R u n   t h e   c o m m a n d ,   p a s s i n g   a r g u m e n t s   a s   r e t r i e v e d   a b o v e . �  � � � I  " 5�� ���
�� .sysoexecTEXT���     TEXT � b   " 1 � � � b   " - � � � b   " + � � � b   " ) � � � b   " ' � � � m   " # � � � � � 
 r u b y   � n   # & � � � 1   $ &��
�� 
strq � o   # $���� 0 scripts_path   � o   ' (���� 0 
the_folder   � o   ) *���� 0 
the_script   � 1   + ,��
�� 
spac � n   - 0 � � � 1   . 0��
�� 
strq � l  - . ����� � o   - .���� 0 argument_string  ��  ��  ��   �  ��� � l  6 6�������  ��  �  ��   �  � � � l     �~�}�|�~  �}  �|   �  � � � l     �{ � ��{   �   Supporting Methods    � � � � &   S u p p o r t i n g   M e t h o d s �  � � � l     �z � ��z   � ; 5 Most functionality in the below methods was cribbed     � � � � j   M o s t   f u n c t i o n a l i t y   i n   t h e   b e l o w   m e t h o d s   w a s   c r i b b e d   �  � � � l     �y � ��y   � ? 9 from Apple's Launch Scripts from Webpage Links article:     � � � � r   f r o m   A p p l e ' s   L a u n c h   S c r i p t s   f r o m   W e b p a g e   L i n k s   a r t i c l e :   �  � � � l     �x � ��x   � 4 . http://www.apple.com/applescript/linktrigger/    � � � � \   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / l i n k t r i g g e r / �  � � � l     �w�v�u�w  �v  �u   �  � � � i     � � � I      �t ��s�t 0 get_script_name   �  �r  o      �q�q 0 the_url  �r  �s   � k     T  r      I     �p�o�p 0 get_arguments   �n o    �m�m 0 the_url  �n  �o   o      �l�l 0 these_arguments   	 l  	 	�k
�k  
 9 3 There's got to be an easier way to do this, right?    � f   T h e r e ' s   g o t   t o   b e   a n   e a s i e r   w a y   t o   d o   t h i s ,   r i g h t ?	  Y   	 Q�j�i k    L  r     n     4    �h
�h 
cobj o    �g�g 0 i   o    �f�f 0 these_arguments   o      �e�e 0 	this_pair    r    # m     �  = n      !  1     "�d
�d 
txdl! 1     �c
�c 
ascr "#" s   $ 8$%$ n   $ '&'& 2   % '�b
�b 
citm' o   $ %�a�a 0 	this_pair  % J      (( )*) o      �`�` 0 this_key  * +�_+ o      �^�^ 0 
this_value  �_  # ,-, r   9 >./. m   9 :00 �11  / n     232 1   ; =�]
�] 
txdl3 1   : ;�\
�\ 
ascr- 4�[4 Z   ? L56�Z�Y5 =  ? B787 o   ? @�X�X 0 this_key  8 m   @ A99 �::  r u n6 r   E H;<; o   E F�W�W 0 
this_value  < o      �V�V 0 
the_script  �Z  �Y  �[  �j 0 i   m    �U�U  l   =�T�S= I   �R>�Q
�R .corecnte****       ****> o    �P�P 0 these_arguments  �Q  �T  �S  �i   ?�O? L   R T@@ o   R S�N�N 0 
the_script  �O   � ABA l     �M�L�K�M  �L  �K  B CDC i    EFE I      �JG�I�J 0 get_arguments  G H�HH o      �G�G 0 the_url  �H  �I  F k     II JKJ r     LML I     �FN�E�F 0 get_argument_string  N O�DO o    �C�C 0 the_url  �D  �E  M l     P�B�AP o      �@�@ 0 argument_string  �B  �A  K QRQ r   	 STS m   	 
UU �VV  &T n     WXW 1    �?
�? 
txdlX 1   
 �>
�> 
ascrR YZY r    [\[ n    ]^] 2    �=
�= 
citm^ l   _�<�;_ o    �:�: 0 argument_string  �<  �;  \ o      �9�9 0 these_arguments  Z `a` r    bcb m    dd �ee  c n     fgf 1    �8
�8 
txdlg 1    �7
�7 
ascra h�6h L    ii o    �5�5 0 these_arguments  �6  D jkj l     �4�3�2�4  �3  �2  k l�1l i    mnm I      �0o�/�0 0 get_argument_string  o p�.p o      �-�- 0 the_url  �.  �/  n k     qq rsr r     tut l    	v�,�+v I    	�*�)w
�* .sysooffslong    ��� null�)  w �(xy
�( 
psofx m    zz �{{  ?y �'|�&
�' 
psin| o    �%�% 0 the_url  �&  �,  �+  u o      �$�$ 0 x  s }~} r    � n    ��� 7    �#��
�# 
ctxt� l   ��"�!� [    ��� o    � �  0 x  � m    �� �"  �!  � m    ����� o    �� 0 the_url  � l     ���� o      �� 0 argument_string  �  �  ~ ��� L    �� o    �� 0 argument_string  �  �1       ������� <��� ]�  � 
����������
� .aevtoappnull  �   � ****
� .GURLGURLnull��� ��� TEXT� 0 get_script_name  � 0 get_arguments  � 0 get_argument_string  � 0 the_text  � 0 argument_string  � 0 
the_script  � 0 scripts_path  � 0 
the_folder  � � 1��
���	
� .aevtoappnull  �   � ****�  �
  �  �  <��������� ���� ]�� m������� 0 the_text  � 0 get_argument_string  � 0 argument_string  � 0 get_script_name  � 0 
the_script  
� afdrasup
� 
from
� fldmfldu
�  .earsffdralis        afdr
�� 
psxp�� 0 scripts_path  �� 0 
the_folder  
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�	 <�E�O*�k+ E�O*�k+ E�O���l 	�,E�O�E�O���,%�%�%_ %��,%j � �� ���������
�� .GURLGURLnull��� ��� TEXT�� 0 this_url this_URL��  � ������������ 0 this_url this_URL�� 0 argument_string  �� 0 
the_script  �� 0 scripts_path  �� 0 
the_folder  � �������������� � ��������� 0 get_argument_string  �� 0 get_script_name  
�� afdrasup
�� 
from
�� fldmfldu
�� .earsffdralis        afdr
�� 
psxp
�� 
strq
�� 
spac
�� .sysoexecTEXT���     TEXT�� 8*�k+  E�O*�k+ E�O���l �,E�O�E�O��,%�%�%�%��,%j OP� �� ����������� 0 get_script_name  �� ����� �  ���� 0 the_url  ��  � ���������������� 0 the_url  �� 0 these_arguments  �� 0 i  �� 0 	this_pair  �� 0 this_key  �� 0 
this_value  �� 0 
the_script  � 	������������09�� 0 get_arguments  
�� .corecnte****       ****
�� 
cobj
�� 
ascr
�� 
txdl
�� 
citm�� U*�k+  E�O Gk�j kh ��/E�O���,FO��-E[�k/EQ�Z[�l/EQ�ZO���,FO��  �E�Y h[OY��O�� ��F���������� 0 get_arguments  �� ����� �  ���� 0 the_url  ��  � �������� 0 the_url  �� 0 argument_string  �� 0 these_arguments  � ��U������d�� 0 get_argument_string  
�� 
ascr
�� 
txdl
�� 
citm�� *�k+  E�O���,FO��-E�O���,FO�� ��n���������� 0 get_argument_string  �� ����� �  ���� 0 the_url  ��  � �������� 0 the_url  �� 0 x  �� 0 argument_string  � ��z��������
�� 
psof
�� 
psin�� 
�� .sysooffslong    ��� null
�� 
ctxt�� *���� E�O�[�\[Z�k\Zi2E�O�� ��� N r u n = f l e x t i m e . r b & n a m e = b o b & d u r a t i o n = 5 m i n s� ���  f l e x t i m e . r b� ��� T / U s e r s / j h e n r y / L i b r a r y / A p p l i c a t i o n   S u p p o r t / ascr  ��ޭ