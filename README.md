## Requirement

- please forked this repo for practice
- set up flyway environment
- write database migration scripts for follow requirement changes (keep one migration script for per change log)

### change logs

1. create table `employee` with fields: `id`,`name`,`age`,`vocation`, the `id` should be auto increased
2. create table `user` with fields: `id`,`username`,`password`,`password_expired`,`role`,`createTime` the `createTime` should be generated automatically.  `role` can be a string here.
3. add field `employee_id` in `user`
4. change field name `vocation` to `position` in table `employee` to be more meaningful 
5. remove field `password_expired`
6. create table `role` with fields: `id`,`name`
7. change `role` to `role_id` in `user` table
8. insert preset records for `role` with `admin`,`company admin`,`user`

##  Practice Output & Submit

- submit your git repo url to field `answer`

## Hint

1. add flyway dependency in build.gradle
2. add migration script under src/main/resource/db/migration
3. the filename of migration script should match the PATTERN like this V1__xxxxxx.sql, V2__yyyyyy.sql
4. run gradle bootRun to get script executed
5. find word migration in log of spring boot
6. check database structure in localhost:8080/h2-console to verify migration result


## How to use H2

- `schema.sql` will be loaded and init database when application is starting
- navigate to web console`http://localhost:8080/h2-console`
- put `jdbc:h2:file:./h2-db/h2;MODE=Oracle` in `JDBC URL` field
- we choose file as the h2 storage for migration practice
