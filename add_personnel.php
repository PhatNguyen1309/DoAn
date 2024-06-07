<?php include("header.php") ?>

    <link href="css/style2.css" rel="stylesheet">
    <section class="content">
        <div class="container-fluid">
               <!-- Input Group -->
        <form action="add_personnel_query.php" method="POST" enctype="multipart/form-data" name="form1" id="form1">
            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class = "panel panel-primary">
                            <div class = "panel-heading">
                                <h4>Thêm thông tin nhân viên</h4>
                            </div>
                        </div>
                        <div class="body">
                        <div  class="container-fluid" style="background-color: #ddd;">
                            <div class="demo-masked-input">
                                <div class="row clearfix">
                                    <div class="col-md-12">
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Tên:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_firstname" placeholder="Tên">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Đệm:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_middlename" placeholder="Tên đệm">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Họ:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_lastname" placeholder="Họ">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Email:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_suffix" placeholder="nguyenvana@gmail.com">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Giới tính:
                                            </span>
                                                <select class="form-control show-tick" name="per_gender">
                                                    <option></option>
                                                    <option>Nam</option>
                                                    <option>Nữ</option>
                                                </select>
                                        </div>

                                    </div>
                                      <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trạng thái:
                                            </span>
                                                <select class="form-control show-tick" name="per_status">
                                                    <option></option>
                                                    <option>Độc thân</option>
                                                    <option>Kết hôn</option>
                                                    <option>Li thân</option>
                                                    <option>Góa</option>
                                                </select>
                                        </div>
                                        
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Địa chỉ:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_address" placeholder="Địa chỉ nhà của mình đang ở và sinh sống">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-8">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Nơi sinh:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="per_place_of_birth" placeholder="Nơi bạn được sinh ra">
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                    <div class="input-group">
                                            <span class="input-group-addon">
                                                Ngày sinh:
                                            </span>
                                            <div class="form-line">
                                                <input type="date" class="form-control" name="per_date_of_birth" placeholder="">
                                            </div>
                                        </div>
                                    </div>
                                    
                                     <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Ngành:
                                            </span>
                                                <select class="form-control show-tick" name="per_position"> 
                                                <option></option>
                                                <?php
                                                include("connect.php"); 
                                                $pos1 = $con->prepare("SELECT * FROM tbl_position ORDER BY pos_id");
                                                $pos1->execute();
                                                while($row1 = $pos1->fetch()) {
                                                        $pos_name = $row1['pos_name'];
                                                ?>
                                                    <option value="<?php echo $row1['pos_id']; ?>"><?php echo $row1['pos_name']; ?></option>
                                                <?php } ?>
                                                </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Khoa:
                                            </span>
                                                <select class="form-control show-tick" name="dept_id"> 
                                                <option></option>
                                                <?php
                                                include("connect.php"); 
                                                $department = $con->prepare("SELECT * FROM tbl_department ORDER BY dept_id");
                                                $department->execute();
                                                while($row1 = $department->fetch()) {
                                                        $dept_name = $row1['dept_name'];
                                                ?>
                                                    <option value="<?php echo $row1['dept_id']; ?>"><?php echo $row1['dept_name']; ?></option>
                                                <?php } ?>
                                                </select>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Học vấn:
                                            </span>
                                                <select class="form-control show-tick" name="rank_name">
                                                <option></option>
                                                     <?php
                                                include("connect.php"); 
                                                $faculty_rank = $con->prepare("SELECT * FROM tbl_academic_rank ORDER BY rank_id");
                                                $faculty_rank ->execute();
                                                while($row102 = $faculty_rank->fetch()) {
                                                        $rank_name = $row102['rank_name'];
                                                ?>
                                                    <option value="<?php echo $row102['rank_id']; ?>"><?php echo $row102['rank_name']; ?></option>
                                                <?php } ?>
                                                </select>                   
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Phụ trách:
                                            </span>
                                                <select class="form-control show-tick" name="gass_name">
                                                <option></option>
                                                     <?php
                                                include("connect.php"); 
                                                $faculty1_rank = $con->prepare("SELECT * FROM tbl_gass_rank ORDER BY gass_id");
                                                $faculty1_rank ->execute();
                                                while($row101 = $faculty1_rank->fetch()) {
                                                        $gass_name = $row101['gass_name'];
                                                ?>
                                                    <option value="<?php echo $row101['gass_id']; ?>"><?php echo $row101['gass_name']; ?></option>
                                                <?php } ?>
                                                </select>                   
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trạng thái nhân viên:
                                            </span>
                                                <select class="form-control show-tick main" id = "privileges" name="per_designation">
                                                    <option></option>
                                                    <option value='ChinhThuc'>Nhân viên chính thức</option>
                                                    <option value='Khac'>Nhân sự từ cơ sở khác</option>
                                                    <option value='ThoiVu'>Nhân viên thời vụ</option>
                                                    <option value='ThucTap'>Thực tập sinh</option>
                                                </select>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Cơ sở:
                                            </span>
                                                <select class="form-control show-tick" name="per_campus">
                                                    <option></option>
                                                    <option>Cơ sở chính</option>
                                                    <option>Cơ sở 2</option>
                                                    <option>Cơ sở 3</option>
                                                    <option>Cơ sở 4</option>
                                                </select>
                                        </div>
                                    </div>
                                    <div class="col-md-5">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                            Ngày vào làm:
                                            </span>
                                                <div id="sandbox-container" class="form-line">
                                                    <input type="Date" class="form-control" name="per_date_of_original_appointment">
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">                                    
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                    Số điện thoại:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="per_contact_no" id="contact_no" maxlength="22">
                                                </div>
                                        </div>
                                    </div>
                                     <div class="col-md-4">                                    
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                    Mã định danh:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control " name="per_plantilla_no" >
                                                </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Kinh nghiệm làm việc:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="per_eligibility" placeholder="Điền kinh nghiệm làm việc vào">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                CCCD:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control key" name="per_tin_no" id="tin" placeholder="Ex: XXX-XXX-XXX" id = "tin">
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Bảo hiểm:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control key" name="per_gsis_bp_no" id="gsis" placeholder="Ex: XXX-XXX-XXX">
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Quỷ hợp tác phát triển tương lai:
                                            </span>
                                                <div class="form-line">
                                                    <input type="text" class="form-control" name="per_pagibig_no" id="pagibig" maxlength="22" placeholder="e.g. XXX-XXX-XXX">
                                                </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <h3 class="page-header">Trình độ học vấn</h3> 
                                    </div>                
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Bằng Tiếng Anh:
                                            </span>
                                                <select class="form-control show-tick" name="bs_name">
                                                    <option></option>
                                                    <option value="IELTS">IELTS</option>
                                                    <option value="TOEIC">TOEIC</option>
                                                    <option value="TOEFL">TOEFL</option>
                                                    <option value="Cambridge">Cambridge</option>
                                                </select>
                                        </div>
                                    </div>
                                     <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Thời hạn đến năm:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="bs_year" placeholder="YYYY">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trường đã học:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="bs_school" placeholder="Trường của bạn đã học">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Bằng tiếng Đức:
                                            </span>
                                             <select class="form-control show-tick" name="ms_name">
                                                <option></option>
                                                <option value="A1">A1</option>
                                                <option value="A2">A2</option>
                                                <option value="B1">B1</option>
                                                <option value="B2">B2</option>
                                                <option value="C1">C1</option>
                                                <option value="C2">C2</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Dựa theo tiêu chuẩn:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="ms_with_unit" placeholder="Tiêu chuẩn nào ?">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Thời hạn đến năm:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="ms_year" placeholder="YYYY">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trường đã học:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="ms_school" placeholder="Trường của bạn đã học">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Bằng tiếng Trung:
                                            </span>
                                            <select class="form-control show-tick" name="dr_name">
                                                <option></option>
                                                <option value="HSK1">HSK1</option>
                                                <option value="HSK2">HSK2</option>
                                                <option value="HSK3">HSK3</option>
                                                <option value="HSK4">HSK4</option>
                                                <option value="HSK5">HSK5</option>
                                                <option value="HSK6">HSK6</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Dựa theo tiêu chuẩn:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="dr_with_unit" placeholder="Dựa theo tiêu chuẩn nào ?">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Thời hạn đến năm:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="dr_year" placeholder="YYYY">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trường đã học:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="dr_school" placeholder="Trường của bạn đã học">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-9">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Bằng tiếng Nhật:
                                            </span>
                                            <select class="form-control show-tick" name="other_degree">
                                                <option></option>
                                                <option value="N1">N1</option>
                                                <option value="N2">N2</option>
                                                <option value="N3">N3</option>
                                                <option value="N4">N4</option>
                                                <option value="N5">N5</option>
                                            </select>
                                        </div>
                                    </div>  
                                    <div class="col-md-3">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Thời hạn đến năm:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="other_year" placeholder="YYYY">
                                            </div>
                                        </div>
                                    </div>
                                     <div class="col-md-12">
                                        <div class="input-group">
                                            <span class="input-group-addon">
                                                Trường đã học:
                                            </span>
                                            <div class="form-line">
                                                <input type="text" class="form-control" name="other_school" placeholder="Trường của bạn đã học">
                                            </div>
                                        </div>
                                    </div>                             
                                </div>  
                                    <input type="submit" name="save" value="SAVE" class="btn btn-success" style ="float:right; margin-top: -30px;">                   
                                </div>
                            </div>
                        </div>
                    </div>
                    </div>

                </div>
            </div>

        </form>
            <!-- #END# Input Group -->           
        </div>
    </section>
