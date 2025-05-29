// entry/src/main/ets/router/Router.ets
import { LoginPage } from '../pages/Login';
import { HomePage } from '../pages/Home';

// 定义路由项类型
interface RouteItem {
  path: string;
  component:  any; // 或更精确的类型：typeof LoginPage | typeof HomePage
}

export const routes: RouteItem[] = [  // 显式声明类型
  {
    path: 'pages/Login',
    component: LoginPage
  },
  {
    path: 'pages/Home',
    component: HomePage
  }
];