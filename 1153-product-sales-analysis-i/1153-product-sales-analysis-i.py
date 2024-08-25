import pandas as pd

def sales_analysis(sales: pd.DataFrame, product: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Merge the Sales and Product tables on product_id
    merged_data = pd.merge(product, sales, on='product_id')

    # Step 2: Select the relevant columns: product_name, year, and price
    result = merged_data[['product_name', 'year', 'price']]
    
    return result
