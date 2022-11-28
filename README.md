# SQL-project-1-Data-Academy-
Zuzana Poláková, email: zuzana-polakova@email.cz 

1stQUESTION: Rostou v průběhu let mzdy ve všech odvětvích, nebo v některých klesají?

Z vytvořených tabulek pro jednotlivá odvětví je patrné, že průměrné mzdy v odvětví:

- A - Zemědělství, lesnictví, rybářství - zaznamenaly pokles v roce 2009 (v ostatních letech meziročně rostly),
- B - Těžba a dobývání - klesaly v letech 2009, 2013, 2014 a 2016,
- C - Zpracovatelský průmysl - nezaznamenaly žádný pokles,
- D - Výroba a rozvod elektřiny, plynu, tepla a klimatiz. vzduchu - klesaly v letech 2013 a 2015,
- E - Zásobování vodou, činnosti související s odpady a sanacemi - zaznamenaly pokles v roce 2013,
- F - Stavebnictví - zaznamenaly pokles v roce 2013,
- G - Velkoobchod a maloobchod, opravy a údržba motorových vozidel - zaznamenaly pokles v roce 2013,
- H - Doprava a skladování - nezaznamenaly žádný pokles,
- I - Ubytování, stravování a pohostinství - klesaly v letech 2009 a 2011,
- J - Informační a komunikační činnosti - zaznamenaly pokles v roce 2013,
- K - Peněžnictví a pojišťovnictví - zaznamenaly pokles v roce 2013,
- L - Činnosti v oblasti nemovitostí - zaznamenaly pokles v roce 2013,
- M - Profesní, vědecké a technické činnosti - zaznamenaly pokles v roce 2013,
- N - Administrativní a podpůrné činnosti - zaznamenaly pokles v roce 2013,
- O - Veřejná správa a obrana, povinné sociální zabezpečení - klesaly v letech 2010 a 2011,
- P - Vzdělávání - klesaly v roce 2010,
- Q - Zdravotní a sociální péče - nezaznamenaly žádný pokles,
- R - Kulturní, zábavní a rekreační činnosti - klesaly v letech 2011 a 2012,
- S - Ostatní činnosti - nezaznamenaly žádný pokles.

2ndQUESTION: Kolik je možné si koupit litrů mléka a kilogramů chleba za první a poslední srovnatelné období v dostupných datech cen a mezd?

Jako první srovnatelné období pro ceny a mzdy jsem si zvolila první čtvrtletí roku 2006 (1.Q 2006).
V tomto období (1.Q 2006) byla průměrná hodnota všech mezd ve výši 19550,38 Kč, 
zatímco průměrná cena 1 kg chleba konzumního ve výši 14,74 Kč a průměrná cena 1 l mléka 14,24 Kč. 
Bylo tedy možné si koupit 1326,35 kg chleba a 1372,92 l mléka polotučného.

Jako poslední srovnatelné období jsem si zvolila čtvrté čtvrtletí roku 2018 (4.Q 2018)
V tomto období (4.Q 2018) byla prům. hodnota všech mezd ve výši 34452,2 Kč, 
zatímco průměrná cena 1 kg chleba byla 23,86 Kč a průměrná cena mléka 19,48 Kč/l. 
Bylo tedy možné si koupit 1443,93 kg chleba a 1768,59 l mléka.

3rdQUESTION: Která kategorie potravin zdražuje nejpomaleji (je u ní nejnižší procentuální meziroční nárůst)?
Za rok 2007 je nejnižší meziroční nárůst (% rozdíl oproti roku 2006) u kategorie potravin 117101 - Rajská jablka červená kulatá (-30,28 %).
Za rok 2008 je nejnižší meziroční nárůst u kategorie potravin 117401 - Konzumní brambory (-23,55 %).
Za rok 2009 je nejnižší meziroční nárůst u kategorie potravin 111602 - Těstoviny vaječné (-28,5 %).
Za rok 2010 je nejnižší meziroční nárůst u kategorie potravin 111602 - Těstoviny vaječné (-13,62 %).
Za rok 2011 je nejnižší meziroční nárůst u kategorie potravin 117101 - Rajská jablka červená kulatá (-28,19 %).
Za rok 2012 je nejnižší meziroční nárůst u kategorie potravin 117401 - Konzumní brambory (-21,95 %).
Za rok 2013 je nejnižší meziroční nárůst u kategorie potravin 114701 - Vejce slepičí čerstvá (-15.12 %).
Za rok 2014 je nejnižší meziroční nárůst u kategorie potravin 117401 - Konzumní brambory (-20.14 %).
Za rok 2015 je nejnižší meziroční nárůst u kategorie potravin 114501 - Eidamská cihla (-20.73 %).
Za rok 2016 je nejnižší meziroční nárůst u kategorie potravin 111201 - Pšeničná mouka hladká (-12.39 %).
Za rok 2017 je nejnižší meziroční nárůst u kategorie potravin 117106 - Mrkev (-18.98 %).
Za rok 2018 je nejnižší meziroční nárůst u kategorie potravin 118101 - Cukr krystalový (-21.09 %).

4thQUESTION: Existuje rok, ve kterém byl meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %)?

Nejprve jsem si vytvořila tabulku procentního růstu mezd od roku 2006 do roku 2018, 
poté tabulku procentního meziročního růstu cen za stejné období 
a jejich rozdílem jsem zjistila, že ve sledovaném období nebyl
meziroční nárůst cen potravin výrazně vyšší než růst mezd (větší než 10 %). Jen v roce 2009 je 9,98 %. 

5thQUESTION:Má výška HDP vliv na změny ve mzdách a cenách potravin? 
Neboli, pokud HDP vzroste výrazněji v jednom roce, projeví se to na cenách potravin či mzdách ve stejném nebo násdujícím roce výraznějším růstem?

Vytvořila jsem si druhou hlavní tabulku spojením tabulek countries a economies, abych porovnala růst HDP s cenami a mzdami, ale protože o cenách mám údaje
jen za ČR, porovnávala jsem HDP a ceny a mzdy pouze v ČR.

Na základě použití pomocných tabulek z minulých otázek (otázka 4) - tabulky pro meziroční % růst mezd a tabulky pro meziroční % růst cen a přidání tabulky pro meziroční procentní růst HDP v ČR za sledované období 2006 až 2018, jsem zjistila, že při významnějším růstu HDP (více než průměrný růst) v roce 2018 rostly výrazněji
i mzdy a v letech 2007, 2008 a 2017 při výraznějším růstu HDP současně výrazněji vzrostly mzdy i ceny.