<script src="plugins/js/formatter.js"></script>
<script src="js/jquery.min.js"></script>
  <?php include("script.php"); ?>
    <script>
    var contanct_no = new Formatter (document.getElementById('contact_no'), {
  'pattern': '+84 {{999}}-{{999}}-{{999}}',
  'persistent': true
  });
    var pagibig = new Formatter (document.getElementById('pagibig'), {
  'pattern': '{{999}}-{{999}}-{{999}}',
  'persistent': true
  });
     var tin = new Formatter (document.getElementById('tin'), {
  'pattern': '{{999}}-{{999}}-{{999}}',
  'persistent': true
});
     var gsis = new Formatter (document.getElementById('gsis'), {
  'pattern': '{{999}}-{{999}}-{{999}}',
  'persistent': true
});
</script>
    <script>
        function showImage(src,target) {
          var fr=new FileReader();
          // when image is loaded, set the src of the image where you want to display it
          fr.onload = function(e) { target.src = this.result; };
          src.addEventListener("change",function() {
            // fill fr with image data    
            fr.readAsDataURL(src.files[0]);
          });
        }

        var src = document.getElementById("src");
        var target = document.getElementById("target");
        showImage(src,target);
    </script>
    
<script type="">
    $(function(){
  
  $("select.main").on("change", function(){
    //remove active
    $("select.models.active").removeClass("active");
    //check if select vlass exists..if it does show it
    var subList = $("select.models."+$(this).val());
    if (subList.length){
      //it does! show it by adding active class to it
      subList.addClass("active");
    }
  });
  
});
</script>
<script type="">
    var Privileges = jQuery('#privileges');
    var select = this.value;
    Privileges.change(function () {
        if ($(this).val() == '') {
            $('.resources').show();
        }
        else $('.resources').hide();
    });
</script>