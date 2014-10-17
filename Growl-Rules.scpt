FasdUAS 1.101.10   ��   ��    k             l      ��  ��   lf
## Summary
Some Growl rules for unplugging the Macbook.
1. Eject all volumes, so you don't get "this vlume wasn't ejected properly" errors for the TimeMachine Volume.
2. Turn off Bluetooth so that they keyboard / mouse don't pop in and out of connectivity when I'm in the conference roo, down the hall.

## Prerequsities
1. Install Growl http://growl.info/
2. Install Unplugged http://www.briksoftware.com/products/unplugged/
3. Install blueutil http://www.frederikseiffert.de/blueutil/

## Usage
Copy this file to ~/Library/Application Scripts/com.Growl.GrowlHelperApp/Rules.scpt. If you already have a Rules.scpt, then just copy the Unplugged rules into the file.

## Reference
* https://discussions.apple.com/thread/439472* https://discussions.apple.com/thread/3179367* http://www.frederikseiffert.de/blueutil/* http://growl.info/documentation/applescript-rules

     � 	 	� 
 # #   S u m m a r y 
 S o m e   G r o w l   r u l e s   f o r   u n p l u g g i n g   t h e   M a c b o o k . 
 1 .   E j e c t   a l l   v o l u m e s ,   s o   y o u   d o n ' t   g e t   " t h i s   v l u m e   w a s n ' t   e j e c t e d   p r o p e r l y "   e r r o r s   f o r   t h e   T i m e M a c h i n e   V o l u m e . 
 2 .   T u r n   o f f   B l u e t o o t h   s o   t h a t   t h e y   k e y b o a r d   /   m o u s e   d o n ' t   p o p   i n   a n d   o u t   o f   c o n n e c t i v i t y   w h e n   I ' m   i n   t h e   c o n f e r e n c e   r o o ,   d o w n   t h e   h a l l . 
 
 # #   P r e r e q u s i t i e s 
 1 .   I n s t a l l   G r o w l   h t t p : / / g r o w l . i n f o / 
 2 .   I n s t a l l   U n p l u g g e d   h t t p : / / w w w . b r i k s o f t w a r e . c o m / p r o d u c t s / u n p l u g g e d / 
 3 .   I n s t a l l   b l u e u t i l   h t t p : / / w w w . f r e d e r i k s e i f f e r t . d e / b l u e u t i l / 
 
 # #   U s a g e 
 C o p y   t h i s   f i l e   t o   ~ / L i b r a r y / A p p l i c a t i o n   S c r i p t s / c o m . G r o w l . G r o w l H e l p e r A p p / R u l e s . s c p t .   I f   y o u   a l r e a d y   h a v e   a   R u l e s . s c p t ,   t h e n   j u s t   c o p y   t h e   U n p l u g g e d   r u l e s   i n t o   t h e   f i l e . 
 
 # #   R e f e r e n c e 
 *   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 4 3 9 4 7 2  *   h t t p s : / / d i s c u s s i o n s . a p p l e . c o m / t h r e a d / 3 1 7 9 3 6 7  *   h t t p : / / w w w . f r e d e r i k s e i f f e r t . d e / b l u e u t i l /  *   h t t p : / / g r o w l . i n f o / d o c u m e n t a t i o n / a p p l e s c r i p t - r u l e s 
 
   
  
 l     ��������  ��  ��        w          i         I     ���� 
