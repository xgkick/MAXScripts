t r y ( D e s t r o y D i a l o g   R o o t K e y G e n ) c a t c h ( )  
  
 s t r u c t   S a m p l e d K e y  
 (  
 	 T i m e ,  
 	 C O M _ T x ,  
 	 R o o t _ T x  
 )  
  
 s t r u c t   F o o t K e y  
 (  
 	 A c t u a l K e y ,  
 	 T i m e ,  
 	 W S _ T x ,  
  
 	 T e n s i o n ,  
 	 C o n t i n u i t y ,  
 	 B i a s ,  
 	 E a s e T o ,  
 	 E a s e F r o m ,  
 	  
 	 I K _ B l e n d ,  
 	 I K _ S p a c e ,  
 	 I K _ A n k l e T e n s i o n ,  
 	 I K _ J o i n e d P i v o t ,  
 	 I K _ P i v o t I n d e x  
 )  
  
 # P l a n t e d K e y  
 # S l i d i n g K e y  
 # F r e e K e y  
  
 # M e t h o d _ B a k e A l l K e y s  
 # M e t h o d _ P l a n t K e y s  
  
 g l o b a l   M E T H O D   =   # M e t h o d _ B a k e A l l K e y s  
 g l o b a l   T h e R O O T  
 g l o b a l   T h e B I P  
 g l o b a l   T h e C O M  
 g l o b a l   T h e R a n g e  
  
 g l o b a l   F o o t L K e y s  
 g l o b a l   F o o t R K e y s  
  
 - -   ���  B I P E D |�  >�DŴ���  h�� 
 f u n c t i o n   G e t A l l B i p e d s   =  
 (  
 	 b i p s   =   # ( )  
 	  
 	 f o r   o   i n   o b j e c t s   d o  
 	 (  
 	 	 i f   ( c l a s s o f   o )   = =   B i p e d _ O b j e c t   d o  
 	 	 (  
 	 	 	 r o o t _ n o d e   =   o . c o n t r o l l e r . R o o t N o d e  
 	 	 	 A p p e n d I f U n i q u e   b i p s   r o o t _ n o d e  
 	 	 )  
 	 )  
 	  
 	 i f (   b i p s . c o u n t   < =   0 )   d o  
 	 	 r e t u r n   u n d e f i n e d ;  
 	  
 	 r e t u r n   b i p s ;  
 )  
  
 - -   �ȴ���  V e c t o r �\�  M a t r i x 3 |�  l�1�.  
 f u n c t i o n   C o m p o s i t e M a t r i x   _ r i g h t   _ u p   _ a t   _ p o s   f o r w a r d   =  
 (  
 	 l o c a l   m ;  
 	  
 	 c a s e   f o r w a r d   o f  
 	 (  
 	 	 " + X " : 	 m   =   M a t r i x 3       _ a t           - _ r i g h t       _ u p   _ p o s ;  
 	 	 " - X " : 	 m   =   M a t r i x 3   - _ a t               _ r i g h t       _ u p   _ p o s ;  
 	 	 " + Y " : 	 m   =   M a t r i x 3     _ r i g h t           _ a t             _ u p   _ p o s ;  
 	 	 " - Y " : 	 m   =   M a t r i x 3   _ r i g h t     - _ a t             _ u p     _ p o s ;  
 	 	 " + Z " : 	 m   =   M a t r i x 3   _ r i g h t         - _ u p           _ a t       _ p o s ;  
 	 	 " - Z " : 	 m   =   M a t r i x 3   _ r i g h t             _ u p       - _ a t       _ p o s ;  
 	 )  
 	  
 	 r e t u r n   m ;  
 )  
  
 f u n c t i o n   M a k e R o o t T r a n s f o r m   m a t r i x   f o r w a r d   =  
 (  
 	 x   =   m a t r i x . r o w 1 ;  
 	 z   =   [   0 ,   0 ,   1 ] ;  
 	  
 	 y   =   n o r m a l i z e   (   c r o s s   z   x )  
 	 x   =   n o r m a l i z e (   c r o s s   y   z )  
 	  
 	 p o s   =   m a t r i x . p o s ;  
 	 p o s . z   =   0 . 0 f ;  
 	  
 	 r e t u r n     C o m p o s i t e M a t r i x   x   y   z   p o s   f o r w a r d ;  
 )  
  
 f u n c t i o n   M a k e L o o k A t T a r g e t   m a t r i x   t a r g e t   f o r w a r d   =  
 (  
 	 b a s e _ p o s   =   m a t r i x . p o s ;  
 	  
 	 d i f f   =   t a r g e t   -   b a s e _ p o s ;  
 	 d i f f . Z   =   0 . 0 f ; 	 	 	 	 	 - -   P i t c h  �  ��ĳ]�. . .  
 	  
 	 a t _ a x i s   =   n o r m a l i z e   d i f f ;  
 	 u p _ a x i s   =   z _ a x i s ;  
 	 r i g h t _ a x i s   =   n o r m a l i z e (   c r o s s   u p _ a x i s   a t _ a x i s ) ;  
 	  
 	 b a s e _ p o s . Z   =   0 . 0 f ;  
 	  
 	 r e t u r n   C o m p o s i t e M a t r i x   r i g h t _ a x i s   u p _ a x i s   a t _ a x i s   b a s e _ p o s   f o r w a r d  
 )  
  
 f u n c t i o n   S e t B i p e d T X   n o d e   t x   =  
 (  
 	 b i p e d . s e t T r a n s f o r m   n o d e   # p o s   t x . t r a n s l a t i o n P a r t   t r u e ;  
 	 b i p e d . s e t T r a n s f o r m   n o d e   # r o t a t i o n   t x . r o t a t i o n P a r t   t r u e ;  
 )  
  
 f u n c t i o n   T o L H   m a t   =  
 (  
 	 - - m a t   =   M a t r i x 3   [ - 1 ,   0 ,   0 ]   [ 0 ,   0 ,   1 ]   [ 0 ,   1 ,   0 ]   [ 0 ,   0 ,   0 ]   *   m a t ;  
 	  
 	 r o t   =   m a t . r o t a t i o n P a r t ;  
 	 p o s   =   m a t . t r a n s l a t i o n P a r t ;  
 	  
 	 r o t   =   i n v e r s e   r o t ;  
 	  
 	 m   =   r o t   a s   M a t r i x 3 ;  
 	 m . p o s   =   p o s ;  
 	  
 	 r e t u r n   m ;  
 )  
  
 r o l l o u t   R o o t K e y G e n   " R o o t   K e y   G e n e r a t o r "  
 (  
 	 g r o u p   " A b o u t "  
 	 (  
 	 	 l a b e l   S T _ S t a t i c 0   " B i p e d \���0�  R o o t   M o t i o n D�  �͜�t�, "   a l i g n : # l e f t  
 	 	 l a b e l   S T _ S t a t i c 1   " ����  R o o t   B o n e X�  K e y f r a m e D�  ��1�t�  �Ȕ�  ĳl���Ȳ�. "   a l i g n : # l e f t  
 	 )  
 	  
 	 g r o u p   " T a r g e t "  
 	 (  
 	 	 D r o p d o w n L i s t   L I S T _ B i p e d   " B i p e d "  
 	 	 E d i t T e x t   E D _ R o o t   " R o o t "  
 	 	 B u t t o n   B T N _ R e f r e s h   " R e f r e s h "   a l i g n : # r i g h t  
 	 )  
 	  
 	 g r o u p   " R o t a t i o n "  
 	 (  
 	 	 C h e c k B o x   C H K _ R o t a t i o n   " R o t a t i o n "   t o o l t i p : " t r u e : T r a n s l a t i o n ��  h�خ  R o t a t i o n ĳ  0�|� �ĳ]�    ȩ�i�Ȳ�. "   a c r o s s : 2   c h e c k e d : t r u e  
 	 	 D r o p d o w n L i s t   L I S T _ F o r w a r d   " R o o t   F o r w a r d " \  
 	 	 	 i t e m s : # ( " + X " ,   " - X " ,   " + Y " ,   " - Y " ,   " + Z " ,   " - Z " )   s e l e c t i o n : 4   \  
 	 	 	 t o o l t i p : " R o o t X�  �)�t�  �Ő�  ����  ޹���ɔ���  $��i�Ȳ�. "  
 	 	 C h e c k B o x   C H K _ T r a c k R o o t T a r g e t   " T r a c k   R o o t - T a r g e t "   c h e c k e d : t r u e   t o o l t i p : " R o o t  �  C O M t�  D�Ȳ|�  R o o t - T a r g e t D�  �|���ĳ]�  ̹��Ȳ�.   t�L�  C O M X�  R o t a t i o n @�  ƥ�D�  ���  Jŵ�Ȳ�. "  
 	 	 E d i t T e x t   E D _ R o o t T a r g e t   " R o o t   T a r g e t "   t e x t : " r o o t _ t a r g e t "   w i d t h : 1 8 0   a c r o s s : 2  
 	 	 P i c k B u t t o n   P I C K _ R o o t T a r g e t   " P i c k "   m e s s a g e : " R o o t   T a r g e t D�   ���t�  ��8���"  
 	 )  
 	  
 	 g r o u p   " S a m p l i n g "  
 	 (  
 	 	 S p i n n e r   S P I N _ I n t e r v a l   " S a m p l i n g   I n t e r v a l "   r a n g e : [ 1 ,   3 0 ,   5 ]   t y p e : # i n t e g e r   t o o l t i p : " K e y |�  ��1�`�  ���D�  F r a m e   ��\�  ��%�t�  ��8���. "   a l i g n : # l e f t  
 	 )  
 	  
 	 l a b e l   S T _ S t a t i c 2   " "  
 	 B u t t o n   B T N _ G e n e r a t e   " G e n e r a t e ! "   w i d t h : 1 8 0  
 	  
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 - -   �0�T� 
 	 f u n c t i o n   I n i t   =  
 	 (  
 	 	 m a x   m o t i o n   m o d e  
 	 	  
 	 	 - -   ���  B I P �  S c a n X�0� 
 	 	 (  
 	 	 	 b i p s   =   G e t A l l B i p e d s ( )  
 	 	 	  
 	 	 	 i f (   b i p s   ! =   u n d e f i n e d )   t h e n  
 	 	 	 (  
 	 	 	 	 f o r   b i p   i n   b i p s   d o  
 	 	 	 	 (  
 	 	 	 	 	 L I S T _ B i p e d . i t e m s   =   f o r   i   i n   b i p s   c o l l e c t   i . c o n t r o l l e r . R o o t N a m e  
 	 	 	 	 	 	  
 	 	 	 	 	 S e l e c t   ( G e t N o d e B y n a m e   L I S T _ B i p e d . i t e m s [ 1 ] )  
 	 	 	 	 )  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 - -   R o o t   B o n e   N a m e  
 	 	 i f   L I S T _ B i p e d . i t e m s . c o u n t   >   0   d o  
 	 	 (  
 	 	 	 b i p   =   e x e c u t e   ( " $ ' "   +   L I S T _ B i p e d . s e l e c t e d   +   " ' " )  
 	 	 	 E D _ R o o t . t e x t   =   ( b i p . P a r e n t ) . n a m e  
 	 	 )  
 	 )  
 	  
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 - -   ���  �����   �t�  R o o t   K e y |�  ��1�t�  �T�XՔ�  h��.  
 	 f u n c t i o n   G e n e r a t e R o o t K e y s   s t e p     =  
 	 (  
 	 	 s a m p l e s   =   # ( )  
 	 	  
 	 	 e n a b l e _ r o t a t i o n   =   C H K _ R o t a t i o n . c h e c k e d ;  
 	 	 e n a b l e _ r o o t _ t a r g e t   =   C H K _ T r a c k R o o t T a r g e t . c h e c k e d  
 	 	 f o r w a r d   =   L I S T _ F o r w a r d . s e l e c t e d ;  
 	 	 i f (   f o r w a r d   = =   u n d e f i n e d )   t h e n  
 	 	 	 f o r w a r d   =   " - Y " ;  
 	 	  
 	 	 r o o t _ t a r g e t   =   u n d e f i n e d ;  
 	 	  
 	 	 i f (   e n a b l e _ r o o t _ t a r g e t   )   t h e n  
 	 	 (  
 	 	 	 r o o t _ t a r g e t   =   e x e c u t e   ( " $ ' "   +   E D _ R o o t T a r g e t . t e x t   +   " ' " ) ;  
 	 	 	  
 	 	 	 i f (   r o o t _ t a r g e t   = =   u n d e f i n e d )   t h e n  
 	 	 	 (  
 	 	 	 	 M e s s a g e B o x   " R o o t   T a r g e t   O b j e c t |�  U�x�`�  �  �ŵ�Ȳ�.   ���i�Ȳ�. "  
 	 	 	 	 r e t u r n   u n d e f i n e d ;  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 f o r   t   =   T h e R a n g e . s t a r t   t o   T h e R a n g e . e n d   d o  
 	 	 (  
 	 	 	 a t   t i m e   t  
 	 	 	 (  
 	 	 	 	 c o m _ t x   =   i n   c o o r d s y s   w o r l d   T h e C O M . t r a n s f o r m ;  
 	 	 	 	  
 	 	 	 	 l o c a l   r o o t _ t x ;  
 	 	 	 	  
 	 	 	 	 i f (   e n a b l e _ r o t a t i o n )   t h e n  
 	 	 	 	 (  
 	 	 	 	 	 i f (   e n a b l e _ r o o t _ t a r g e t )   t h e n  
 	 	 	 	 	 (  
 	 	 	 	 	 	 r o o t _ t x   =   M a k e L o o k A t T a r g e t   c o m _ t x   r o o t _ t a r g e t . p o s   f o r w a r d ;  
 	 	 	 	 	 )  
 	 	 	 	 	 e l s e  
 	 	 	 	 	 (  
 	 	 	 	 	 	 r o o t _ t x   =   M a k e R o o t T r a n s f o r m   c o m _ t x   f o r w a r d ;  
 	 	 	 	 	 )  
 	 	 	 	 )  
 	 	 	 	 e l s e  
 	 	 	 	 (  
 	 	 	 	 	 p o s   =   c o m _ t x . p o s ;  
 	 	 	 	 	 p o s . z   =   0 . 0 f ;  
 	 	 	 	 	  
 	 	 	 	 	 r o o t _ t x   =   T r a n s M a t r i x   p o s ;  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 a p p e n d   s a m p l e s   ( S a m p l e d K e y   T i m e : t   C O M _ T x : c o m _ t x   R o o t _ T x : r o o t _ t x )  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 r e t u r n   s a m p l e s ;  
 	 )  
 	  
 	 f u n c t i o n   S a m p l e T i m e s   t i m e s   c o n t r o l l e r   =  
 	 (  
 	 	 f o r   k e y   i n   c o n t r o l l e r . k e y s   d o  
 	 	 (  
 	 	 	 a p p e n d I f U n i q u e   t i m e s   k e y . t i m e  
 	 	 )  
 	 )  
 	  
 	 f u n c t i o n   S e t B i p e d T X   n o d e   t m   =  
 	 (  
 	 	 b i p e d . s e t T r a n s f o r m   n o d e   # p o s   t m . t r a n s l a t i o n P a r t   t r u e  
 	 	 b i p e d . s e t T r a n s f o r m   n o d e   # r o t a t i o n   t m . r o t a t i o n P a r t   t r u e  
 	 	  
 	 	 - - i n   c o o r d s y s   w o r l d   n o d e . t r a n s f o r m   =   t m ;  
 	 )  
 	  
 	 f u n c t i o n   S e t B i p e d K e y T y p e   n o d e   s a m p l e   =  
 	 (  
 	 	 i f (   s a m p l e . I K _ B l e n d   < =   0 . 0 0 0 0 1 f )   t h e n  
 	 	 (  
 	 	 	 - -   F r e e   K e y  
 	 	 	 b i p e d . s e t F r e e K e y   n o d e ;  
 	 	 	 p r i n t   " F r e e   K e y " ;  
 	 	 )  
 	 	 e l s e  
 	 	 (  
 	 	 	 i f (   s a m p l e . I K _ J o i n e d P i v o t )   t h e n  
 	 	 	 (  
 	 	 	 	 b i p e d . s e t P l a n t e d K e y   n o d e ;  
 	 	 	 	 p r i n t   " P l a n t e d   K e y " ;  
 	 	 	 )  
 	 	 	 e l s e  
 	 	 	 (  
 	 	 	 	 b i p e d . s e t S l i d i n g K e y   n o d e ;  
 	 	 	 	 p r i n t   " S l i d i n g   K e y " ;  
 	 	 	 )  
 	 	 )  
 	 )  
 	  
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 - -   R o o t   K e y   G e n e r a t i o n  
 	 f u n c t i o n   A n i m a t e R o o t A n d C O M   k e y s   =  
 	 (  
 	 	 - -   R o o t   K e y   �p� 
 	 	 - - d e l e t e K e y s   T h e R o o t . t r a n s f o r m . c o n t r o l l e r   # a l l k e y s  
 	 	  
 	 	 c o m _ c t r l   =   T h e C O M . t r a n s f o r m . c o n t r o l l e r ;  
 	 	 	  
 	 	 h o r z _ c o n t r o l l e r   =   c o m _ c t r l . h o r i z o n t a l . c o n t r o l l e r ;  
 	 	 v e r t _ c o n t r o l l e r   =   c o m _ c t r l . v e r t i c a l . c o n t r o l l e r ;  
 	 	 t u r n _ c o n t r o l l e r   =   c o m _ c t r l . t u r n i n g . c o n t r o l l e r ;  
 	 	  
 	 	 / * 	 	  
 	 	 b i p e d . d e l e t e K e y s   h o r z _ c o n t r o l l e r   # a l l k e y s  
 	 	 b i p e d . d e l e t e K e y s   v e r t _ c o n t r o l l e r   # a l l k e y s  
 	 	 b i p e d . d e l e t e K e y s   t u r n _ c o n t r o l l e r   # a l l k e y s  
 	 	 * /  
 	 	  
 	 	 w i t h   a n i m a t e   o n  
 	 	 (  
 	 	 	 f u n c t i o n   S e t R o o t C o m K e y   k e y   =  
 	 	 	 (  
 	 	 	 	 r o o t _ t x   =   k e y . R o o t _ T x ;  
 	 	 	 	 c o m _ t x   =   k e y . C O M _ T x ;  
 	 	 	 	  
 	 	 	 	 a t   t i m e   k e y . T i m e  
 	 	 	 	 (  
 	 	 	 	 	 i n   c o o r d s y s   w o r l d   T h e R o o t . t r a n s f o r m   =   r o o t _ t x ;  
 	 	 	 	 	 	  
 	 	 	 	 	 n e w _ c o m _ t x   =   c o m _ t x   *   i n v e r s e   r o o t _ t x ;  
 	 	 	 	 	 	  
 	 	 	 	 	 - - i n   c o o r d s y s   p a r e n t   $ C O M T r a c k e r . t r a n s f o r m   =   n e w _ c o m _ t x ;  
 	 	 	 	 	 	  
 	 	 	 	 	 - -   �����  R o o t ��  ޹�ʹ�  B i p e d   C O M X�  K e y |�  p�� 
 	 	 	 	 	 - - i n   c o o r d s y s   p a r e n t   T h e C O M . t r a n s f o r m   =   n e w _ c o m _ t x ;  
 	 	 	 	 	 - - i n   c o o r d s y s   w o r l d   T h e C O M . t r a n s f o r m   =   c o m _ t x ;  
 	 	 	 	 	  
 	 	 	 	 	 S e t B i p e d T X   T h e C O M   n e w _ c o m _ t x ;  
 	 	 	 	 	  
 	 	 	 	 )  
 	 	 	 )  
 	 	 	  
 	 	 	 - -   R o o t |�  $��\��.  
 	 	 	 f o r   k e y   i n   k e y s   d o  
 	 	 	 (  
 	 	 	 	 S e t R o o t C o m K e y   k e y ;  
 	 	 	 )  
 	 	 )  
 	 )  
 	  
 	 f u n c t i o n   D u m p K e y s   _ n o d e   =  
 	 (  
 	 	 k e y s   =   _ n o d e . t r a n s f o r m . c o n t r o l l e r . k e y s ;  
 	  
 	 	 c o u n t   =   k e y s . c o u n t ;  
 	 	  
 	 	 p r i n t   ( " - - - - - - - - - - - - - - - - - - "   +   _ n o d e   a s   s t r i n g   +   " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - " )  
 	 	  
 	 	 - -   # b o d y   K e y x�  ����. . .  
 	 	 - -   i k J o i n e d P i v o t   = =   t r u e |�t�  P l a n t e d - K e y ,   f a l s e |�t�  S l i d i n g   K e y t��.  
 	 	 f o r   i   =   1   t o   c o u n t   d o  
 	 	 (  
 	 	 	 k e y   =   b i p e d . g e t K e y   _ n o d e . t r a n s f o r m . c o n t r o l l e r   i  
 	 	 	  
 	 	 	 p r i n t   ( " T i m e ( "   +   k e y . T i m e   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k B l e n d ( "   +   k e y . i k B l e n d   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k S p a c e ( "   +   k e y . i k S p a c e   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k A n k l e T e n s i o n ( "   +   k e y . i k A n k l e T e n s i o n   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k J o i n e d P i v o t ( "   +   k e y . i k J o i n e d P i v o t   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k P i v o t I n d e x ( "   +   k e y . i k P i v o t I n d e x   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k N u m P i v o t s ( "   +   k e y . i k N u m P i v o t s   a s   s t r i n g   +   " ) " \  
 	 	 	 	 +   "   -   i k P i v o t s ( "   +   k e y . i k P i v o t s   a s   s t r i n g   +   " ) " \  
 	 	 	 	 )    
 	 	 )  
 	 )  
 	  
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 - -    
 	 f u n c t i o n   T r a c k B i p e d =  
 	 (  
 	 	 n o d e   =   b i p e d . g e t N o d e   T h e B I P   # l l e g  
 	 	 D u m p K e y s   	 n o d e  
 	 	  
 	 	 - - n o d e   =   b i p e d . g e t N o d e   T h e B I P   # r l e g  
 	 	 - - D u m p K e y s   	 n o d e  
 	 )  
 	  
 	 f u n c t i o n   S a v e F o o t K e y s   f o o t   =  
 	 (  
 	 	 s a v e d _ k e y s   =   # ( )  
 	 	  
 	 	 f o r   t   =   T h e R a n g e . s t a r t   t o   T h e R a n g e . e n d   d o  
 	 	 (  
 	 	 	 a t   t i m e   t  
 	 	 	 (  
 	 	 	 	 t x   =   i n   c o o r d s y s   w o r l d   f o o t . t r a n s f o r m ;  
 	 	 	 	  
 	 	 	 	 i d x   =   g e t K e y I n d e x   f o o t . t r a n s f o r m . c o n t r o l l e r   t ;  
 	 	 	 	  
 	 	 	 	 i f (   i d x   = =   0 )   t h e n  
 	 	 	 	 (  
 	 	 	 	 	 a p p e n d   s a v e d _ k e y s   ( F o o t K e y   A c t u a l K e y : f a l s e   T i m e : t   \  
 	 	 	 	 	 	 W S _ T x : t x   \  
 	 	 	 	 	 	 T e n s i o n : 0 . 0 f   \  
 	 	 	 	 	 	 C o n t i n u i t y : 0 . 0 f   \  
 	 	 	 	 	 	 B i a s : 0 . 0 f   \  
 	 	 	 	 	 	 E a s e T o : 0 . 0 f   \  
 	 	 	 	 	 	 E a s e F r o m : 0 . 0 f   \  
 	 	 	 	 	 	 I K _ B l e n d : 0 . 0 f   \  
 	 	 	 	 	 	 I K _ S p a c e : 0   \  
 	 	 	 	 	 	 I K _ A n k l e T e n s i o n : 0 . 0 f   \  
 	 	 	 	 	 	 I K _ J o i n e d P i v o t : f a l s e   \  
 	 	 	 	 	 	 I K _ P i v o t I n d e x : 0   \  
 	 	 	 	 	 )  
 	 	 	 	 )  
 	 	 	 	 e l s e  
 	 	 	 	 (  
 	 	 	 	 	 k e y   =   b i p e d . g e t K e y   f o o t . t r a n s f o r m . c o n t r o l l e r   i d x ;  
 	 	 	 	 	  
 	 	 	 	 	 a p p e n d   s a v e d _ k e y s   ( F o o t K e y   A c t u a l K e y : t r u e   T i m e : t   \  
 	 	 	 	 	 	 W S _ T x : t x   \  
 	 	 	 	 	 	 T e n s i o n : k e y . t e n s i o n   \  
 	 	 	 	 	 	 C o n t i n u i t y : k e y . c o n t i n u i t y   \  
 	 	 	 	 	 	 B i a s : k e y . b i a s   \  
 	 	 	 	 	 	 E a s e T o : k e y . e a s e T o   \  
 	 	 	 	 	 	 E a s e F r o m : k e y . e a s e F r o m   \  
 	 	 	 	 	 	 I K _ B l e n d : k e y . i k B l e n d   \  
 	 	 	 	 	 	 I K _ S p a c e : k e y . i k S p a c e   \  
 	 	 	 	 	 	 I K _ A n k l e T e n s i o n : k e y . i k A n k l e T e n s i o n   \  
 	 	 	 	 	 	 I K _ J o i n e d P i v o t : k e y . i k J o i n e d P i v o t   \  
 	 	 	 	 	 	 I K _ P i v o t I n d e x : k e y . i k P i v o t I n d e x   \  
 	 	 	 	 	 )  
 	 	 	 	 )  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 p r i n t   ( " T o t a l   "   +   s a v e d _ k e y s . c o u n t   a s   s t r i n g   +   "   k e y s   a r e   s a v e d   f o r   "   +   f o o t   a s   s t r i n g   +   " n o d e . " ) ;  
 	 	  
 	 	 r e t u r n   s a v e d _ k e y s ;  
 	 )  
 	  
 	 f u n c t i o n   S a v e F e e t K e y s   =  
 	 (  
 	 	 l e f t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # l l e g   l i n k : 3 	 	 - -   L e f t   F o o t  
 	 	 r i g h t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # r l e g   l i n k : 3 	 	 - -   R i g h t   F o o t  
 	 	  
 	 	 F o o t L K e y s   =   # ( )  
 	 	 F o o t R K e y s   =   # ( )  
 	 	  
 	 	 i f (   l e f t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 F o o t L K e y s   =   S a v e F o o t K e y s   l e f t _ f o o t ;  
 	 	 	  
 	 	 i f (   r i g h t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 F o o t R K e y s   =   S a v e F o o t K e y s   r i g h t _ f o o t ;  
 	 )  
 	  
 	 f u n c t i o n   S e t F o o t K e y s   f o o t   s a m p l e s =  
 	 (  
 	 	 i f (   s a m p l e s . c o u n t   < =   0 )   t h e n  
 	 	 	 r e t u r n   f a l s e ;  
 	 	  
 	 	 c o n t r o l l e r   =   f o o t . t r a n s f o r m . c o n t r o l l e r ;  
 	 	  
 	 	 w i t h   a n i m a t e   o n  
 	 	 (  
 	 	 	 f o r   s a m p l e   i n   s a m p l e s   d o  
 	 	 	 (  
 	 	 	 	 / *  
 	 	 	 	 i f   ( s a m p l e . A c t u a l K e y   = =   f a l s e )   t h e n  
 	 	 	 	 	 c o n t i n u e ;  
 	 	 	 	 * /  
 	 	 	 	  
 	 	 	 	 t   =   s a m p l e . T i m e ;  
 	 	 	 	  
 	 	 	 	 a t   t i m e   t  
 	 	 	 	 (  
 	 	 	 	 	 p r i n t   t ;  
 	 	 	 	 	  
 	 	 	 	 	 - -   B i p e d   C O M X�  ����Ŕ�  B o n e D�  X�  �  ��䲔�   ��t�  M A X   ������  ���.  
 	 	 	 	 	 - -   ���  t� �\�  W o r l d - S p a c e   T r a n s f o r m D�  �ĳ  � �\�  �����  J�0�  L�8��� 
 	 	 	 	 	 - -   R o o t - S p a c e \�  ����t�  �  DՔ� �  ���.  
 	 	 	 	 	  
 	 	 	 	 	 m   =   s a m p l e . W S _ T x ;  
 	 	 	 	 	 - - r o o t _ t x   =   i n   c o o r d s y s   w o r l d   T h e R O O T . t r a n s f o r m ;  
 	 	 	 	 	 - - m   =   s a m p l e . W S _ T x   *   i n v e r s e   r o o t _ t x ;  
 	 	 	 	 	  
 	 	 	 	 	 b i p e d . a d d N e w K e y   c o n t r o l l e r   t ;  
 	 	 	 	 	  
 	 	 	 	 	 - - i n   c o o r d s y s   w o r l d   f o o t . t r a n s f o r m   =   m ;  
 	 	 	 	 	 S e t B i p e d T X   f o o t   m ;  
 	 	 	 	 	  
 	 	 	 	 	 i d x   =   g e t K e y I n d e x   c o n t r o l l e r   t ;  
 	 	 	 	 	 k e y   =   b i p e d . g e t K e y   c o n t r o l l e r   i d x ;  
 	 	 	 	 	  
 	 	 	 	 	 k e y . i k B l e n d   =   s a m p l e . I K _ B l e n d ;  
 	 	 	 	 	 k e y . i k J o i n e d P i v o t   =   s a m p l e . I K _ J o i n e d P i v o t ;  
 	 	 	 	 	 - - k e y . i k S p a c e   =   s a m p l e . I K _ S p a c e ;  
 	 	 	 	 	 - - k e y . i k A n k l e T e n s i o n   =   s a m p l e . I K _ A n k l e T e n s i o n ;  
 	 	 	 	 	  
 	 	 	 	 	 - - k e y . i k P i v o t I n d e x   =   s a m p l e . I K _ P i v o t I n d e x ;  
 	 	 	 	 )  
 	 	 	 )  
 	 	 	  
 	 	 	 - -   ��L�  $���  K e y ��  t��  K e y   ��\�  x�t�  I n t e r p o l a t i o n �  �X� �  t���`�  �  ���.  
 	 	 	 - -   �����  ���  \Ո�  $��D�  t��ȴ�|�  \��.  
 	 	 	 f i r s t   =   s a m p l e s [ 1 ] ;  
 	 	 	  
 	 	 	 a t   t i m e   f i r s t . T i m e  
 	 	 	 (  
 	 	 	 	 S e t B i p e d T x   f o o t   f i r s t . W S _ T x ;  
 	 	 	 )  
 	 	 )  
 	 )  
 	  
 	 f u n c t i o n   S e t F e e t K e y s   =    
 	 (  
 	 	 p r i n t   " S e t   k e y s   o f   f e e t " ;  
 	 	  
 	 	 l e f t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # l l e g   l i n k : 3 	 	 - -   L e f t   F o o t  
 	 	 r i g h t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # r l e g   l i n k : 3 	 	 - -   R i g h t   F o o t  
 	 	  
 	 	 i f (   l e f t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 S e t F o o t K e y s   l e f t _ f o o t   F o o t L K e y s ;  
 	 	 	  
 	 	 i f (   r i g h t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 S e t F o o t K e y s   r i g h t _ f o o t   F o o t R K e y s ;  
 	 )  
 	  
 	 f u n c t i o n   D e l e t e F e e t K e y s   =  
 	 (  
 	 	 l e f t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # l l e g   l i n k : 3 	 	 - -   L e f t   F o o t  
 	 	 r i g h t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # r l e g   l i n k : 3 	 	 - -   R i g h t   F o o t  
 	 	  
 	 	 i f (   l e f t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 b i p e d . d e l e t e K e y s   l e f t _ f o o t . t r a n s f o r m . c o n t r o l l e r   # a l l K e y s  
 	 	  
 	 	 i f (   r i g h t _ f o o t   ! =   u n d e f i n e d )   t h e n  
 	 	 	 b i p e d . d e l e t e K e y s   r i g h t _ f o o t . t r a n s f o r m . c o n t r o l l e r   # a l l K e y s  
 	 )  
 	  
 	 f u n c t i o n   F i n d S a m p l e   s a m p l e s   t i m e   =  
 	 (  
 	 	 f o r   s a m p l e   i n   s a m p l e s   d o  
 	 	 (  
 	 	 	 i f (   s a m p l e . T i m e   = =   t i m e )   t h e n  
 	 	 	 	 r e t u r n   s a m p l e ;  
 	 	 )  
 	 	  
 	 	 r e t u r n   u n d e f i n e d ;  
 	 )  
 	  
 	 f u n c t i o n   G e t B i p e d K e y   n o d e   t i m e   =  
 	 (  
 	 	 i d x   =   g e t K e y I n d e x   n o d e . t r a n s f o r m . c o n t r o l l e r   t i m e ;  
 	 	 i f (   i d x   = =   0 )   t h e n  
 	 	 	 r e t u r n   u n d e f i n e d ;  
 	 	  
 	 	 r e t u r n   b i p e d . g e t K e y   n o d e . t r a n s f o r m . c o n t r o l l e r   i d x ;  
 	 )  
 	  
 	 f u n c t i o n   G e t K e y T y p e   k e y   =  
 	 (  
 	 	 i f (   k e y . i k B l e n d   < =   0 . 0 0 0 1 f )   t h e n  
 	 	 	 r e t u r n   # F r e e K e y ;  
 	 	  
 	 	 i f (   k e y . i k J o i n e d P i v o t )   t h e n  
 	 	 	 r e t u r n   # P l a n t e d K e y ;  
 	 	  
 	 	 r e t u r n   # S l i d i n g K e y ;  
 	 )  
 	  
 	 f u n c t i o n   S e t K e y T y p e   k e y   k e y _ t y p e   =  
 	 (  
 	 	 c a s e   k e y _ t y p e   o f  
 	 	 (  
 	 	 	 # F r e e K e y   :  
 	 	 	 (  
 	 	 	 	 - - b i p e d . s e t F r e e K e y   n o d e ;  
 	 	 	 	 k e y . i k B l e n d   =   0 . 0 f ;  
 	 	 	 	 k e y . i k S p a c e   =   0 ;  
 	 	 	 	 k e y . i k J o i n e d P i v o t   =   f a l s e ;  
 	 	 	 )  
 	 	 	  
 	 	 	 # P l a n e d K e y   :  
 	 	 	 (  
 	 	 	 	 - - b i p e d . s e t P l a n t e d K e y   n o d e ;  
 	 	 	 	 k e y . i k B l e n d   =   1 . 0 f ;  
 	 	 	 	 k e y . i k J o i n e d P i v o t   =   t r u e ;  
 	 	 	 )  
 	 	 	  
 	 	 	 # S l i d i n g K e y   :  
 	 	 	 (  
 	 	 	 	 - - b i p e d . s e t S l i d i n g K e y   n o d e ;  
 	 	 	 	 k e y . i k B l e n d   =   1 . 0 f ;  
 	 	 	 	 k e y . i k J o i n e d P i v o t   =   f a l s e ;  
 	 	 	 )  
 	 	 )  
 	 )  
 	  
 	 f u n c t i o n   B a k e A l l B i p e d K e y s   n o d e   s a m p l e s   k e y _ t y p e =  
 	 (  
 	 	 f u n c t i o n   B a k e   n o d e   s a m p l e s   k e y _ t y p e   =  
 	 	 (  
 	 	 	 i d x   =   1 ;  
 	 	 	  
 	 	 	 f o r   t   =   T h e R a n g e . s t a r t   t o   T h e R a n g e . e n d   d o  
 	 	 	 (  
 	 	 	 	 s a m p l e   =   s a m p l e s [ i d x ] ;  
 	 	 	 	  
 	 	 	 	 a t   t i m e   t  
 	 	 	 	 (  
 	 	 	 	 	 i d x _ k e y   =   g e t K e y I n d e x   n o d e . t r a n s f o r m . c o n t r o l l e r   t ;  
 	 	 	 	 	  
 	 	 	 	 	 i f (   i d x _ k e y   = =   0 )   t h e n  
 	 	 	 	 	 (  
 	 	 	 	 	 	 b i p e d . a d d N e w K e y   n o d e . t r a n s f o r m . c o n t r o l l e r   t ;  
 	 	 	 	 	 	  
 	 	 	 	 	 	 i d x _ k e y   =   g e t K e y I n d e x   n o d e . t r a n s f o r m . c o n t r o l l e r   t ;  
 	 	 	 	 	 )  
 	 	 	 	 	  
 	 	 	 	 	 k e y   =   b i p e d . g e t K e y   n o d e . t r a n s f o r m . c o n t r o l l e r   i d x _ k e y ;  
 	 	 	 	 	  
 	 	 	 	 	 S e t K e y T y p e   k e y   k e y _ t y p e ;  
 	 	 	 	 	  
 	 	 	 	 	 S e t B i p e d T x   n o d e   s a m p l e . W S _ T x ;  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 i d x   + =   1 ;  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 w i t h   a n i m a t e   o n  
 	 	 (  
 	 	 	 B a k e   n o d e   s a m p l e s   k e y _ t y p e ;  
 	 	 	 - - B a k e   n o d e   s a m p l e s   k e y _ t y p e ;  
 	 	 	  
 	 	 	 - -   ��L�  $���  K e y ��  t��  K e y   ��\�  x�t�  I n t e r p o l a t i o n �  �X� �  t���`�  �  ���.  
 	 	 	 - -   �����  ���  \Ո�  $��D�  t��ȴ�|�  \��.  
 	 	 	 a t   t i m e   T h e R a n g e . S t a r t  
 	 	 	 (  
 	 	 	 	 S e t B i p e d T x   n o d e   s a m p l e s [ 1 ] . W S _ T x ;  
 	 	 	 )  
 	 	 )  
 	 )  
  
 	 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 - -   M a i n  
 	 f u n c t i o n   G e n e r a t e   =  
 	 (  
 	 	 b i p   =   L I S T _ B i p e d . s e l e c t e d ;  
 	 	 i f (   b i p   = =   u n d e f i n e d )   t h e n  
 	 	 (  
 	 	 	 M e s s a g e B o x   "  ����  B i p e d  �  �ŵ�Ȳ�. " ;  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 )  
 	 	  
 	 	 s t e p   =   1 ;   - - S P I N _ I n t e r v a l . v a l u e  
 	 	  
 	 	 T h e B I P   =   e x e c u t e   ( " $ ' "   +   b i p   +   " ' " )  
 	 	 T h e R O O T   =   e x e c u t e   ( " $ ' "   +   E D _ R o o t . t e x t   +   " ' " )  
 	 	  
 	 	 T h e C O M   =   b i p e d . g e t N o d e   T h e B I P   # h o r i z o n t a l  
 	 	 i f (   T h e C O M   = =   u n d e f i n e d )   t h e n  
 	 	 (  
 	 	 	 M e s s a g e B o x   " B i p e d   C O M   O b j e c t |�  U�x�`�  �  �ŵ�Ȳ�. "  
 	 	 	 r e t u r n   f a l s e ;  
 	 	 )  
 	 	  
 	 	 l e f t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # l l e g   l i n k : 3 	 	 - -   L e f t   F o o t  
 	 	 r i g h t _ f o o t   =   b i p e d . g e t N o d e   T h e B I P   # r l e g   l i n k : 3 	 	 - -   R i g h t   F o o t  
 	 	  
 	 	 c o m _ c t r l   =   T h e C O M . t r a n s f o r m . c o n t r o l l e r ;  
 	 	  
 	 	 - - T h e R a n g e   =   b i p e d . g e t C u r r e n t R a n g e   c o m _ c t r l  
 	 	 T h e R a n g e   =   a n i m a t i o n R a n g e ;  
 	 	 	 	  
 	 	 - -   ��\���  R o o t   K e y �D�  �� �  ��1�\��.  
 	 	 r o o t _ k e y s   =   G e n e r a t e R o o t K e y s   s t e p ;  
 	 	 p r i n t   ( " T o t a l   "   +   r o o t _ k e y s . c o u n t   a s   s t r i n g   +   "   r o o t   k e y s   a r e   s a m p l e d . " ) ; 	 	  
 	 	  
 	 	 S a v e F e e t K e y s ( ) ;  
 	 	  
 	 	 u n d o   o n  
 	 	 (  
 	 	 	 - -   ��\���  R o o t   K e y |�  R o o t ��  ȩ�.  
 	 	 	  
 	 	 	 i f (   M E T H O D   = =   # M e t h o d _ B a k e A l l K e y s )   t h e n  
 	 	 	 (  
 	 	 	 	 / *  
 	 	 	 	 p r i n t   " B a k i n g   a l l   f e e t   k e y s   a s   s l i d i n g - k e y s " ;  
 	 	 	 	 B a k e A l l B i p e d K e y s   l e f t _ f o o t   F o o t L K e y s   # S l i d i n g K e y ; 	 	 - -   t r a c k e r : $ F o o t T r a c k e r _ L  
 	 	 	 	 B a k e A l l B i p e d K e y s   r i g h t _ f o o t   F o o t R K e y s   # S l i d i n g K e y ; 	 - -   t r a c k e r : $ F o o t T r a c k e r _ R  
 	 	 	 	 * /  
 	 	 	 	  
 	 	 	 	 p r i n t   " B a k i n g   a l l   f e e t   k e y s   a s   f r e e - k e y s " ;  
 	 	 	 	 B a k e A l l B i p e d K e y s   l e f t _ f o o t   F o o t L K e y s   # F r e e K e y  
 	 	 	 	 B a k e A l l B i p e d K e y s   r i g h t _ f o o t   F o o t R K e y s   # F r e e K e y  
 	 	 	 	  
 	 	 	 	 p r i n t   " G e n e r a t i n g   k e y s   o f   t h e   r o o t   a n d   t h e   C O M " ;  
 	 	 	 	 A n i m a t e R o o t A n d C O M   r o o t _ k e y s ;  
 	 	 	 )  
 	 	 	 e l s e  
 	 	 	 (  
 	 	 	 	 D e l e t e F e e t K e y s ( ) ;  
 	 	 	 	  
 	 	 	 	 p r i n t   " G e n e r a t i n g   k e y s   o f   t h e   r o o t   a n d   t h e   C O M " ;  
 	 	 	 	 A n i m a t e R o o t A n d C O M   r o o t _ k e y s ;  
 	 	 	 	  
 	 	 	 	 S e t F e e t K e y s ( ) ;  
 	 	 	 )  
 	 	 )  
 	 	  
 	 	 - - T r a c k B i p e d   ( ) ;  
 	 	  
 	 	 F r e e   r o o t _ k e y s  
 	 	 F r e e   F o o t L K e y s  
 	 	 F r e e   F o o t R K e y s  
 	 	  
 	 	 p r i n t   " - - - - - - - - - - -   D o n e   ! ! ! ! "  
 	 )  
 	  
 	 o n   R o o t K e y G e n   o p e n   d o  
 	 (  
 	 	 I n i t ( ) ;  
 	 )  
 	  
 	 o n   B T N _ R e f r e s h   p r e s s e d   d o  
 	 (  
 	 	 I n i t ( ) ;  
 	 )  
 	  
 	 o n   B T N _ G e n e r a t e   p r e s s e d   d o  
 	 (  
 	 	 G e n e r a t e ( ) ;  
 	 )  
 )  
  
 c r e a t e D i a l o g   R o o t K e y G e n   3 0 0   4 8 0   s t y l e : # ( # s t y l e _ t i t l e b a r ,   # s t y l e _ b o r d e r ,   # s t y l e _ t o o l w i n d o w ,   # s t y l e _ r e s i z i n g ,   # s t y l e _ s y s m e n u ) 