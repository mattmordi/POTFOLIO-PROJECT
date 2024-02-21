
select *
from Potfolioproject.dbo.[covid death]
order by 3,4



--select *
--from Potfolioproject.dbo.[covid vaccination]
--order by 3,4


--select Data that we are going to be using


select location, Date, total_cases, new_cases, total_deaths, population_density
from Potfolioproject.dbo.[covid death]
order by 1,2

--looking at total_cases vs total_deaths


Select Location, date, total_cases, total_deaths, (CONVERT(float, total_deaths) / NULLIF(CONVERT(float, total_cases), 0))*100 as DeathPercentage
from Potfolioproject.dbo.[covid death]
where location like '%states%'
order by 1,2


--looking at the total_cases vs population

Select Location, date, total_cases, population_density, (total_cases/population_density)*100 as DeathPercentage
from Potfolioproject.dbo.[covid death]
where location like '%states%'
order by 1,2


--looking at countries with highest infection rate compare to population

Select Location, population_density, max(total_cases) as highestinfectioncount, max(total_cases/population_density)*100 as percentagepopupltioninfected
from Potfolioproject.dbo.[covid death]
where location like '%asia%'
group by location, population_density
order by percentagepopupltioninfected desc




--showin the countries with the highest death count per population

Select continent, max(cast(total_deaths as int) as totaldeathcount
from Potfolioproject.dbo.[covid death]
--where location like '%states%'
where continent is not null
group by continent
order by totaldeathcount desc


--showing the continent with the highest death count per population


Select continent, max(total_deaths) as totaldeathcount
from Potfolioproject.dbo.[covid death]
--where location like '%states%'
where continent is not null
group by continent
order by totaldeathcount desc

--global numbers

Select  date, sum(new_cases), sum(new_deaths),SUM(new_deaths) as total_deaths 
from Potfolioproject.dbo.[covid death]
--where location like '%states%'
where continent is not null
group by date
order by 1,2

--looking At total population vs vaccination

select *
from Potfolioproject.dbo.[covid death] dea
join Potfolioproject.dbo.[covid vaccination] vac
     on dea.location = vac.location
	 and dea.date =vac.date


select dea.continent, dea.location, dea.date, dea.population_density, vac.F9
from Potfolioproject.dbo.[covid death] dea
join Potfolioproject.dbo.[covid vaccination] vac
     on dea.location = vac.location
	 and dea.date =vac.date
	 where dea.continent is not null
	 order by 2,3




	






