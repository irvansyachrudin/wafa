<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "wafa");

$query = "SELECT * FROM ekspedisi order by 'kota/kab' asc";
$number_filter_row = mysqli_num_rows(mysqli_query($connect, $query));

$result = mysqli_query($connect, $query);

$data = array();
$i = 1;
while($row = mysqli_fetch_array($result))
{
 $sub_array = array();
 $sub_array[] = $i;
 $sub_array[] = '<div contenteditable class="update" data-id="'.$row["id"].'" data-column="nama_barang">' . $row["kota/kab"] . '</div>';
 $sub_array[] = '<div contenteditable class="update" data-id="'.$row["id"].'" data-column="harga_normal">' . $row["harga"] . '</div>';
 $sub_array[] = '<div contenteditable class="update" data-id="'.$row["id"].'" data-column="harga_member">' . $row["ekspedisi"] . '</div>';
 $data[] = $sub_array;
 $i++;
}

function get_all_data($connect)
{
 $query = "SELECT * FROM stok";
 $result = mysqli_query($connect, $query);
 return mysqli_num_rows($result);
}

$output = array(
 "data"    => $data
);

echo json_encode($output);

?>