import pandas as pd

def actors_and_directors(actor_director: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Group by 'actor_id' and 'director_id' and count the number of occurrences
    cooperation_counts = actor_director.groupby(['actor_id','director_id']).size()

    # Step 2: Filter the groups where the count is at least 3
    frequent_pairs = cooperation_counts[cooperation_counts>=3]

    # Step 3: Reset the index to turn the Series into a DataFrame with columns 'actor_id' and 'director_id'
    result = frequent_pairs.reset_index()[['actor_id','director_id']]
    
    return result
