import pandas as pd

def article_views(views: pd.DataFrame) -> pd.DataFrame:
    # Filter rows where author_id is equal to viewer_id
    filtered_views = views[views['author_id'] == views['viewer_id']]
    
    # Use .unique() to get unique author_ids
    unique_authors = filtered_views['author_id'].unique()
    
    # Convert the unique author_ids to a DataFrame
    result = pd.DataFrame(unique_authors, columns=['id'])
    
    # Sort the result by author_id in ascending order
    result = result.sort_values(by='id').reset_index(drop=True)
    
    return result
