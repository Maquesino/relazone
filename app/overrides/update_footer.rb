Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
         :name => 'replace_footer',
         :insert_after => 'div.container',
         :partial => './layouts/my_footer.html.erb',
         :text => '
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <div class = footer_info>
         <div class = container>
         <hr>
         <div class = col-md-3>Oficina:<br>Calle siempre viva 123</div>
         <div class = col-md-3>Atención al cliente:<br>tienda@relazone.com</div>
         <div class = col-md-3>Tel: 000 11 001110<br>Horario de atención:<br>Lun-Dom<br>7:00 a.m - 6:00 p.m</div>
         <div class = col-md-3>Siguenos!<br> Redes sociales:
         <br><a href="#" class="fa fa-facebook fa-2x"></a>
         <a href="#" class="fa fa-twitter fa-2x"></a>
         <a href="#" class="fa fa-instagram fa-2x"></a>
         </div>
         </div>
         </div>',
         :sequence => {:after => 'remove_footer'},
         :original => 'f824ceac0f13ad715146bb5826e05fd21f61c7b6'
        )