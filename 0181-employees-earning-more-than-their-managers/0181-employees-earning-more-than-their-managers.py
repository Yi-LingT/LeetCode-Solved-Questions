import pandas as pd

def find_employees(employee: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Self-join the employee DataFrame on managerId = id
    merged_df =employee.merge(employee,left_on='managerId',right_on='id',suffixes=('','_manager'))
    
    # Step 2: Filter employees who earn more than their managers
    high_earners = merged_df[merged_df['salary']>merged_df['salary_manager']]

    # Step 3: Select the 'name' column for the result
    result =high_earners[['name']].rename(columns={'name':'Employee'})
    
    return result
