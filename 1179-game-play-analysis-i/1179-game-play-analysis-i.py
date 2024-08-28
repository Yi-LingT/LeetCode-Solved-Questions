import pandas as pd

def game_analysis(activity: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Group by 'player_id' and find the minimum 'event_date'
    first_login = activity.groupby('player_id')['event_date'].min().reset_index()

    # Step 2: Rename the 'event_date' column to 'first_login'
    first_login.rename(columns={'event_date': 'first_login'}, inplace=True)
    
    return first_login
