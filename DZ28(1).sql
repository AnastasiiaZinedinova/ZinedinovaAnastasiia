use `hillel-qauto`;
select name from user_profiles where name like "%am%";
select carBrandId, title, max(mileage) from cars 
inner join car_brands on cars.carBrandId = car_brands.id 
where carBrandId = 1;
select car_brands.id, count(car_models.id) from car_models
inner join car_brands on car_models.carBrandId = car_brands.id
where car_brands.title in ("Audi", "BMW") group by car_brands.title;
select car_brands.title, car_models.title, count(user_profiles.id) from user_profiles
inner join cars on user_profiles.id = cars.userId
inner join car_models on cars.carModelId = car_models.id
inner join car_brands on car_models.carBrandId = car_brands.id
group by car_brands.title, car_models.title;
select user_profiles.id, user_profiles.name from user_profiles
inner join cars on cars.userid = user_profiles.Id
where cars.id is not null;