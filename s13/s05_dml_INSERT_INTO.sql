--JDBS »ðÀÔ¿ë ÀÛ¼º
sql.append("INSERT INTO board (     \n");
sql.append("    seq,                \n");
sql.append("    title,              \n");
sql.append("    contents,           \n");
sql.append("    read_cnt,           \n");
sql.append("    reg_dt,             \n");
sql.append("    reg_id,             \n");
sql.append("    mod_dt,             \n");
sql.append("    mod_id              \n");
sql.append(") VALUES ( ?,           \n");
sql.append("           ?,           \n");
sql.append("           ?,           \n");
sql.append("           ?,           \n");
sql.append("           SYSDATE,     \n");
sql.append("           ?,           \n");
sql.append("           SYSDATE,     \n");
sql.append("           ? )          \n");
--;