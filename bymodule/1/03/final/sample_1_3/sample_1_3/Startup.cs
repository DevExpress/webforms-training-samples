using Microsoft.Owin;
using Owin;

[assembly: OwinStartup(typeof(sample_1_3.Startup))]

// Files related to ASP.NET Identity duplicate the Microsoft ASP.NET Identity file structure and contain initial Microsoft comments.

namespace sample_1_3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}