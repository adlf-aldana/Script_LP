
SELECT 
a.ale_fecha_creacion as FechaGeneracion,
s.suc_nombre as sucursal,
a.ale_descripcion,
'' as modulo,
IFNULL(cu.cue_nrocuenta,'No aplica') as nroCuenta,
 -- a.ale_id AS idalerta, 
 CONCAT(d.cdet_nombre,' ',IFNULL(d.cdet_apaterno,''), ' ', IFNULL(d.cdet_amaterno,'')) AS cliente,
 a.codigo_cliente AS CodigoCliente,
 MIN(b.bite_fecha_inicio) AS fechaAsignacion,
 IF(max(b.bite_estado)=6 OR max(b.bite_estado)=5 OR max(b.bite_estado)=9,max(b.bite_fecha_fin),max(b.bite_fecha_inicio)) AS fechaTerminacion,
 IF(max(b.bite_estado)=8 OR max(b.bite_estado)=9,max(b.bite_fecha_inicio),null) AS fechaCierre,
 '' as calificacion, 
 GROUP_CONCAT(b.bite_observacion,' * ') as justificacion,
(select u1.usu_usuario as usuario from bitacora b1 inner join usuario u1 on u1.usu_id = b1.usu_id inner join bitacora_item i1 ON i1.bit_id = b1.bit_id and i1.bite_estado  in (4,5) WHERE i1.ale_id = a.ale_id LIMIT 1) as usuarioJustificador,
(select u1.usu_usuario as usuario from bitacora b1 inner join usuario u1 on u1.usu_id = b1.usu_id inner join bitacora_item i1 ON i1.bit_id = b1.bit_id and i1.bite_estado in (8,9) WHERE i1.ale_id = a.ale_id LIMIT 1) as usuarioEvaluador,
e.est_nombre AS estadoAlerta
FROM alerta a
INNER JOIN sucursal s ON s.suc_id = a.suc_id
INNER JOIN bitacora_item b ON b.ale_id = a.ale_id
INNER JOIN bitacora bi ON bi.bit_id = b.bit_id
INNER JOIN alerta_tipo t ON t.tale_id = a.tale_id
INNER JOIN cliente_detalle d ON d.cli_id = a.cli_id
INNER JOIN cliente c ON c.cli_id = d.cli_id
INNER JOIN tipo_documento td ON td.tdoc_id=c.tdoc_id
INNER JOIN estado_alerta e ON e.est_id = a.ale_estado
INNER JOIN usuario u ON u.usu_id = bi.usu_id
LEFT JOIN cuenta cu ON cu.cue_id = a.cue_id
WHERE a.ale_fecha_creacion >= '2022-06-01' 
AND a.ale_fecha_creacion <= '2023-08-31'
GROUP BY a.ale_id ORDER BY a.ale_id;