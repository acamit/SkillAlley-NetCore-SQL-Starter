using Microsoft.EntityFrameworkCore;

namespace SkillAlleyNetCoreSQLStarter.Data
{
    public class ApplicationDbContext : DbContext
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }
        public DbSet<User> Users { get; set; }
        public DbSet<Weather> Weather { get; set; }
    }
}
