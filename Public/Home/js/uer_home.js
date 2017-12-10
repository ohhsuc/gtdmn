window.onload=function(){
    		var user_info = document.getElementById('user_info');
    		var user_pass = document.getElementById('user_pass');
    		var log_page = document.getElementById('log_page');
    		var log_qus = document.getElementById('log_qus');
    		var ticket = document.getElementById('ticket');
    		var hotel = document.getElementById('hotel');
    		var order = document.getElementById('order');
    		var user_info_con = document.getElementById('user_info_con');
    		var user_pass_con =document.getElementById("user_pass_con");
    		var log_page_con =document.getElementById('log_page_con');
    		var log_qus_con =document.getElementById('log_qus_con');
    		var ticket_con =document.getElementById('ticket_con');
    		var hotel_con =document.getElementById('hotel_con');
    		var order_con =document.getElementById('order_con');
    		
    		user_info.onclick=function(){
    			user_info_con.style.display='inline';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='none';
    			hotel_con.style.display='none';
    			order_con.style.display='none';
    		}
    		user_pass.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='inline';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='none';
    			hotel_con.style.display='none';
    			order_con.style.display='none';
    		}
    		log_page.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='inline';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='none';
    			hotel_con.style.display='none';
    			order_con.style.display='none';
    		}
    		log_qus.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='inline';
    			ticket_con.style.display='none';
    			hotel_con.style.display='none';
    			order_con.style.display='none';
    		}
    		ticket.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='inline';
    			hotel_con.style.display='none';
    			order_con.style.display='none';
    		}
    		hotel.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='none';
    			hotel_con.style.display='inline';
    			order_con.style.display='none';
    		}
    		order.onclick=function(){
    			user_info_con.style.display='none';
    			user_pass_con.style.display='none';
    			log_page_con.style.display='none';
    			log_qus_con.style.display='none';
    			ticket_con.style.display='none';
    			hotel_con.style.display='none';
    			order_con.style.display='inline';
    		}
    		
    		
    		
    		
    	}
