# 🧾 SQL · Consultas con JOIN: clientes y pedidos

![SQL](https://img.shields.io/badge/SQL-MySQL-4479A1?logo=mysql&logoColor=white)

Script que crea una base de datos de **clientes y pedidos**, la puebla con datos de prueba y responde preguntas de negocio mediante consultas con `JOIN`, agregaciones y agrupaciones.

> Ejercicio del **Bootcamp Full Stack Java (2026)**.

## 🔎 Consultas incluidas

- Clientes con sus pedidos (`INNER JOIN`).
- Pedidos de un cliente específico.
- **Total gastado por cada cliente**, incluyendo a quienes no han comprado (`LEFT JOIN` + `SUM` + `GROUP BY`).
- Cantidad de pedidos por cliente (`COUNT` + `GROUP BY`).
- Eliminación en cascada de un cliente y sus pedidos (`ON DELETE CASCADE`).

## 🧠 Conceptos aplicados

`CREATE DATABASE` · `CREATE TABLE` · `INSERT` · `DELETE` · `ON DELETE CASCADE` · `INNER JOIN` · `LEFT JOIN` · `GROUP BY` · `SUM` · `COUNT` · alias de columnas

## ▶️ Cómo ejecutarlo

```bash
mysql -u root -p < consultas_clientes_pedidos.sql
```

---

## 👩‍💻 Autora

**Evelyn Álvarez Vásquez** · Técnica en Informática en formación (IPLACEX) · Profesora y Magíster en Didáctica de la Matemática

[![LinkedIn](https://img.shields.io/badge/LinkedIn-profesoraevelyn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/profesoraevelyn/)
[![GitHub](https://img.shields.io/badge/GitHub-evelyntec-181717?logo=github&logoColor=white)](https://github.com/evelyntec)
[![Web](https://img.shields.io/badge/Web-profesoraevelyn.com-00B8D9?logo=googlechrome&logoColor=white)](https://profesoraevelyn.com)
