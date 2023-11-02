import React from "react";
import './Ve.css';

import 'bootstrap/dist/css/bootstrap.min.css';

const Ve = () => {
    return (
        <div className="col-md-10 main">
        <div className="container mt-md-6">
          <div className="navbar d-flex justify-content-between align-items-center">
            <h2 className="main-name mb-0">Thông tin vé</h2>
            {/* Actions: Đổi mật khẩu và Xem thêm thông tin */}
            <div className="dropdown">
              <a className="d-flex align-items-center dropdown-toggle" href="#" role="button" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i className="bi bi-person-circle" /> 
              </a>
              {/* Dropdown menu */}
              <div className="dropdown-menu" aria-labelledby="userDropdown">
                <a className="dropdown-item" href="password_KhachHang.html">Đổi mật khẩu</a>
                <a className="dropdown-item" href="profile_KhachHang.html">Xem thêm thông tin</a>
              </div>
            </div>
          </div>
          {/*thanh tìm kiếm với bộ lọc*/}
          <div className="find mt-5">
            <div className="d-flex w-100 justify-content-start align-items-center">
              <i className="bi bi-search" />
              <span className="first">
                <input className="form-control" placeholder="Tìm kiếm ..." />
              </span>
              <span className="second">Filters <i className="bi bi-chevron-compact-down" /></span>
            </div>
          </div>
          <table className="table table-bordered">
            <thead>
              <tr>
                <th />
                <th>T_ID</th>
                <th>CCCD</th>
                <th>Name</th>
                <th>Fly_ID</th>
                <th>Kg_ID</th>
                <th>Seat_ID</th>
                <th>Food_ID</th>
                <th>Ticket_Price</th>
                <th>Mail</th>
                <th>Dis_ID</th>
              </tr>
            </thead>
            <tbody>
              {/* Table content goes here */}
              <tr>
                <td contentEditable="true" className="choose">
                  <input className="form-check-input" type="checkbox" />
                </td>
                <td contentEditable="true" className="editable_T_ID_1">T001</td>
                <td contentEditable="true" className="editable_CCCD_1">012345678</td>
                <td contentEditable="true" className="editable_Name_1">Nguyễn Văn Bay Bi</td>
                <td contentEditable="true" className="editable_Fly_ID_1">F009</td>
                <td contentEditable="true" className="editable_Kg_ID_1">K50</td>
                <td contentEditable="true" className="editable_Seat_ID_1">D09</td>
                <td contentEditable="true" className="editable_Food_ID_1">FD07</td>
                <td contentEditable="true" className="editable_Ticket_Price_1">700000</td>
                <td contentEditable="true" className="editable_Email_1">Conmeo@gmail.com</td>
                <td contentEditable="true" className="editable_Dis_ID_1">D01</td>
              </tr>
              <tr>
                <td contentEditable="true" className="choose">
                  <input className="form-check-input" type="checkbox" />
                </td>
                <td contentEditable="true" className="editable_T_ID_1">T001</td>
                <td contentEditable="true" className="editable_CCCD_1">012345678</td>
                <td contentEditable="true" className="editable_Name_1">Nguyễn Văn Bay Bi</td>
                <td contentEditable="true" className="editable_Fly_ID_1">F009</td>
                <td contentEditable="true" className="editable_Kg_ID_1">K50</td>
                <td contentEditable="true" className="editable_Seat_ID_1">D09</td>
                <td contentEditable="true" className="editable_Food_ID_1">FD07</td>
                <td contentEditable="true" className="editable_Ticket_Price_1">700000</td>
                <td contentEditable="true" className="editable_Email_1">Conmeo@gmail.com</td>
                <td contentEditable="true" className="editable_Dis_ID_1">D01</td>
              </tr>
              <tr>
                <td contentEditable="true" className="choose">
                  <input className="form-check-input" type="checkbox" />
                </td>
                <td contentEditable="true" className="editable_T_ID_1">T001</td>
                <td contentEditable="true" className="editable_CCCD_1">012345678</td>
                <td contentEditable="true" className="editable_Name_1">Nguyễn Văn Bay Bi</td>
                <td contentEditable="true" className="editable_Fly_ID_1">F009</td>
                <td contentEditable="true" className="editable_Kg_ID_1">K50</td>
                <td contentEditable="true" className="editable_Seat_ID_1">D09</td>
                <td contentEditable="true" className="editable_Food_ID_1">FD07</td>
                <td contentEditable="true" className="editable_Ticket_Price_1">700000</td>
                <td contentEditable="true" className="editable_Email_1">Conmeo@gmail.com</td>
                <td contentEditable="true" className="editable_Dis_ID_1">D01</td>
              </tr>
              <tr>
                <td contentEditable="true" className="choose">
                  <input className="form-check-input" type="checkbox" />
                </td>
                <td contentEditable="true" className="editable_T_ID_1">T001</td>
                <td contentEditable="true" className="editable_CCCD_1">012345678</td>
                <td contentEditable="true" className="editable_Name_1">Nguyễn Văn Bay Bi</td>
                <td contentEditable="true" className="editable_Fly_ID_1">F009</td>
                <td contentEditable="true" className="editable_Kg_ID_1">K50</td>
                <td contentEditable="true" className="editable_Seat_ID_1">D09</td>
                <td contentEditable="true" className="editable_Food_ID_1">FD07</td>
                <td contentEditable="true" className="editable_Ticket_Price_1">700000</td>
                <td contentEditable="true" className="editable_Email_1">Conmeo@gmail.com</td>
                <td contentEditable="true" className="editable_Dis_ID_1">D01</td>
              </tr>
              <tr>
                <td contentEditable="true" className="choose">
                  <input className="form-check-input" type="checkbox" />
                </td>
                <td contentEditable="true" className="editable_T_ID_1">T001</td>
                <td contentEditable="true" className="editable_CCCD_1">012345678</td>
                <td contentEditable="true" className="editable_Name_1">Nguyễn Văn Bay Bi</td>
                <td contentEditable="true" className="editable_Fly_ID_1">F009</td>
                <td contentEditable="true" className="editable_Kg_ID_1">K50</td>
                <td contentEditable="true" className="editable_Seat_ID_1">D09</td>
                <td contentEditable="true" className="editable_Food_ID_1">FD07</td>
                <td contentEditable="true" className="editable_Ticket_Price_1">700000</td>
                <td contentEditable="true" className="editable_Email_1">Conmeo@gmail.com</td>
                <td contentEditable="true" className="editable_Dis_ID_1">D01</td>
              </tr>
            </tbody>
          </table>
          {/*3 nut bam*/}
          <div className="d-flex justify-content-end my-3">
            <button className="btn btn-primary mr-2" id="btnThem">Thêm</button>
            <button className="btn btn-danger mr-2" id="btnXoa">Xóa</button>
            <button className="btn btn-warning" id="btnSua">Sửa</button>
          </div>
          <ul className="pagination justify-content-center">
            <li className="page-item disabled">
              <a className="page-link" href="#" tabIndex={-1}>Previous</a>
            </li>
            <li className="page-item"><a className="page-link" href="#">1</a></li>
            <li className="page-item"><a className="page-link" href="#">2</a></li>
            <li className="page-item"><a className="page-link" href="#">3</a></li>
            <li className="page-item"><a className="page-link" href="#">4</a></li>
            <li className="page-item"><a className="page-link" href="#">5</a></li>
            <li className="page-item">
              <a className="page-link" href="#">Next</a>
            </li>
          </ul>
        </div>
      </div>
      
    );
}
export default Ve;