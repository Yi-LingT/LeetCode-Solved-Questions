import pandas as pd

def reformat_table(department: pd.DataFrame) -> pd.DataFrame:
    # Use pivot to reshape the DataFrame
    pivoted_df = department.pivot(index='id',columns='month',values='revenue')
    
    # Rename the columns to include "_Revenue"
    pivoted_df.columns= [f"{month}_Revenue" for month in pivoted_df.columns]
    
    # Ensure the columns are ordered from Jan to Dec
    month_order = ["Jan_Revenue", "Feb_Revenue", "Mar_Revenue", "Apr_Revenue",
                   "May_Revenue", "Jun_Revenue", "Jul_Revenue", "Aug_Revenue",
                   "Sep_Revenue", "Oct_Revenue", "Nov_Revenue", "Dec_Revenue"]

    # Reorder columns and fill missing columns with NaN
    pivoted_df =pivoted_df.reindex(columns=month_order)
    
    # Reset the index to convert 'id' from index to a column
    pivoted_df = pivoted_df.reset_index()

    return pivoted_df
