import pandas as pd

def swap_salary(salary: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Use the replace method to swap 'm' with 'f' and 'f' with 'm'
    salary['sex'] = salary['sex'].replace({'m':'f','f':'m'})
    
    # Return the modified DataFrame
    return salary