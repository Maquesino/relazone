Deface::Override.new(:virtual_path => 'spree/layouts/spree_application',
         :name => 'replace_footer',
         :insert_after => 'div.container',
         :partial => './layouts/my_footer.html.erb',
         :text => '
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <div class = footer_info>
         <div class = container>
         <hr>
         <div class = col-md-3><h2>Oficina:</h2><h3>Calle siempre viva 123</h3></div>
         <div class = col-md-3><h2>Atención al cliente:</h2><h3>tienda@relazone.com</h3><h3>Tel: 000 11 001110</h3></div>
         <div class = col-md-3><h2>Horario de atención:</h2><h3>Lun-Dom</h3><h3>7:00 a.m - 6:00 p.m</h3></div>
         <div class = col-md-3 id = social_footnet><h2>¡Siguenos!</h2><h3>En nuestras redes sociales:</h3>
         <br><center ><a href="https://www.facebook.com/RelaStock-481213558903344/"><button type="button" class="footer_text btn btn-primary fa fa-facebook fa-2x">&nbsp;RelaStock</a> <br>
                 <a href="https://www.facebook.com/RelaStock-481213558903344/"><button type="button" class="footer_text btn btn-info fa fa-twitter fa-2x">&nbsp;@RelaStock</a><br>
              <a href="https://www.facebook.com/RelaStock-481213558903344/"><button type="button" class="footer_text btn btn-danger fa fa-instagram fa-2x">&nbsp;@RelaStock</a> <br></center>
         </div>
         </div>
         </div>',
         :sequence => {:after => 'remove_footer'},
         :original => 'f824ceac0f13ad715146bb5826e05fd21f61c7b6'
        )