SELECT *FROM gbage;

update gbage set
gbagenomb = replace(replace(replace(replace(replace(replace(gbagenomb,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbagedir1 = replace(replace(replace(replace(replace(replace(gbagedir1,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbagedir2 = replace(replace(replace(replace(replace(replace(gbagedir2,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbageddo1 = replace(replace(replace(replace(replace(replace(gbageddo1,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbageddo2 = replace(replace(replace(replace(replace(replace(gbageddo2,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbageact1 = replace(replace(replace(replace(replace(replace(gbageact1,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u'),
gbageact2 = replace(replace(replace(replace(replace(replace(gbageact2,'�','n'),'�','a'),'�','e'),'�','i'),'�','o'),'�','u');

select *from gbage where gbagedir1 like '%�%' or gbageact1 like '%�%' or gbageact2 like '%�%';
select *from gbage where gbageact1 like '%�%';
select *from gbage where gbageact2 like '%�%';

select *from gbage where gbagecage in (118528,122455,49826);

delete gbage;