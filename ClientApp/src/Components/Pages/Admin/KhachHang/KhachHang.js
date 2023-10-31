import React from "react";
import './KhachHang.css';

const KhachHang = () => {
    return (
        <div className="col-md-10 main">
  <div className="container mt-md-6">
    <div className="navbar d-flex justify-content-between align-items-center">
      <h2 className="main-name mb-0">Khách hàng</h2>
      {/* Actions: Đổi mật khẩu và Xem thêm thông tin */}
      <div className="dropdown">
        <a className="d-flex align-items-center dropdown-toggle" href="#" role="button" id="userDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i className="bi bi-person-circle" /> 
        </a>
        {/* Dropdown menu */}
        <div className="dropdown-menu" aria-labelledby="userDropdown">
          <a className="dropdown-item" href="#">Đổi mật khẩu</a>
          <a className="dropdown-item" href="#">Xem thêm thông tin</a>
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
          <th>C_ID</th>
          <th>Num_ID</th>
          <th>Tên khách hàng</th>
          <th>Điểm tích lũy</th>
          <th>Email</th>
        </tr>
      </thead>
      <tbody>
        {/* Table content goes here */}
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
        </tr>
        <tr>
          <td contentEditable="true" className="choose">
            <input className="form-check-input" type="checkbox" />
          </td>
          <td contentEditable="true" className="editable_C_ID_1">C01</td>
          <td contentEditable="true" className="editable_Num_ID_1">012345678</td>
          <td contentEditable="true" className="editable_Ten_1">Nguyễn Văn Bay Bi</td>
          <td contentEditable="true" className="editable_Diem_1">0</td>
          <td contentEditable="true" className="editable_Email_1">Conca@gmail.com</td>
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
export default KhachHang;