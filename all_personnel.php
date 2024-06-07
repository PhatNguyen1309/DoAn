<?php 
include("header.php");
?>
 <section class="content">

        <div class="container-fluid">
            <!-- Exportable Table -->
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class = "panel panel-primary">
                            <div class = "panel-heading">
                                <h4>Tất cả nhân viên</h4>
                                <a href="add_personnel.php">
                                    <input type="button" value="Thêm nhân viên" class="print btn-default" style="margin-right: 80px; width: auto;">
                                </a>
                                <a href="print_all_campus.php">
                                    <input type="button" value="In" class="print">
                                </a>
                            </div>
                        </div>
                        <div id="print">
                            <div class = "scroll">
                            <div class="body">
                                <table id = "example" class = "stripe" cellspacing = "0" >
                                <thead>
                                    <tr>
                                        <td class="hidden">ID</td>
                                        <td>Họ Tên</td>
                                        <td>Chức vụ</td>
                                        <td>Bằng cấp</td>
                                        <td>Ngành</td>
                                        <td>Khoa</td>
                                        <td>Tuổi</td>
                                        <td>Giới tính</td>
                                        <td>Tình trạng</td>
                                        <td>Địa chỉ</td>
                                        <td>Ngày sinh</td>
                                        <td>Nơi sinh</td>
                                        <td>Số điện thoại</td>
                                        <td>Ngày vào làm</td>
                                        <td>Bằng tiếng Anh</td>
                                        <td>Bằng tiếng Đức</td>
                                        <td>Bằng tiếng Trung</td>
                                        <td>Bằng tiếng Nhật</td>
                                        <td>Số năm đã làm</td>
                                        <td>Kinh nghiệm</td>
                                        <td>Mã định danh</td>
                                        <td>Trạng thái nhân viên</td>
                                        <td>CCCD</td>
                                        <td>Quỹ hợp tác</td>
                                        <td>Bảo hiểm</td>
                                        <td>Cơ sở</td>
                                        <td>Action</td>
                                    </tr>
                                </thead>
                                <tbody>
                                
                                  <?php
                                    include('connect.php');
                                    $display = $con->prepare("SELECT * FROM tbl_personnel LEFT JOIN tbl_position ON tbl_personnel.pos_id =tbl_position.pos_id LEFT JOIN tbl_gass_rank ON tbl_personnel.gass_id = tbl_gass_rank.gass_id LEFT JOIN tbl_academic_rank ON tbl_personnel.rank_id = tbl_academic_rank.rank_id LEFT JOIN tbl_department ON tbl_personnel.dept_id = tbl_department.dept_id ORDER BY per_id ASC");
                                    $display->execute();
                                    $fetch = $display->fetchAll();                               

                                      foreach($fetch as $key => $row) { 
                                        $pos_id = $row['pos_id'];
                                        $gass_id = $row['gass_id'];
                                        $rank_id = $row['rank_id'];
                                        $bday = $row["per_date_of_birth"];
                                        $dooa = $row["per_date_of_original_appointment"];
                                        $date = new DateTime($bday);
                                        $date1 = new DateTime($dooa);
                                        $now = new DateTime();


                                        $difference = $date->diff($now)->format('%y');
                                        $length = $date1->diff($now)->format('%y');


                                  ?>
                                  <tr>
                                  <td class="hidden"><?php echo $row['per_id']; ?></td>
                                  <td><?php echo $row['per_lastname']." ".$row['per_middlename']." ".$row['per_firstname']; ?></td>
                                  <td values="<?php echo $row['gass_id']; ?>"><?php echo $row['gass_name']; ?></td>
                                  <td values="<?php echo $row['rank_id']; ?>"><?php echo $row['rank_name']; ?></td>
                                  <td values="<?php echo $row['pos_id']; ?>"><?php echo $row['pos_name']; ?></td>
                                  <td values="<?php echo $row['dept_id']; ?>"><?php echo $row['dept_name']; ?></td>
                                  <td><?php echo $difference;?></td>
                                  <td><?php echo $row['per_gender']; ?></td>
                                  <td><?php echo $row['per_status']; ?></td>
                                  <td><?php echo $row['per_address']; ?></td>
                                  <td><?php echo $row['per_date_of_birth']; ?></td>
                                  <td><?php echo $row['per_place_of_birth']; ?></td>
                                  <td><?php echo $row['per_contact_no']; ?></td>
                                  <td><?php echo $row['per_date_of_original_appointment']; ?></td>
                                  <td><?php echo $row['bs_name']; ?></td>
                                  <td><?php echo $row['ms_name']; ?></td>
                                  <td><?php echo $row['dr_name']; ?></td>
                                  <td><?php echo $row['other_degree']; ?></td>
                                  <td><?php echo $length?></td>
                                  <td><?php echo $row['per_eligibility']; ?></td>
                                  <td><?php echo $row['per_plantilla_no']; ?></td>
                                  <td><?php echo $row['per_designation']; ?></td>
                                  <td><?php echo $row['per_tin_no']; ?></td>
                                  <td><?php echo $row['per_pagibig_no']; ?></td>
                                  <td><?php echo $row['per_gsis_bp_no']; ?></td>
                                  <td><?php echo $row['per_campus'];?></td>
                                  <td>     
                                    <a class="btn btn-success btn-sm" href="edit_personnel.php?per_id=<?php echo $row['per_id']?>">
                                      <span class = "glyphicon glyphicon-pencil" aria-hidden = "true">Edit</span>
                                    </a>
                                    <a class="btn btn-danger btn-sm" href="delete_personnel.php?per_id=<?php echo $row['per_id']?>">
                                        <span class="glyphicon glyphicon-trash" aria-hidden="true">Remove</span>
                                    </a>                            
                                  </td>
                                </tr>                           
                                     <?php 
                                     } ?>
                                </tbody>
                            </table>
                        </div>
                      </div>
                    </div>
                </div>
             </div>
         </div>
    </div>
</section>

   <script>
    function printDiv() {
        //Get the HTML of div
        var divElements = document.getElementById("print").innerHTML;
        //Get the HTML of whole page
        var oldPage = document.body.innerHTML;
        //Reset the page's HTML with div's HTML only
        document.body.innerHTML = "<table></table>" + divElements;
        //Print Page
        window.print();
        //Restore orignal HTML
        document.body.innerHTML = oldPage;

    }
    </script>
<script src="plugins/js/jquery-1.js"></script>
<script src="plugins/js/jquery.dataTables.min.js"></script>
    <script>
        $(document).ready(function() {
    $('#example').DataTable();
} );
    </script>
<?php 
include("script.php");
?>