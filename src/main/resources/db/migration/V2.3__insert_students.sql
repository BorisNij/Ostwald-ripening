INSERT INTO students (group_id, first_name, last_name)
    VALUES ((
            SELECT
                group_id
            FROM
                groups
            WHERE
                group_name = 'CD-88'), 'Samantha', 'Davis'), ((
        SELECT
            group_id
        FROM groups
        WHERE
            group_name = 'XY-32'), 'Olivia', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Daniel', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Daniel', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Olivia', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Olivia', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Elizabeth', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Jennifer', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Emily', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'James', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Elizabeth', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Sophia', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Christopher', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'William', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Benjamin', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Joseph', 'Johnson'), (NULL, 'Ashley', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Elizabeth', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Ashley', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Sophia', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Robert', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'David', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Daniel', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Samantha', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Ashley', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'John', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Samantha', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Robert', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Elizabeth', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'John', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Daniel', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Sarah', 'Adams'), (NULL, 'James', 'Davis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'John', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Samantha', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Emily', 'Martinez'), (NULL, 'Joseph', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'James', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Daniel', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Christopher', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Samantha', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Robert', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Sophia', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Daniel', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'William', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Christopher', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Jessica', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Christopher', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Sarah', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Jennifer', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Joseph', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Elizabeth', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Jessica', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Christopher', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'William', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Elizabeth', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Christopher', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Ashley', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Sophia', 'Davis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'James', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Ashley', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Michael', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Benjamin', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Sophia', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Jennifer', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Emily', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Elizabeth', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Michael', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'William', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Mary', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Christopher', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'James', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Jennifer', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Ashley', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Jennifer', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Olivia', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Elizabeth', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Benjamin', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Christopher', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'David', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Jennifer', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Emily', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'William', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Elizabeth', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'James', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Daniel', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Robert', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Mary', 'Adams'), (NULL, 'Sarah', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Daniel', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Jessica', 'Brown'), (NULL, 'Sarah', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Christopher', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'James', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Daniel', 'Hall'), (NULL, 'Ashley', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'John', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Emily', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Mary', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Sophia', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Ashley', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Olivia', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Jennifer', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Christopher', 'Davis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Robert', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Benjamin', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Olivia', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'John', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Olivia', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Christopher', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Michael', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Samantha', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Sophia', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Joseph', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Mary', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'David', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Robert', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Sarah', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'John', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'John', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Jessica', 'Davis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Samantha', 'Johnson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Benjamin', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Ashley', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Michael', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Benjamin', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Olivia', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Joseph', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Samantha', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Benjamin', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Emily', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Olivia', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Olivia', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Christopher', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Elizabeth', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'David', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'James', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'David', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Emily', 'Johnson'), (NULL, 'Michael', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Emily', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'David', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'David', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'James', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Jennifer', 'Davis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Robert', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Mary', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Sophia', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'David', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Sarah', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Mary', 'Hall'), (NULL, 'Joseph', 'Garcia'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Olivia', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Elizabeth', 'Wilson'), (NULL, 'William', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'William', 'White'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Ashley', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'James', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Jennifer', 'Adams'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Elizabeth', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Olivia', 'Taylor'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Joseph', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'UV-55'), 'Ashley', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Jessica', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'John', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Mary', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'James', 'Jackson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Joseph', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Michael', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Samantha', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Michael', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Christopher', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Ashley', 'Harris'), (NULL, 'Sophia', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Joseph', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Samantha', 'Harris'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Benjamin', 'Adams'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'David', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Jessica', 'Jones'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Benjamin', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Olivia', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'William', 'Anderson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'PQ-77'), 'Emily', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Benjamin', 'Harris'), (NULL, 'Sarah', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Ashley', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'William', 'Young'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'James', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'Robert', 'Lewis'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'LM-99'), 'Robert', 'Martinez'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Ashley', 'Smith'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Benjamin', 'Hall'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Sophia', 'Adams'), (NULL, 'Mary', 'Wilson'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'EF-12'), 'Jessica', 'Miller'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'XY-32'), 'Benjamin', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'CD-88'), 'David', 'Turner'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'JK-63'), 'Samantha', 'Brown'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'WX-21'), 'Emily', 'Clark'), ((
        SELECT
            group_id
        FROM groups
    WHERE
        group_name = 'AB-45'), 'Joseph', 'Davis');