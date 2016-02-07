using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ProjectAirline.Startup))]
namespace ProjectAirline
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
