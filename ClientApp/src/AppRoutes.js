import SearchPage from "./Components/Layouts/BookingMain/SearchPage";
import DefaultLayOut from "./Components/Layouts/DeafaultLayout/DefaultLayout";
import MainLayOut from "./Components/Layouts/MainLayout/MainLayOut";
import MainLayout_more from "./Components/Layouts/MainLayout_more/MainLayout_more";
import LayoutTicketReview from "./Components/Layouts/LayoutTicketReview/LayoutTicketReview";
import Luggage from "./Components/Pages/Lugage/Lugage";
import SeatReservation from "./Components/Pages/Food/Food";
import SeatBooking from "./Components/Pages/Seat/SeatBooking";
import TicketPage from "./Components/Pages/Ticket/TicketPage";
import TicketReview from "./Components/Pages/TicketReview/TicketReview";
import TicketInfo from "./Components/Pages/TicketInfo/TicketInfo";
import Login from "./Components/Pages/Login/Login";
import CancelPage from "./Components/Pages/CancelPage/CancelPage";
import MainLayoutLogin from "./Components/Layouts/MainLayoutLogin/MainLayoutLogin";
import SignUp from "./Components/Pages/SignUp/SignUp";
import SearchTicket from "./Components/Pages/SearchTicket/SearchTicket";
import TicketSeeMore from "./Components/Pages/TicketSeeMore/TicketSeeMore";
import Food from "./Components/Pages/Food/Food";
import Seat from "./Components/Pages/Seat/SeatBooking";
import AboutUs from "./Components/Pages/AboutUs/AboutUs";
import LayoutAboutUs from "./Components/Layouts/LayoutAboutUs/LayoutAboutUs";
import Payment from "./Components/Pages/Payment/Payment";
import Explore from "./Components/Pages/Explore/explore";
import KhachHang from "./Components/Pages/Admin/KhachHang/KhachHang";
import Refund from "./Components/Pages/Refund/Refund";
import Ve from "./Components/Pages/Admin/Ve/Ve";
import DoanhSo from "./Components/Pages/Admin/DoanhSo/DoanhSo";
import DoAn from "./Components/Pages/Admin/DoAn/DoAn";
import HanhLy from "./Components/Pages/Admin/HanhLy/HanhLy";
import MaGiamGia from "./Components/Pages/Admin/MaGiamGia/MaGiamGia";
import MayBay from "./Components/Pages/Admin/MayBay/MayBay";
import SanBay from "./Components/Pages/Admin/SanBay/SanBay";
import ChuyenBay from "./Components/Pages/Admin/ChuyenBay/ChuyenBay";
import MatKhau from "./Components/Pages/Admin/MatKhau/MatKhau";
import NhanVien from "./Components/Pages/Admin/NhanVien/NhanVien";
import CaNhan from "./Components/Pages/Admin/CaNhan/CaNhan";
import Sidebar from "./Components/Layouts/Sidebar/Sidebar";
import HomePage from "./Components/Pages/HomePage/HomePage";
import HomeLayout from "./Components/Layouts/HomeLayout/HomeLayout";
import AdminLayout from "./Components/Layouts/AdminLayout/AdminLayout";
import Hero from "./Components/Layouts/Hero/Hero";
import HeaderReview from "./Components/Layouts/HeaderReview/HeaderReview";

const AppRoutes = [
  
  {
        path: '/ticket-search',
        element: SearchPage,
        layout: DefaultLayOut
    },
    {
        path: '/ticket',
        element: TicketPage,
        layout: MainLayOut
    },
    {
        path: '/seat',
        element: Seat,
        layout: MainLayOut
    },
    {
        path: '/Food',
        element: Food,
        layout: MainLayOut
    },
    {
        path: '/luggage',
        element: Luggage,
        layout: MainLayOut
    },
    {
        path: '/seat',
        element: SeatBooking,
        layout: MainLayOut
    },
    {
        path: '/ticket-review',
        element: TicketReview,
        layout: LayoutTicketReview
    },
    {
        path: '/sign-up',
        element: SignUp,
        layout: MainLayoutLogin
    },
    {
        path: '/sign-in',
        element: Login,
        layout: MainLayoutLogin
    },
    {
        path: '/search-ticket',
        element: SearchTicket,
        layout: MainLayoutLogin
    },
    {
        path: '/ticket-info',
        element: TicketInfo,
        layout: LayoutTicketReview
    },
    {
        path: '/cancel-ticket',
        element: CancelPage,
        layout: MainLayoutLogin
    },
    {
        path: '/ticket-see-more',
        element: TicketSeeMore,
        layout: LayoutTicketReview
    },
    {
        path: '/about-us',
        element: AboutUs,
        layout: LayoutAboutUs
    },
    {
        path: '/payment',
        element: Payment,
        layout: MainLayOut
    },
    {
        path: '/explore',
        element: Explore,
        layout: LayoutTicketReview
    },
    
    {
        path: '/Refund',
        element: Refund,
        layout: MainLayoutLogin
    },
    {
        path: '/KhachHang',
        element: KhachHang,
        layout: Sidebar
    },
    {
        path: '/',
        element: HomePage,
        layout: HomeLayout
    },
    {
    path: '/DoanhSo',
        element: DoanhSo,
        layout: Sidebar
    },
    {
        path: '/KhachHang',
        element: KhachHang,
        layout: Sidebar
    },
    {
        path: '/Ve',
        element: Ve,
        layout: Sidebar
    },
    {
        path: '/ChuyenBay',
        element: ChuyenBay,
        layout: Sidebar
    },
    {
        path: '/DoAn',
        element: DoAn,
        layout: Sidebar
    },
    {
        path: '/SanBay',
        element: SanBay,
        layout: Sidebar
    },
    {
        path: '/HanhLy',
        element: HanhLy,
        layout: Sidebar
    },
    {
        path: '/MaGiamGia',
        element: MaGiamGia,
        layout: Sidebar
    },
    {
        path: '/MayBay',
        element: MayBay,
        layout: Sidebar
    },
    {
        path: '/MatKhau',
        element: MatKhau,
        layout: AdminLayout
    },
    {
        path: '/NhanVien',
        element: NhanVien,
        layout: AdminLayout
    },
    {
        path: '/CaNhan',
        element: CaNhan,
        layout: AdminLayout
    },

];

export default AppRoutes;
