{% test field_type(model, column_name) %}

select
    {{ column_name }} 
from {{ model }}
where typeof({{ column_name }}) <> 'DECIMAL'

{% endtest %}