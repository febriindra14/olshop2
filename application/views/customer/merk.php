<div id="sidebar" class="span3">
<div class="well well-small">
		<ul class="nav nav-list">
		<?php foreach ($produk as $key => $value) { ?>

		<li><a href="<?php echo base_url('customer/kategori/'.$value->id_kategori);?>"><span class="icon-chevron-right"></span><?php echo $value->nama_kategori ;?> </a></li>		

		<?php } ?>

		<!--<?php foreach ($merk as $key => $value) { ?>

		<li><a href="<?php echo base_url('customer/merk/'.$value->id_merk);?>"><span class="icon-chevron-right"></span><?php echo $value->nama_merk ;?> </a></li>		

		<?php } ?> -->

		<li style="border:0"> &nbsp;</li>
		<li> <a class="totalInCart" href="<?php echo base_url('index.php/customer/keranjang')?> "><strong>Total Amount  <span class="badge badge-warning pull-right" style="line-height:18px;">Rp <?php echo number_format($total,0,",","."); ?></span></strong></a></li>
	</ul>
</div>

			
			  <div class="well well-small alert alert-warning cntr">
				  <h2>50% Discount</h2>
				  <p> 
					 only valid for online order. <br><br><a class="defaultBtn" href="#">Click here </a>
				  </p>
			  </div>
			  <div class="well well-small" ><a href="#"><img src="<?php echo base_url()?>assets/fronted/assets/img/paypal.jpg" alt="payment method paypal"></a></div>
			
			<a class="shopBtn btn-block" href="#">Upcoming products <br><small>Click to view</small></a>
			<br>
			<br>
			<ul class="nav nav-list promowrapper">
			<?php foreach ($sidebar as $key => $value) { ?>	
			<li style="border:0"> &nbsp;</li>
			<li>
			  <div class="thumbnail">
				<a class="zoomTool" href="<?php echo base_url('customer/detail')?>"><span class="icon-search"></span> QUICK VIEW</a>
				<img src="<?php echo base_url(). 'assets/fronted/assets/img/'.$value->foto?>" alt="">

	<form action="<?php echo base_url('customer/tambah_cart')?>" method="post">
	<input type="hidden" name="id_cart">
	<input type="hidden" name="id_produk" value="<?php echo $value->id_produk ?>">
	<input type="hidden" name="foto" value="<?php echo $value->foto ?>">
	<input type="hidden" name="nama_produk" value="<?php echo $value->nama_produk ?>">
	<input type="hidden" name="harga" value="<?php echo $value->harga ?>">
			
				<div class="caption">
				  <h4><a class="defaultBtn" href="<?php echo base_url('customer/detail/').$value->id_produk?>">VIEW</a> <span class="pull-right">Rp. <?php echo number_format($value->harga,0,",","."); ?></span></h4>
				</div>
	</form>			
			  </div>
			</li>
	<?php }?>		
		  </ul>
	</div>

	
	<div class="span9">
<!-- 
New Products
-->
	<div class="well well-small">
	<h3><?php if ($this->uri->segment(3)<100) {
               echo $merek; }
               elseif ($this->uri->segment(3)==''){
               			echo $cari ;}?> </h3>

		<div class="row-fluid">
		  <ul class="thumbnails">

		  	<?php
		  	if (!empty($tampil)) {
		  	 foreach ($tampil as $b){ ?>
		  		
			<li class="span4">
			  <div class="thumbnail">
				<a href="" class="overlay"></a>

				<a class="zoomTool" href="<?php echo base_url('customer/merk/'.$b->id_merk)?>" title="add to cart"><span class="icon-search"></span> QUICK VIEW</a>

				 <a href="<?php echo base_url('customer/detail/').$b->id_produk?>"><img class="img-thumbnail" src="<?php echo base_url(). 'assets/fronted/assets/img/'.$b->foto?>"/></a>
				 
<form action="<?php echo base_url('customer/tambah_cart')?>" method="post">
	<input type="hidden" name="id_cart">
	<input type="hidden" name="id_produk" value="<?php echo $b->id_produk ?>">
	<input type="hidden" name="foto" value="<?php echo $b->foto ?>">
	<input type="hidden" name="nama_produk" value="<?php echo $b->nama_produk ?>">
	<input type="hidden" name="harga" value="<?php echo $b->harga ?>">

				<div class="caption cntr">
					<p> <?php echo $b->nama_produk?></p>
					<p><strong> Rp. <?php echo number_format($b->harga,0,",","."); ?> </strong></p>

					<button type="submit" class="shopBtn"><span class=" icon-shopping-cart"></span> Add to cart</button>
</form>					
					<div class="actionList">
						<a class="pull-left" href="#">Add to Wish List </a> 
						<a class="pull-left" href="#"> Add to Compare </a>
					</div> 
					<br class="clr">
				</div>
			  </div>
			</li>
			
			<?php }
				} 	else {
							echo "<h3 style='color: #666;'><center>Produk tidak ada</center></h3>"; 
						}
				?>
		  
			</ul>
		</div>
	</div>
</div>