�� .GrRuNtEvnull��� ��� null��    �� ��
�� 
NtPa  o      ���� 0 notification  ��    k     i       l     ��  ��       Start rules for Unplugged     �   4   S t a r t   r u l e s   f o r   U n p l u g g e d      Z     B  ����  F         =       !   n     " # " 1    ��
�� 
ApNm # o     ���� 0 notification   ! m     $ $ � % %  U n p l u g g e d  =    & ' & n    ( ) ( 1   	 ��
�� 
Titl ) o    	���� 0 notification   ' m     * * � + +  U n p l u g g e d  k    > , ,  - . - O   1 / 0 / I   0�� 1��
�� .fndrejctnull��� ��� obj  1 l   , 2���� 2 6   , 3 4 3 2    ��
�� 
cdis 4 F    + 5 6 5 =   " 7 8 7 1    ��
�� 
isej 8 m    !��
�� boovtrue 6 =  # * 9 : 9 1   $ &��
�� 
isrv : m   ' )��
�� boovtrue��  ��  ��   0 m     ; ;�                                                                                  MACS  alis    t  Macintosh HD               ��gH+   (�
Finder.app                                                      V����        ����  	                CoreServices    ��G�      ��\     (� �� ��  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   .  < = < I   2 8�� >���� 0 switchbluetooth   >  ?�� ? m   3 4 @ @ � A A  o f f��  ��   =  B�� B L   9 > C C K   9 = D D �� E��
�� 
NtRt E o   : ;���� 0 notification  ��  ��  ��  ��     F G F Z   C g H I���� H F   C R J K J =  C H L M L n  C F N O N 1   D F��
�� 
ApNm O o   C D���� 0 notification   M m   F G P P � Q Q  U n p l u g g e d K =  K P R S R n  K N T U T 1   L N��
�� 
Titl U o   K L���� 0 notification   S m   N O V V � W W  P l u g g e d I k   U c X X  Y Z Y I   U ]�� [���� 0 switchbluetooth   [  \�� \ m   V Y ] ] � ^ ^  o n��  ��   Z  _�� _ L   ^ c ` ` K   ^ b a a �� b��
�� 
NtRt b o   _ `���� 0 notification  ��  ��  ��  ��   G  c d c l  h h�� e f��   e   End rules for Unplugged    f � g g 0   E n d   r u l e s   f o r   U n p l u g g e d d  h i h l  h h��������  ��  ��   i  j�� j l  h h�� k l��   k G AUltimately return what you want Growl to do with the notification    l � m m � U l t i m a t e l y   r e t u r n   w h a t   y o u   w a n t   G r o w l   t o   d o   w i t h   t h e   n o t i f i c a t i o n��   �                                                                                  GRRR  alis    H  Macintosh HD               ��gH+     r	Growl.app                                                       63aΌH$        ����  	                Applications    ��G�      Ό�d       r  $Macintosh HD:Applications: Growl.app   	 G r o w l . a p p    M a c i n t o s h   H D  Applications/Growl.app  / ��     n o n l     ��������  ��  ��   o  p q p l     ��������  ��  ��   q  r s r i    t u t I      �� v���� 0 switchbluetooth   v  w�� w o      ���� 0 mode  ��  ��   u O      x y x k     z z  { | { l   ��������  ��  ��   |  } ~ } I   �� ��
�� .sysoexecTEXT���     TEXT  b     � � � m     � � � � � 0 / u s r / l o c a l / b i n / b l u e u t i l   � o    ���� 0 mode  ��   ~  ��� � l   ��������  ��  ��  ��   y m      � ��                                                                                  sprf  alis    ~  Macintosh HD               ��gH+     rSystem Preferences.app                                           ��Μu�        ����  	                Applications    ��G�      Μ�+       r  1Macintosh HD:Applications: System Preferences.app   .  S y s t e m   P r e f e r e n c e s . a p p    M a c i n t o s h   H D  #Applications/System Preferences.app   / ��   s  ��� � l     ��������  ��  ��  ��       �� � � ���   � ����
�� .GrRuNtEvnull��� ��� null�� 0 switchbluetooth   � �� ���� � ���
�� .GrRuNtEvnull��� ��� null��  �� ������
�� 
NtPa�� 0 notification  ��   � ���� 0 notification   � �� $�� *�� ;�� ������� @���� P V ]
�� 
ApNm
�� 
Titl
�� 
bool
�� 
cdis �  
�� 
isej
�� 
isrv
�� .fndrejctnull��� ��� obj �� 0 switchbluetooth  
�� 
NtRt�� j��,� 	 	��,� �& 1� *�-�[[�,\Ze8\[�,\Ze8A1j 
UO*�k+ O��lY hO��,� 	 	��,� �& *a k+ O��lY hOP � �� u���� � ����� 0 switchbluetooth  �� �� ���  �  ���� 0 mode  ��   � ���� 0 mode   �  � ���
�� .sysoexecTEXT���     TEXT�� � �%j OPU ascr  ��ޭ