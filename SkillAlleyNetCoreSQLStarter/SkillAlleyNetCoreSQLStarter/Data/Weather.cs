using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace SkillAlleyNetCoreSQLStarter.Data
{
    public class Weather
    {
        [Key]
        public long Id { get; set; }
        public DateTime Day { get; set; }
        public double TemperatureC { get; set; }
        public string Summary { get; set; }
    }

}
