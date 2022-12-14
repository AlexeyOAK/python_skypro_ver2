PGDMP         
            	    z           stor_db    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16394    stor_db    DATABASE     \   CREATE DATABASE stor_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'ru_RU.UTF-8';
    DROP DATABASE stor_db;
                postgres    false            ?            1259    16400    address    TABLE     P   CREATE TABLE public.address (
    id_addr integer NOT NULL,
    address text
);
    DROP TABLE public.address;
       public         heap    postgres    false            ?            1259    16405    all_info    TABLE     ?   CREATE TABLE public.all_info (
    id integer NOT NULL,
    name_stor text,
    id_author integer,
    price integer,
    description text,
    id_address integer,
    is_published boolean
);
    DROP TABLE public.all_info;
       public         heap    postgres    false            ?            1259    16395    people    TABLE     L   CREATE TABLE public.people (
    id_name integer NOT NULL,
    name text
);
    DROP TABLE public.people;
       public         heap    postgres    false                      0    16400    address 
   TABLE DATA           3   COPY public.address (id_addr, address) FROM stdin;
    public          postgres    false    210   (                 0    16405    all_info 
   TABLE DATA           j   COPY public.all_info (id, name_stor, id_author, price, description, id_address, is_published) FROM stdin;
    public          postgres    false    211   ?                  0    16395    people 
   TABLE DATA           /   COPY public.people (id_name, name) FROM stdin;
    public          postgres    false    209   ?       p           2606    16404    address address_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id_addr);
 >   ALTER TABLE ONLY public.address DROP CONSTRAINT address_pkey;
       public            postgres    false    210            r           2606    16409    all_info all_info_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.all_info
    ADD CONSTRAINT all_info_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.all_info DROP CONSTRAINT all_info_pkey;
       public            postgres    false    211            n           2606    16399    people people_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id_name);
 <   ALTER TABLE ONLY public.people DROP CONSTRAINT people_pkey;
       public            postgres    false    209            t           2606    16419    all_info address_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.all_info
    ADD CONSTRAINT address_id FOREIGN KEY (id_address) REFERENCES public.address(id_addr) NOT VALID;
 =   ALTER TABLE ONLY public.all_info DROP CONSTRAINT address_id;
       public          postgres    false    211    210    3440            s           2606    16414    all_info name_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.all_info
    ADD CONSTRAINT name_id FOREIGN KEY (id_author) REFERENCES public.people(id_name) NOT VALID;
 :   ALTER TABLE ONLY public.all_info DROP CONSTRAINT name_id;
       public          postgres    false    3438    209    211               ?   x?mOI?@<3??(FP_?c?hb??	??u@'`xC???Cwz???^x??#j?0?6?x?C?3??k?7rSQ?LR9????`Hl+{P???"[??x?x?Ɲ?7	???lZ???s(Fm?rI$????;Y??iʡ?dI???}???~??B?v??ٻ?Sؿ????}??????.         ?  x??Y?n?]S_Q?? ???????I?^M?`???????d?X#v?J?ɒ??f?l????G9??[??4?`???2Y????s?}t?????2O??b??惢?ߢ8(??A>h?͐gyR????|???z???}??/?x?d???8????;??Op??ʑ????w?q???⌿???8͓??'??9?s????=8tNp$??|)?\4-q1?'q??	?/????3??C>?Fl?/?K???????4??3?5,N?^a???????C?Yq?k?P<5??+??OL??x? v?0G?a?AB????X??n?2??nHm????V??Z^?qy??a?ڕ$9??????Db????l?o? 4?I!?R_???'8\?IRq?h????8#??y?	?Isƕm	??,8<?*D>kS/??)Sz??:??`?Cl???3l?%&?H?rc?Uj?5B??H2??u6?)~{?????~(?S?W8??\??[??ۿ?r??n2?Kn?c? Ē?p_)???L2??<?RJ? ?:??	Zi?i?@??V??? r>6??&???R??-h??????S?<?^??k??_00^v????s?H?K$8?+?i@?.0??N"P??I?X\??<# SFS?|?????????A?݃o??#????????<x?????GO?f?ׂai???3S,?Jtp???c?dJJ?_Z????xʮ;F??/c?b??ء??d:??	???^?;?pȕ??]t???~??(?n??8???m??2)??μ???I?D l'5???I????]4?L??y?;R??!5??H?7P?6m?????o?	??p??~??-1???H??o??v?ϡw?x???I췃?????ϕ?\OT?S??Eە@?P?QLAվ"??+x??f??Z"B?u??????~4?+?L?<???®?Yq?5t??I???EW?A?<?
