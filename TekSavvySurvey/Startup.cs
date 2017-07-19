using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TekSavvySurvey.Startup))]
namespace TekSavvySurvey
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
