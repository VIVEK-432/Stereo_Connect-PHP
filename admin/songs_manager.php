<?php
require('top.inc.php');

if(isset($_GET['type']) && $_GET['type']!=''){
	$type=get_safe_value($con,$_GET['type']);
	if($type=='status'){
		$operation=get_safe_value($con,$_GET['operation']);
		$id=get_safe_value($con,$_GET['id']);
		if($operation=='active'){
			$status='1';
		}else{
			$status='0';
		}
		$update_status_sql="update songs set status='$status' where id='$id'";
		mysqli_query($con,$update_status_sql);
	}
	
	if($type=='delete'){
		$id=get_safe_value($con,$_GET['id']);
		$delete_sql="delete from songs where id='$id'";
		mysqli_query($con,$delete_sql);
	}
}

$sql="select songs.*,albums.name from songs,albums where songs.album=albums.id order by songs.id ASC";
$res=mysqli_query($con,$sql);
?>
<!--  -->
<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  <div class="col-xl-12">
			 <div class="card">
				<div class="card-body">
				   <h4 class="box-title">Songs </h4>
				   <!-- <h4 class="box-link"><a href="manage_songs.php">Add songs</a> </h4> -->
				</div>
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
					  <table class="table ">
						 <thead>
							<tr>
							   <th class="serial">#</th>
							   <th width="2%">ID</th>
							   <th width="35%">Songs</th>
							   <th width="15%">Album</th>
							  <!--  <th width="15%">Mp3</th> -->
							   <th width="15%">Run-time</th>
							   <th width="7%">Artist</th>
							   <th></th>
							</tr>
						 </thead>
						 <tbody>
							<?php 
							$i=1;
							while($row=mysqli_fetch_assoc($res)){?>
							<tr>
							   <td class="serial"><?php echo $i++?></td>
							   <td><?php echo $row['id']?></td>
							   <td><?php echo $row['title']?></td>
							   <td><?php echo $row['name']?></td>
							   <td><?php echo $row['duration']?></td>
							   <td><?php echo $row['artist']?></td>							   			   
							   <td>
									<?php
									
									echo "<span class='badge badge-delete'><a href='?type=delete&id=".$row['id']."'>Delete</a></span>";
									
									?>
							    </td>
							</tr>
							<?php } ?>
						 </tbody>
					  </table>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
</div>
<?php
require('footer.inc.php');
?>