??J??~?̕?N[??1?[ԗL??lm)?3a??DJ(mg??Q;?F<?&??#???=??R"????"+?%r??CHl?	?y???FfS3"?ٵW?	??????"?c+&x??΀??z?2?' ?c??H?_?<???t??~=P~8#??G?K!?k?7? y???i??U?T??9%??!DNV?Kf?xᄟX]????f:??T?SpX?I?,?*0???J??*#?o$M???ජ??-%???&??l}??5\??X??+????t???̭?K?s?n??h????tj??<?.mM/?}mF???7O?JF5f??????a??QFBW"aJ>v ?e????Y???Y?[?F????~?
???/i}"@??⚀?????3 t?3????Uo??+V?	 r?@t???2]????ע??u????V???J?h[?u?4?M?Z?#f+w?Џ?K,?E&U?({?S? ??_?1?lD????_???????ma6??@j<??j???ʩ?ɑ???|?#z[H????A???ĸ??Bp?T? ?B.?;Ԭ??C?ᅘ?fkID0????????BC]??f?T7??喂?G????W??֣(^Դ4?
W???Z????2?D?~??_?n???뫅?????B?KY???a?	Z?bI?E??Dħ=D??J?:??$Kk??7Y!%*????s,>?:???^k?>??????Nr?j|5?J???ԉ8?ъ#?\2L?????t#?e?Ȳ?PQ???"%"[??fꁬYګ??~?TI??)|?*??oݴcy?mvJ9?+?J????V??nTJꄏU?
0???ax-Mp$v?@?(?'???2P?m6=???mqX{J?_G?aK????T6???7bxfn?W։?PϪ?
UK??qlF?&?ZZӌ?;{?L@????P6/e?C????'a???9z[?J???;??u{?@Ë&!??+??????^Ϧ@?P?^????D?M?
????'+??tK??????P?L?ۍ?g??+?	f???+?K???6K????????Iۅss>8??Qru???n?!n?,?'??XJ??D(b???ы͉???"I?3?S?l?S????C[?|???9,????ek??{?6:e?}???x??Ӹ?+? ?rP?RH???|FY
??J?4`?Y??Jh^x4?)??jU?mo???{@?O?w[???ؔl?2?RI??Н?x?\?y?R?ܞGD???????Q???&b?X?D7;?Zb??<???ZI,???2?ŹAb?g?aU????g?E??4԰MD???????k#?Xzs
ax??r?U}qbz?n????j?o?P1?8-???)?p??T??i5?O??u~?'?&?aŇ?e
???f?Fvl???:?t9???^h?3????g?e????[ֲ"????UO??
???"??&????ɲ?[???Kխ???j?f,?E|r=H?h?t}cWQ????]G ??ޭU?̕Oy?8\?,h???]VQ?V?;?e?{?n????`!?yI???A??mV?}??R????5p?[_u7?V????s`m?A9?dƱ????6kF}j???ć??gW????B??}?IbG_|?4??Iߺ???Z??͖*?2ϛ??>?M???n??ߙ?	?OZ?E š??????UA^gɦ?y5$?TԼQ?4?)\Y?3Ap???9-cl??E?h_??`???4|?[_?ݨm??"l??A{)??d???Do?=?b-??$?T??F?y??????r*?k????p?E??rL/N????O?
??~tj>?$?]^?j?k??R?9/!??k?m(??Z?k??f?K?m?ИGV?)??a$F?ol??՜?(Vo?l5?a??Txa?^?♍k??_?:+8 ϨÝ?ݤ?~????'?N^???W??x);/?X?/9f?w???뭫?Ey??I4?*???o??? ?# ?????9?72Ğmj?l?????Be;??????Ŏ8՞JGs???w??ꥇM?Y?i(?A?u<??*ӫ!?b?Ừ@Nc?o/?ȫ???Q9{?????_B???          W   x???	?0Dϻ?~????Գ?B?`jx?????y3?p??d턃?M?????Y,db????R????n?l?c??]}?ӹQ?ϝ4     