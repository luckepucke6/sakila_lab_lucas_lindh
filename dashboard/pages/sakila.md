# Sakila

### Top customers by spending

```sql top_customers
select * from sakila.top_customers;
```

<BarChart
    data={top_customers}
    title="Top customers"
    x=name
    y=total_spent
/>

### Revenue per category

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



## Rating distribution

```sql rating_distribution
select * from sakila.rating_distribution
```
<BarChart
    data={rating_distribution}
    title="Rating distribution"
    x=rating
    y=amount
    swapXY=true
/>

## Longest films

```sql longest_films
select * from sakila.longest_films
```

<DataTable data={longest_films} />

## Most rentals movies

```sql most_rentals_movies
select * from sakila.most_rentals_movies
```
<BarChart
    data={most_rentals_movies}
    title="Most rentals movies"
    x=title
    y=sum_rental
    swapXY=true
/>

## Most rentals categorys

```sql most_rentals_category
select * from sakila.most_rentals_category
```
<BarChart
    data={most_rentals_category}
    title="Most rentals category"
    x=name
    y=sum_rental
    swapXY=true
/>