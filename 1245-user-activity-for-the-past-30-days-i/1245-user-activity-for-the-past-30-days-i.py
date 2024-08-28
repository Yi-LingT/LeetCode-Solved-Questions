import pandas as pd

def user_activity(activity: pd.DataFrame) -> pd.DataFrame:
 # Step 1: Filter the activity for the last 30 days ending on 2019-07-27
    filtered_activity = activity[
        (activity['activity_date']>='2019-06-28')&
        (activity['activity_date']<='2019-07-27')
    ] 

    # Step 2: Group by 'activity_date' and count unique 'user_id's for each day
    active_users_count = filtered_activity.groupby('activity_date')['user_id'].nunique().reset_index()

    # Step 3: Rename the columns to match the required output format
    active_users_count.rename(columns={'activity_date':'day','user_id':'active_users'},inplace=True)

    return active_users_count    