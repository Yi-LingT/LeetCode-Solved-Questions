import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    # Filter rows where author_id is equal to viewer_id
    filtered_views = views[views['author_id']==views['viewer_id']]
    
    # Select the distinct author_ids
    result = filtered_views[['author_id']].drop_duplicates()
    
    # Sort the result by author_id in ascending order
    result = result.sort_values(by='author_id').reset_index(drop=True)
    # Rename the column to 'id' as per the required output format
    result.columns = ['id']
    
    return result
