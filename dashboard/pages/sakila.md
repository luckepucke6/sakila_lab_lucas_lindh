# Sakila Dashboard

## Top customers by spending

### Här analyserar jag vilka kunder som genererar mest revenue.

```sql top_customers
select * from sakila.top_customers;
```

<BarChart
    data={top_customers}
    title="Top customers"
    x=name
    y=total_spent
/>

## Revenue per category

### Vilka kategorier står för messt intäkter?

```sql revenue_per_category
select * from sakila.revenue_per_category;
```
<ECharts
  config={{
    tooltip: {
      formatter: params => {
        const formatNumber = (n) => {
          if (n >= 1_000_000) return (n / 1_000_000).toFixed(1) + "M";
          if (n >= 1_000) return (n / 1_000).toFixed(1) + "K";
          return n.toFixed(0);
        };
        const value = formatNumber(params.value);
        const percent = params.percent.toFixed(1);
        return `${params.name}: ${value} (${percent}%)`;
      }
    },
    series: [
      {
        type: 'pie',
        radius: '90%',
        label: {
          position: 'outer',
          formatter: d => d.name,
          alignTo: 'labelLine',
          bleedMargin: 10
        },
        labelLine: {
          length: 25,
          length2: 10,
          smooth: true
        },
        data: revenue_per_category.map(row => ({
          name: row.category,
          value: row.total_revenue
        }))
      }
    ]
  }}
/>

<div style="height:100px;"></div>

# Film characteristics

## Rating distribution

### Vilka ratings är vanligast?

```sql rating_distribution
select * from sakila.rating_distribution
```
<BarChart
    data={rating_distribution}
    x=rating
    y=amount
    swapXY=true
/>

## Longest films

### Visar de längsta filmer i Sakila databasen.

```sql longest_films
select * from sakila.longest_films
```

<DataTable data={longest_films} />

<div style="height:100px;"></div>

# Rentals (Movies and Categories)

## Most rented movies

### Här ser jag vilka filmer som är populärast.

```sql most_rentals_movies
select * from sakila.most_rentals_movies
```
<BarChart
    data={most_rentals_movies}
    x=title
    y=sum_rental
    swapXY=true
/>

## Most rented categories

### Här ser jag vilka kategorier som är populärast.
```sql most_rentals_category
select * from sakila.most_rentals_category
```
<BarChart
    data={most_rentals_category}
    x=name
    y=sum_rental
    swapXY=true
/>

<div style="height:100px;"></div>

# Geographic insights

## Most rentals per country

### Vilka länder hyr flest filmer?

```sql most_rentals_per_country
select * from sakila.most_rentals_per_country
```
<BarChart
    data={most_rentals_per_country}
    x=country
    y=amount
/>

## Cities with most customers

### Vilka städer har flest kunder?

```sql cities_with_most_customers
select * from sakila.cities_with_most_customers
```
<BarChart
    data={cities_with_most_customers}
    x=city
    y=customer_amount
    swapXY=true
/>