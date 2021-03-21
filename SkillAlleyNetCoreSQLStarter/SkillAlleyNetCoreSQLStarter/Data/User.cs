using System.ComponentModel.DataAnnotations;

namespace SkillAlleyNetCoreSQLStarter.Data
{
    public class User
    {
        [Key]
        public long Id { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string Phone { get; set; }
    }
}
