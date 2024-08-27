import pandas as pd

def sales_analysis(product: pd.DataFrame, sales: pd.DataFrame) -> pd.DataFrame:
    # Step 1: Filter the sales data to include only the sales in the first quarter of 2019
    first_quarter_sales = sales[
        (sales['sale_date']>='2019-01-01')&
        (sales['sale_date']<='2019-03-31')
    ]
    
    # Step 2: Find the product_ids that were sold in the first quarter of 2019
    first_quarter_product_ids = set(first_quarter_sales['product_id'].unique())

    # Step 3: Find the product_ids that were sold outside the first quarter of 2019
    outside_first_quarter_sales = sales[
        (sales['sale_date']<'2019-01-01') | 
        (sales['sale_date']>'2019-03-31')
    ]
    outside_first_quarter_product_ids = set(outside_first_quarter_sales['product_id'].unique())

    # Step 4: Find product_ids that were only sold in the first quarter of 2019
    only_first_quarter_product_ids =first_quarter_product_ids-outside_first_quarter_product_ids

    # Step 5: Filter the product DataFrame to include only these product_ids
    result = product[product['product_id'].isin(only_first_quarter_product_ids)]

    # Step 6: Select relevant columns to return
    result =result[['product_id','product_name']]

    return result
