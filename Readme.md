## Useful commands:

`mvn liquibase:update`

We generate the changelog using this command
`mvn liquibase:generateChangeLog -Dliquibase.outputChangeLogFile=src/main/resources/db/changelog/generated.h2.sql -Dliquibase.diffTypes=tables,views,columns,indexes,foreignkeys,primarykeys,uniqueconstraints,data`

Once we get the changelog.
We add it in the initialFile.sql file

Also, add these conditions

-- changeset zahid_khan2:1766939108811-2 splitStatements:false
-- precondition-sql-check expectedResult:0 select count(*) from STUDENT where id = 1;