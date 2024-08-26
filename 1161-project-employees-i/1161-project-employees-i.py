import pandas as pd

def project_employees_i(project: pd.DataFrame, employee: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Merge the 'project' and 'employee' tables on 'employee_id'
    merged_data = pd.merge(project,employee,on='employee_id')

    # Step 2: Group by 'project_id' and calculate the average of 'experience_years'
    avg_experience =merged_data.groupby('project_id')['experience_years'].mean().reset_index()
    
    # Step 3: Rename the 'experience_years' column to 'average_years'
    avg_experience.rename(columns={'experience_years':'average_years'},inplace=True)
    
    # Step 4: Round the 'average_years' column to 2 decimal places
    avg_experience['average_years'] =avg_experience['average_years'].round(2)
      
    return avg_experience
