const rootRoute = "/";

const OverviewPageDisplayName = "Overview";
const OverViewPageRoute = '/overview';

const DriversPageDisplayName = "Drivers";
const DriversPageRoute = '/drivers';

const ClientsPageDisplayName = "Clients";
const ClientPageRoute = '/clients';

const AuthenticationPageDisplayName = "Log out";
const AuthenticationPageRoute = '/auth';

class MenuItem{
  final String? name;
  final String? route;

  MenuItem(this.name,this.route);
}

List<MenuItem> sideMenuItems = [
  MenuItem(OverviewPageDisplayName, OverViewPageRoute),
  MenuItem(DriversPageDisplayName, DriversPageRoute),
  MenuItem(ClientsPageDisplayName, ClientPageRoute),
  MenuItem(AuthenticationPageDisplayName, AuthenticationPageRoute)
];