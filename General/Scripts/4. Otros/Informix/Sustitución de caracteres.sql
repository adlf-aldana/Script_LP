SELECT *FROM gbage;

update gbage set
gbagenomb = replace(replace(replace(replace(replace(replace(gbagenomb,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbagedir1 = replace(replace(replace(replace(replace(replace(gbagedir1,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbagedir2 = replace(replace(replace(replace(replace(replace(gbagedir2,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbageddo1 = replace(replace(replace(replace(replace(replace(gbageddo1,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbageddo2 = replace(replace(replace(replace(replace(replace(gbageddo2,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbageact1 = replace(replace(replace(replace(replace(replace(gbageact1,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u'),
gbageact2 = replace(replace(replace(replace(replace(replace(gbageact2,'ñ','n'),'á','a'),'é','e'),'í','i'),'ó','o'),'ú','u');

select *from gbage where gbagedir1 like '%ñ%' or gbageact1 like '%ó%' or gbageact2 like '%é%';
select *from gbage where gbageact1 like '%ó%';
select *from gbage where gbageact2 like '%é%';

select *from gbage where gbagecage in (118528,122455,49826);

delete gbage;