
import pandas as pd 
import numpy as np

def calculate_demographic_data(print_data= True):
  print("\n")
  # Read data from file
  df = pd.read_csv("adults.csv")

  # print( df.info() )
  # print( df.describe() )
  # print( df.columns )

  
  # How many people of each race are represented in this dataset?     
  # [27816, 3124, 1039, 311, 271]
  race_count = df['race'].value_counts().to_numpy()

  # What is the average age of men?     
  # 39.4
  average_age_men = round( df[ df['sex'] =='Male']['age'].mean() ,1)

  # What is the percentage of people who have a Bachelor's degree?      
  # 16.4 
  percentage_bachelors = (round( df[ df['education'] =='Bachelors'].count()['education'] / df['education'].count() , 3)*100)





  # What percentage of people with advanced education (Bachelors, Masters, or Doctorate) make more than 50K?      
  # 46.5  (somehow ?)
  # higher_education_rich=
  higher_education = df[ df['education'].isin(['Bachelors' , 'Masters' , 'Doctorate']) & (df['salary'] == '>50K') ].count()['education']

  lower_education = df[ ~(df['education'].isin(['Bachelors' , 'Masters' , 'Doctorate'] ) ) & (df['salary'] == '>50K') ].count()['education']
  total= df[df['salary'] == '>50K'].count()['education']

  # Expected different value for percentage without higher education that earn >50K.
  # 17.4
  # lower_education_rich=

  higher_education_rich = round( (higher_education / total)*100, 2)
  lower_education_rich = round( (lower_education / total)*100, 2)
  
  

  # What is the minimum number of hours a person works per week?
  # 1
  min_work_hours = df['hours-per-week'].min()


  # What percentage of the people who work the minimum number of hours per week have a salary of more than 50K?
  # 10
  num_min_workers = None
  rich_percentage = None 
  rich_percentage = round( df[['salary','hours-per-week']].value_counts(normalize=True).iloc[1], 1)*100


  # What country has the highest percentage of people that earn >50K and what is that percentage?
  # Expected different value for highest earning country
  # Iran 
  # Expected different value for highest earning country percentage. 
  # 41.9


  high_salary_df = df[df['salary'] == '>50K']
  country_percentages = (high_salary_df.groupby('native-country')
                       .size()
                       .sort_values(ascending=False)
                       .reset_index(name='count')
                       .assign(pct=lambda x: (x['count'] / x['count'].sum()) * 100))
  
  highest_earning_country = country_percentages.head(1)['native-country'].values[0]
  highest_earning_country_percentage = round( country_percentages.head(1)['pct'].values[0], 2)





  # Identify the most popular occupation for those who earn >50K in India.
  # Prof-specialty
  top_IN_occupation = df[ (df['native-country'] =='India') & ( df['salary'] =='>50K' )]
  top_IN_occupation = top_IN_occupation['occupation'].values[0]







  if print_data:
      print("Number of each race:\n", race_count) 
      print("Average age of men:", average_age_men)
      print(f"Percentage with Bachelors degrees: {percentage_bachelors:.1f}%")
      print(f"Percentage with higher education that earn >50K: {higher_education_rich}%")        
      print(f"Percentage without higher education that earn >50K: {lower_education_rich}%")
      print(f"Min work time: {min_work_hours} hours/week")
      print(f"Percentage of rich among those who work fewest hours: {rich_percentage}%")
      print("Country with highest percentage of rich:", highest_earning_country)
      print(f"Highest percentage of rich people in country: {highest_earning_country_percentage}%")        
      print("Top occupations in India:", top_IN_occupation)
      print("\n")

  return {
    'race_count': race_count,
    'average_age_men': average_age_men,
    'percentage_bachelors': percentage_bachelors,      
    'higher_education_rich': higher_education_rich,        
    'lower_education_rich': lower_education_rich,
    'min_work_hours': min_work_hours, 
    'rich_percentage': rich_percentage,
    'highest_earning_country': highest_earning_country,
    'highest_earning_country_percentage': highest_earning_country_percentage,     
    'top_IN_occupation': top_IN_occupation
  }
  


calculate_demographic_data()
