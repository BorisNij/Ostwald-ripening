insert into students (group_id, first_name, last_name)
    values ((
            select
                group_id
            from
                GROUPS
            where
                group_name = 'CD-88'), 'Samantha', 'Davis'), ((
        select
            group_id
        from GROUPS
        where
            group_name = 'XY-32'), 'Olivia', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Daniel', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Daniel', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Olivia', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Olivia', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Elizabeth', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Jennifer', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Emily', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'James', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Elizabeth', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Sophia', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Christopher', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'William', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Benjamin', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Joseph', 'Johnson'), (NULL, 'Ashley', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Elizabeth', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Ashley', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Sophia', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Robert', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'David', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Daniel', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Samantha', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Ashley', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'John', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Samantha', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Robert', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Elizabeth', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'John', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Daniel', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Sarah', 'Adams'), (NULL, 'James', 'Davis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'John', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Samantha', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Emily', 'Martinez'), (NULL, 'Joseph', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'James', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Daniel', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Christopher', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Samantha', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Robert', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Sophia', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Daniel', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'William', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Christopher', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Jessica', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Christopher', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Sarah', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Jennifer', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Joseph', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Elizabeth', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Jessica', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Christopher', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'William', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Elizabeth', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Christopher', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Ashley', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Sophia', 'Davis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'James', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Ashley', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Michael', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Benjamin', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Sophia', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Jennifer', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Emily', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Elizabeth', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Michael', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'William', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Mary', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Christopher', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'James', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Jennifer', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Ashley', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Jennifer', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Olivia', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Elizabeth', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Benjamin', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Christopher', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'David', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Jennifer', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Emily', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'William', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Elizabeth', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'James', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Daniel', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Robert', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Mary', 'Adams'), (NULL, 'Sarah', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Daniel', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Jessica', 'Brown'), (NULL, 'Sarah', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Christopher', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'James', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Daniel', 'Hall'), (NULL, 'Ashley', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'John', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Emily', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Mary', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Sophia', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Ashley', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Olivia', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Jennifer', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Christopher', 'Davis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Robert', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Benjamin', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Olivia', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'John', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Olivia', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Christopher', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Michael', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Samantha', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Sophia', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Joseph', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Mary', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'David', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Robert', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Sarah', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'John', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'John', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Jessica', 'Davis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Samantha', 'Johnson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Benjamin', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Ashley', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Michael', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Benjamin', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Olivia', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Joseph', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Samantha', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Benjamin', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Emily', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Olivia', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Olivia', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Christopher', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Elizabeth', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'David', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'James', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'David', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Emily', 'Johnson'), (NULL, 'Michael', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Emily', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'David', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'David', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'James', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Jennifer', 'Davis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Robert', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Mary', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Sophia', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'David', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Sarah', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Mary', 'Hall'), (NULL, 'Joseph', 'Garcia'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Olivia', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Elizabeth', 'Wilson'), (NULL, 'William', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'William', 'White'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Ashley', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'James', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Jennifer', 'Adams'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Elizabeth', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Olivia', 'Taylor'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Joseph', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'UV-55'), 'Ashley', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Jessica', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'John', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Mary', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'James', 'Jackson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Joseph', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Michael', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Samantha', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Michael', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Christopher', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Ashley', 'Harris'), (NULL, 'Sophia', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Joseph', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Samantha', 'Harris'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Benjamin', 'Adams'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'David', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Jessica', 'Jones'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Benjamin', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Olivia', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'William', 'Anderson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'PQ-77'), 'Emily', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Benjamin', 'Harris'), (NULL, 'Sarah', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Ashley', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'William', 'Young'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'James', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'Robert', 'Lewis'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'LM-99'), 'Robert', 'Martinez'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Ashley', 'Smith'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Benjamin', 'Hall'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Sophia', 'Adams'), (NULL, 'Mary', 'Wilson'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'EF-12'), 'Jessica', 'Miller'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'XY-32'), 'Benjamin', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'CD-88'), 'David', 'Turner'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'JK-63'), 'Samantha', 'Brown'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'WX-21'), 'Emily', 'Clark'), ((
        select
            group_id
        from GROUPS
    where
        group_name = 'AB-45'), 'Joseph', 'Davis');