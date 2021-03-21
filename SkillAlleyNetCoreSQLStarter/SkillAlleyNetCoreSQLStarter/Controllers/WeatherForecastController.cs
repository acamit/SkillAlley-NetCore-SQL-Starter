using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using SkillAlleyNetCoreSQLStarter.Data;
using System;
using System.Collections.Generic;
using System.Linq;

namespace SkillAlleyNetCoreSQLStarter.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class WeatherForecastController : ControllerBase
    {
        private readonly ILogger<WeatherForecastController> _logger;
        private readonly ApplicationDbContext _dbContext;

        public WeatherForecastController(ILogger<WeatherForecastController> logger, ApplicationDbContext dbContext)
        {
            _logger = logger;
            _dbContext = dbContext;
        }

        [HttpGet]
        public IActionResult ShowAllRecords() {
            var result = _dbContext.Weather.ToList();
            return Ok(result);
        }
    }
}
