/*
 * Welcome to your app's main JavaScript file!
 *
 * We recommend including the built version of this JavaScript file*/
import $ from "jquery";
global.$ = global.jQuery = $;
          require('popper.js');   
          require('bootstrap'); 
          require('bootstrap-datepicker'); 
          require('bootstrap-slider'); 
          require('purl');
          require('jquery-validation'); 
          require('jquery.validate.file');  
        
          require('./js/main.js'); 
          require('./js/home-search');
          require('./js/validate-form');
          require('./js/edit-profile');
          require('./js/multy-images-form');
          require('./js/bouking-date');
    

        

         
         
        
 
 /* (and its CSS file) in your base layout (base.html.twig).
 */

// any CSS you import will output into a single css file (app.css in this case)
import './styles/app.css';
import './css/base.css';
import './css/bouk.css';
import './css/explorer_fas.css';
import './css/form.css';
import './css/list_ads.css';
import './css/show.css';

