<?php
defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style>
	.page{
		display: inline-block;
		padding: 5px 9px;
		margin-right: 4px;
		border-radius: 3px;
		border: solid 1px #c0c0c0;
		background: #e9e9e9;
		font-size: 16px;
		font-weight: bold;
		text-decoration: none;
		color: #717171;
		text-transform: capitalize;
	}
	.page:hover{
		background: silver;
	}
	.active, .active:hover{
		background: #757272;
		border-color: #403c3c;
		color: #e9e9e9;
		cursor: default;
	}
</style>
</head>
<body>
	<h2>Order</h2>
	<button type="pas"><a style="text-decoration: none;" href="<?php echo base_url('index.php/utama/admin/form_order')?>">Tambah</a></button>
	<table width="800" border="1" cellpadding="0" cellspacing="0" style="margin-top: 10px">
	<tr>
		<td align="center">Id order</td>
		<td align="center">Id customer</td>
		<td align="center">Nama</td>
		<td align="center">Total bayar</td>
		<td align="center">Tanggal order</td>
		<td align="center">Keterangan</td>
		<td align="center">Pengaturan</td>
	</tr>
	<tr>
	<?php foreach ($order as $b) {?>
		<td><?php echo $b['id_order'];?></td>
		<td><?php echo $b['id_customer'];?></td>
		<td><?php echo $b['nama'];?></td>
		<td><?php echo $b['total_bayar'];?></td>
		<td><?php echo $b['tgl_order'];?></td>
		<td><?php echo $b['keterangan'];?></td>
		<td><a data-toggle='tooltip' data-placement='top' title='Ubah' style='margin-right:5px; background: #00BFFF; border:#00BFFF; width:50px;' class='btn btn-primary btn-sm' href='<?php echo base_url('index.php/utama/admin/ubah_order/').$b['id_order']?>'>Edit</a>
			
			<a data-toggle="tooltip" data-placement="top" title="Hapus" style='background: red; border:red;' class="btn btn-danger btn-sm" href="<?php echo base_url('index.php/utama/admin/hapus_order/').$b['id_order'] ?>">Hapus</a></td>
	</tr>
	<?php }?>	
	</table>
	<br>
	<?php echo $this->pagination->create_links() ?>	
</body>
</html>