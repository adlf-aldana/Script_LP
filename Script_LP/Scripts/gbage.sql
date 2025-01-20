CREATE PROCEDURE dpf_interest (v_ndep DECIMAL(16,0))
    RETURNING DECIMAL(16, 2) AS results;
    DEFINE v_result DECIMAL(16, 2);

    LET v_result = 0;

    SELECT 
        (pfmdpcapi*(pfmdptasa/100)*nvl((gbpmtfdia-pfthdftra), 0))/360 INTO v_result
    FROM pfmdp
        LEFT JOIN pfthd ON pfthdndep = pfmdpndep 
            AND pfthdmrcb = 0
            AND pfthdftra = (SELECT max(pfthdftra)
                           FROM pfthd
                           WHERE pfthdndep = pfmdpndep
                           AND pfthdmrcb = 0), gbpmt
    WHERE pfmdpndep = v_ndep;
    
    RETURN v_result;
END PROCEDURE;