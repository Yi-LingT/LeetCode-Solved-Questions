import pandas as pd

#Step1: Define a Rounding Function
round2= lambda x: round(x+1e-9,2)

def queries_stats(queries: pd.DataFrame) -> pd.DataFrame:

#Step2: Calculate Quality and Poor Query Percentage
    queries['quality'] = queries['rating']/queries['position']
    queries['poor_query_percentage'] = (queries['rating']< 3)*100

#Step3: Group and Calculate the Average
    return queries.groupby('query_name')[['quality','poor_query_percentage']].mean().apply(round2).reset_index()



