import pandas as pd

def combine_two_tables(person: pd.DataFrame, address: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Merge the person and address tables using a left join on 'personId'
    combined = pd.merge(person,address,on='personId',how='left')
    
    # Step 2: Select the required columns and rename them to match the output format
    result = combined[['firstName','lastName','city','state']]
    
    return result
