t r y ( D e s t r o y D i a l o g   R O L L O U T _ R e t a r g e t A n i m s ) c a t c h ( )  
  
 f u n c t i o n   O p e n F i l e D i a l o g   _ t i t l e : " S e l e c t   F i l e s "   _ f i l e n a m e : " "   I n i t i a l D i r : u n d e f i n e d     _ f i l t e r s : " A l l   F i l e s   ( * . * ) | * . * "   _ m u l t i s e l e c t : f a l s e     =  
 (  
 	 d l g   =   D o t N e t O b j e c t   " S y s t e m . W i n d o w s . F o r m s . O p e n F i l e D i a l o g " ;  
 	 d l g . M u l t i S e l e c t   =   _ m u l t i s e l e c t ;  
 	 d l g . T i t l e   =   _ t i t l e ;  
 	 d l g . F i l e n a m e   =   _ f i l e n a m e ;  
 	  
 	 i f   ( I n i t a l D i r   ! =   u n d e f i n e d   )   t h e n  
 	 	 d l g . I n i t i a l D i r e c t o r y   =   I n i t i a l D i r  
 	  
 	 d l g . F i l t e r   =   _ f i l t e r s  
 	  
 	 r e s u l t   =   d l g . S h o w D i a l o g ( )  
 	  
 	 i f (   r e s u l t . E q u a l s   r e s u l t . O K )   t h e n  
 	 (  
 	 	 i f (   _ m u l t i S e l e c t )   t h e n  
 	 	 	 r e t u r n   d l g . F i l e n a m e s  
 	 	 e l s e  
 	 	 	 r e t u r n   d l g . F i l e n a m e  
 	 )  
 	  
 	 r e t u r n   u n d e f i n e d  
 )  
  
 f u n c t i o n   F i n d B i p e d   =  
 (  
 	 a l l _ o b j e c t s   =   $ *  
 	  
 	 f o r   o b j   i n   a l l _ o b j e c t s   d o  
 	 (  
 	 	 i f (   I s K i n d O f   o b j   B i p e d _ O b j e c t )   t h e n  
 	 	 (  
 	 	 	 r e t u r n   o b j ;  
 	 	 )  
 	 )  
 	  
 	 r e t u r n   u n d e f i n e d ;  
 )  
  
 s t r u c t   B I P E n t r y  
 (  
 	 M A X _ P a t h ,  
 	 B I P _ P a t h  
 )  
  
 f u n c t i o n   R e t a r g e t A n i m a t i o n s    
 	 _ s e t _ f i l e : u n d e f i n e d    
 	 _ a n i m _ f i l e s : u n d e f i n e d    
 	 _ t a r g e t _ p a t h : u n d e f i n e d    
 	 _ p r e f i x : " "  
 	 _ p o s t f i x : " "  
 	 _ r e p l a c e _ s r c : u n d e f i n e d  
 	 _ r e p l a c e _ d e s t : u n d e f i n e d  
 	 _ o v e r w r i t e : f a l s e  
 	 _ p r o g r e s s : u n d e f i n e d  
 	 =  
 (  
 	 i f (   _ s e t _ f i l e   = =   u n d e f i n e d )   t h e n  
 	 (  
 	 	 M e s s a g e B o x   " S e t t i n g   �|�t�   ������  J�Xŵ�Ȳ�. "  
 	 	 r e t u r n   f a l s e ;  
 	 )  
 	  
 	 i f (   ( d o e s F i l e E x i s t   _ s e t _ f i l e )   = =   f a l s e )   t h e n  
 	 (  
 	 	 M e s s a g e B o x   " S e t t i n g   �|�t�  tȬ�X���  Jŵ�Ȳ�. "  
 	 	 r e t u r n   f a l s e ;  
 	 )  
 	  
 	 i f   ( ( _ a n i m _ f i l e s   = =   u n d e f i n e d )   o r   (   _ a n i m _ f i l e s . c o u n t   < =   0 ) )   t h e n  
 	 (  
 	 	 M e s s a g e B o x   " A n i m a t i o n   �|�t�   ������  J�Xŵ�Ȳ�. "  
 	 	 r e t u r n   f a l s e ;  
 	 )  
 	 	  
 	 i f (   _ t a r g e t _ p a t h   = =   u n d e f i n e d )   t h e n  
 	 	 r e t u r n   f a l s e ;  
 	  
 	 i f (   ( d o e s F i l e E x i s t   _ t a r g e t _ p a t h )   = =   f a l s e )   t h e n  
 	 (  
 	 	 M e s s a g e B o x   "  ȥ�`�  ��\� �  tȬ�X���  Jŵ�Ȳ�. "  
 	 	 r e t u r n   f a l s e ;  
 	 )  
 	 	  
 	 c o u n t   =   _ a n i m _ f i l e s . c o u n t  
 	  
 	 m a x _ p r o g r e s s   =   c o u n t   *   2  
 	 p r o g r e s s   =   0 ;  
 	  
 	 t e m p _ p a t h   =   G e t D i r   # t e m p  
 	  
 	 B I P s   =   # ( )  
  
 	 f o r   f i l e   i n   _ a n i m _ f i l e s   d o  
 	 (  
 	 	 - -   B I P D�  ���  �ǔ�  M A X   �|�D�  }Ǵ��t�0� 
 	 	 i s _ o p e n e d   =   l o a d M a x F i l e   f i l e   q u i e t : t r u e  
 	 	  
 	 	 i f (   i s _ o p e n e d   = =   f a l s e )   t h e n  
 	 	 	 c o n t i n u e ;  
 	 	  
 	 	 n a m e   =   g e t F i l e n a m e F i l e   f i l e  
 	 	  
 	 	 b i p   =   F i n d B i p e d ( ) ;  
 	 	  
 	 	 i f (   b i p   = =   u n d e f i n e d )   t h e n  
 	 	 (  
 	 	 	 p r i n t   f i l e   +   " @�  B i p e d   O b j e c t |�   ����  ����  Jŵ�Ȳ�. "  
 	 	 	 c o n t i n u e ;  
 	 	 )  
 	 	  
 	 	 - -   B I P    ȥ� 
 	 	 (  
 	 	 	 b i p _ p a t h   =   t e m p _ p a t h   +   " \ \ "   +   n a m e   +   " . b i p "  
 	 	 	  
 	 	 	 b i p e d . s a v e B I P F i l e   b i p . t r a n s f o r m . c o n t r o l l e r   b i p _ p a t h  
 	 	 )  
 	 	  
 	 	 e n t r y   =   B I P E n t r y   M A X _ P a t h : f i l e   B I P _ P a t h : b i p _ p a t h  
 	 	 a p p e n d   B I P s   e n t r y  
 	 	  
 	 	 p r o g r e s s   + =   1 ;  
 	 	 _ p r o g r e s s . v a l u e   =   1 0 0   *   p r o g r e s s   /   m a x _ p r o g r e s s   a s   f l o a t ;  
 	 )  
 	  
 	 - -    ȥ����  �ǔ�  B I P �D�  S e t t i n g   �|���  ȩ� 
 	 (  
 	 	 f o r   e n t r y   i n   B I P s   d o  
 	 	 (  
 	 	 	 - -   S e t t i n g   �|�  }Ǵ��t�0� 
 	 	 	 i s _ o p e n e d   =   l o a d M a x F i l e   _ s e t _ f i l e   q u i e t : t r u e  
 	 	 	 i f (   i s _ o p e n e d   = =   f a l s e )   t h e n  
 	 	 	 (  
 	 	 	 	 M e s s a g e B o x   " S e t t i n g D�  }Ǵ��|�  �  �ŵ�Ȳ�. "  
 	 	 	 	 r e t u r n   f a l s e  
 	 	 	 )  
 	 	 	  
 	 	 	 b i p   =   F i n d B i p e d ( )  
 	 	 	 i f (   b i p   = =   u n d e f i n e d )   t h e n  
 	 	 	 (  
 	 	 	 	 M e s s a g e B o x   " S e t t i n g   �|���    B i p e d   $��t�  tȬ�X���  Jŵ�Ȳ�! "  
 	 	 	 	 r e t u r n   f a l s e  
 	 	 	 )  
 	 	 	  
 	 	 	 p r i n t   e n t r y . B I P _ P a t h  
 	 	 	  
 	 	 	 - -   B I P   �|�  }Ǵ�  �t�0� 
 	 	 	 b i p e d . l o a d B I P F i l e   b i p . t r a n s f o r m . c o n t r o l l e r   e n t r y . B I P _ P a t h  
 	 	 	  
 	 	 	 - -   M A X \�   ȥ�X�0� 
 	 	 	 (  
 	 	 	 	 n a m e   =   g e t F i l e n a m e F i l e   e n t r y . M A X _ P a t h  
 	 	 	 	  
 	 	 	 	 i f   ( _ r e p l a c e _ s r c   ! =   u n d e f i n e d )   a n d   ( _ r e p l a c e _ s r c . c o u n t   >   0 )   t h e n  
 	 	 	 	 (  
 	 	 	 	 	 i d x _ m a t c h   =   f i n d S t r i n g   n a m e   _ r e p l a c e _ s r c  
 	 	 	 	 	  
 	 	 	 	 	 i f (   i d x _ m a t c h   ! =   u n d e f i n e d )   t h e n  
 	 	 	 	 	 (  
 	 	 	 	 	 	 n a m e   =   r e p l a c e   n a m e   i d x _ m a t c h   _ r e p l a c e _ s r c . c o u n t   _ r e p l a c e _ d e s t  
 	 	 	 	 	 )  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 n e w _ p a t h   =   _ t a r g e t _ p a t h   +   " \ \ "   +   _ p r e f i x   +   n a m e   +   _ p o s t f i x   +   " . m a x "  
 	 	 	 	  
 	 	 	 	 i f (   _ o v e r w r i t e   = =   f a l s e )   t h e n  
 	 	 	 	 (  
 	 	 	 	 	 i f (   d o e s F i l e E x i s t   n e w _ p a t h )   t h e n  
 	 	 	 	 	 (  
 	 	 	 	 	 	 M e s s a g e B o x   " t���  �|�t�  tȬ�i�Ȳ�.   n�������  J�0�  �t�  ����D�  �͌�i�Ȳ�. " ;  
 	 	 	 	 	 	 r e t u r n   f a l s e ;  
 	 	 	 	 	 )  
 	 	 	 	 )  
 	 	 	 	  
 	 	 	 	 s a v e M a x F i l e   n e w _ p a t h   q u i e t : t r u e  
 	 	 	 )  
 	 	 	  
 	 	 	 p r o g r e s s   + =   1 ;  
 	 	 	 _ p r o g r e s s . v a l u e   =   1 0 0   *   p r o g r e s s   /   m a x _ p r o g r e s s   a s   f l o a t ;  
 	 	 )  
 	 )  
 	  
 	 m s g   =   " �  "   +   B I P s . c o u n t   a s   s t r i n g   +   " �  �|�t�  �̬���ŵ�Ȳ�. "  
 	 M e s s a g e B o x   m s g  
 	  
 	 f r e e   B I P s  
 	  
 	 r e t u r n   t r u e ;  
 )  
  
 f u n c t i o n   R e f r e s h A n i m s   _ i n f o   _ l i s t   f i l e s   =  
 (  
 	 _ l i s t . i t e m s   =   f i l e s  
 	 _ i n f o . t e x t   =   " T o t a l   :   "   +   _ l i s t . i t e m s . c o u n t   a s   s t r i n g   +   "   f i l e s " ;  
 )  
  
 r o l l o u t   R O L L O U T _ R e t a r g e t A n i m s   " R e t a r g e t   A n i m a t i o n s "  
 (  
 	 l a b e l   S T _ S t a t i c   " B i p e d   A n i m a t i o n D�  B I P   �|�\�   ȥ�X��,   �x�  S e t t i n g ��  ȩ�X���  ��ٳ   ȥ�t�  �Ȕ�  4҅�Ȳ�. "  
 	 l a b e l   S T _ S t a t i c 1  
 	  
 	 g r o u p   " S e t t i n g "  
 	 (  
 	 	 e d i t t e x t   E D _ S e t t i n g   " F i l e "  
 	 	  
 	 	 b u t t o n   B T N _ S e t t i n g   " . . . "   a l i g n : # r i g h t  
 	 	  
 	 	 o n   B T N _ S e t t i n g   p r e s s e d   d o  
 	 	 (  
 	 	 	 f i l e   =   O p e n F i l e D i a l o g   _ t i t l e : " S e t t i n g   �|�D�   ���t�  ��8���. "  
 	 	 	 i f (   f i l e   ! =   u n d e f i n e d )   t h e n  
 	 	 	 	 E D _ S e t t i n g . t e x t   =   f i l e  
 	 	 	  
 	 	 )  
 	 )  
 	  
 	 g r o u p   " A n i m a s i o n s "  
 	 (  
 	 	 l a b e l   T X T _ A n i m s   " T o t a l   :   0   f i l e s "   a l i g n : # l e f t  
 	 	 l a b e l   S T _ S t a t i c 4   " "  
 	 	 l i s t b o x   L I S T _ A n i m s   " A n i m a t i o n s "   r e a d o n l y : t r u e  
 	 	 b u t t o n   B T N _ A n i m s   " S e l e c t   a n i m a t i o n s . . . "   a l i g n : # r i g h t  
 	 	  
 	 	 o n   B T N _ A n i m s   p r e s s e d   d o  
 	 	 (  
 	 	 	 f i l e s   =   O p e n F i l e D i a l o g   _ t i t l e : " R e t a r g e t `�  `�ȲT�t�X�  �|�D�   ���t�  ��8���. "   _ m u l t i S e l e c t : t r u e  
 	 	 	 i f (   f i l e s   ! =   u n d e f i n e d )   t h e n  
 	 	 	 (  
 	 	 	 	 R e f r e s h A n i m s   T X T _ A n i m s   L I S T _ A n i m s   f i l e s  
 	 	 	 )  
 	 	 )  
 	 )  
 	  
 	 g r o u p   " T a r g e t "  
 	 (  
 	 	 e d i t t e x t   E D _ D e s t P a t h   " D e s t i n a t i o n   f o l d e r   "  
 	 	 b u t t o n   B T N _ D e s t P a t h   " . . . "   a l i g n : # r i g h t  
 	 	  
 	 	 c h e c k B o x   C H K _ O v e r w r i t e   " O v e r w r i t e "   c h e c k e d : f a l s e  
 	 	  
 	 	 e d i t t e x t   E D _ P r e f i x   " P r e f i x "   w i d t h : 1 2 0  
 	 	 e d i t t e x t   E D _ P o s t f i x   " P o s t f i x "   w i d t h : 1 3 0  
 	 	 e d i t t e x t   E D _ R e p l a c e S r c   " R e p l a c e "   a c r o s s : 2  
 	 	 e d i t t e x t   E D _ R e p l a c e D e s t   "   - > "  
  
 	 	 o n   B T N _ D e s t P a t h   p r e s s e d   d o  
 	 	 (  
 	 	 	 s e t _ f i l e   =   E D _ S e t t i n g . t e x t  
 	 	 	  
 	 	 	 l o c a l   i n i t i a l _ p a t h   =   " "  
 	 	 	 i f (   s e t _ f i l e   ! =   u n d e f i n e d )   t h e n  
 	 	 	 	 i n i t i a l _ p a t h   =   g e t F i l e n a m e P a t h   s e t _ f i l e  
 	 	  
 	 	 	 t a r g e t _ p a t h   =   g e t S a v e P a t h   c a p t i o n : "  ȥ�`�  ��T�|�   ���t�  ��8���. "   i n i t i a l D i r : i n i t i a l _ p a t h  
 	 	 	  
 	 	 	 i f (   t a r g e t _ p a t h   ! =   u n d e f i n e d )   t h e n  
 	 	 	 	 E D _ D e s t P a t h . t e x t   =   t a r g e t _ p a t h  
 	 	 )  
 	 )  
 	  
 	 g r o u p   " P r o c e s s i n g "  
 	 (  
 	 	 p r o g r e s s B a r   P R G _ P r o g r e s s  
 	 	 b u t t o n   B T N _ S t a r t   " S t a r t "   w i d t h : 1 8 0  
  
 	 	 o n   B T N _ S t a r t   p r e s s e d   d o    
 	 	 (  
 	 	 	 s e t _ f i l e   =   E D _ S e t t i n g . t e x t  
 	 	 	 a n i m _ f i l e s   =   L I S T _ A n i m s . i t e m s  
 	 	 	 t a r g e t _ p a t h   =   E D _ D e s t P a t h . t e x t  
 	 	 	  
 	 	 	 p r e f i x   =   E D _ P r e f i x . t e x t ;  
 	 	 	 p o s t f i x   =   E D _ P o s t f i x . t e x t ;  
 	 	 	 r e p l a c e _ s r c   =   E D _ R e p l a c e S r c . t e x t ;  
 	 	 	 r e p l a c e _ d e s t   =   E D _ R e p l a c e D e s t . t e x t ;  
 	 	 	 o v e r w r i t e   =   C H K _ O v e r w r i t e . c h e c k e d ;  
 	 	 	  
 	 	 	 P R G _ P r o g r e s s . v a l u e   =   0 ;  
 	 	 	  
 	 	 	 R e t a r g e t A n i m a t i o n s   \  
 	 	 	 	 _ s e t _ f i l e : s e t _ f i l e \  
 	 	 	 	 _ a n i m _ f i l e s : a n i m _ f i l e s \  
 	 	 	 	 _ t a r g e t _ p a t h : t a r g e t _ p a t h   \  
 	 	 	 	 _ p r e f i x : p r e f i x   \  
 	 	 	 	 _ p o s t f i x : p o s t f i x   \  
 	 	 	 	 _ r e p l a c e _ s r c : r e p l a c e _ s r c   \  
 	 	 	 	 _ r e p l a c e _ d e s t : r e p l a c e _ d e s t   \  
 	 	 	 	 _ o v e r w r i t e : o v e r w r i t e   \  
 	 	 	 	 _ p r o g r e s s : P R G _ P r o g r e s s  
 	 	 	 	  
 	 	 	 P R G _ P r o g r e s s . v a l u e   =   1 0 0 ;  
 	 	 )  
 	 )  
 )  
  
 c r e a t e D i a l o g   R O L L O U T _ R e t a r g e t A n i m s   4 8 0   5 9 0   s t y l e : # ( # s t y l e _ t i t l e b a r ,   # s t y l e _ b o r d e r ,   # s t y l e _ t o o l w i n d o w ,   # s t y l e _ r e s i z i n g ,   # s t y l e _ s y s m e n u )  
 