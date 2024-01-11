package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Product;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.ProductService;
import com.klef.jfsd.springboot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController 
{
	@Autowired
  private AdminService adminService;
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private SellerService sellerService;
	
	@Autowired
	private ProductService productService;

	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("cuspage")
	public ModelAndView cuspage()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cuspage");
		return mv;
	}
	
	@GetMapping("cusreg")
	public ModelAndView cusreg()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cusreg");
		return mv;
	}
	
	@PostMapping("insertcus")
	public ModelAndView insert(HttpServletRequest request)
	{
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try
		{
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String location = request.getParameter("location");
			String contact = request.getParameter("contact");
			
			Customer cus = new Customer();
			
			
			cus.setName(name);
			cus.setGender(gender);
			cus.setDateofbirth(dob);
			cus.setEmail(email);
			cus.setPassword(pwd);
			cus.setLocation(location);
			cus.setContact(contact);
			cus.setActive(true);
			
			
		msg = customerService.addcustomer(cus);
		mv.setViewName("displaymsg");
		mv.addObject("message",msg);
		
		}
		catch (Exception c) {
			msg = c.getMessage();
			
			mv.setViewName("displaymsg");
			mv.addObject("message",msg);
		}
		return mv;
	}
	
	@GetMapping("cuslogin")
	public ModelAndView cuslogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cuslogin");
		return mv;
	}
	
	@GetMapping("cushome")
	public ModelAndView cushome(HttpServletRequest request)
	{
		HttpSession session = request.getSession();
		
		int cid = (int)session.getAttribute("cid");
		String cname = (String) session.getAttribute("cname");
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cushome");
		
		mv.addObject("cid",cid);
		mv.addObject("cname",cname);
		
		return mv;
	}
	
	@PostMapping("checkcuslogin")
	   public ModelAndView checkcuslogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	     
	       Customer cus = customerService.checkcuslogin(email, pwd);
	       
	       if(cus!=null)
	       {
	    	   HttpSession session = request.getSession();
	           
	           session.setAttribute("cid", cus.getId());
	           session.setAttribute("cname", cus.getName());
	           //eid is a session varible
	         mv.setViewName("cushome");
	       }
	       else
	       {
	         mv.setViewName("cuslogin");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	   @PostMapping("checkadminlogin")
	     public ModelAndView checkadminlogin(HttpServletRequest request) 
	     {
	       ModelAndView mv=new ModelAndView();
	       
	       String uname=request.getParameter("uname");
	       String pwd=request.getParameter("pwd");
	       
	       Admin a= adminService.checkadminlogin(uname, pwd);
	       if(a!=null) 
	       {
	        mv.setViewName("adminhome");
	            
	       }
	       else 
	       {
	         mv.setViewName("adminlogin");
	         mv.addObject("message", "Login Failed");
	       }
	       return mv;
	     }
	   
	@GetMapping("product")
	public ModelAndView product()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product");
		return mv;
	}
	
	@GetMapping("product1")
	public ModelAndView product1()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("product1");
		return mv;
	}
	
	@GetMapping("product_detail")
	   public ModelAndView product_detail()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("product_detail");
	     return mv;
	   }
	
	@GetMapping("contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("contactus");
		return mv;
	}
	@GetMapping("cuscontact")
	public ModelAndView cuscontact()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("cuscontact");
		return mv;
	}

	@GetMapping("viewallcus")
	public ModelAndView viewallcus()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcus");
		
		List<Customer> cuslist = adminService.viewallcustomers();
		mv.addObject("cusdata",cuslist);
		return mv;
	}
	
	@GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     return mv;
	   }
	   
	   @GetMapping("deletecus")
	   public ModelAndView deletecus()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("deletecus");
	     
	     List<Customer> cuslist =  adminService.viewallcustomers();
	     
	     mv.addObject("cusdata", cuslist);
	     
	     return mv;
	   }
	   
	   @GetMapping("delete/{id}")
	    public String deleteaction(@PathVariable("id") int cid)
	    {
	      adminService.deletecustomer(cid);
	      return "redirect:/deletecus";
	    }
	   
	   @GetMapping("updateprofile")
	    public ModelAndView updatecus(HttpServletRequest request)
	    {
	      ModelAndView mv = new ModelAndView();
	      
	      HttpSession session = request.getSession();
	      
	      mv.setViewName("updateprofile");
	      
	      mv.addObject("cid", session.getAttribute("cid"));
	      mv.addObject("cname", session.getAttribute("cname"));
	      
	      int id = (int) session.getAttribute("cid");
	      
	      Customer cus = customerService.viewcustomerbyid(id);
	      
	      mv.addObject("cus", cus);
	      
	      return mv;
	    }
	    
	    @PostMapping("update")
	    public ModelAndView updateaction(HttpServletRequest request)
	    {
	      String msg = null;
	      
	      ModelAndView mv = new ModelAndView();
	      
	        HttpSession session = request.getSession();
	      
	      mv.addObject("cid", session.getAttribute("cid"));
	      mv.addObject("cname", session.getAttribute("cname"));
	      
	      int id = (int) session.getAttribute("cid");
	      
	     try
	     {
	       String name = request.getParameter("name");
	       String dob = request.getParameter("dob");
	       String email = request.getParameter("email");
	       String pwd = request.getParameter("pwd");
	       String location = request.getParameter("location");
	       String contact = request.getParameter("contact");
	       
	       Customer cus = new Customer();
	        cus.setId(id);
	        cus.setName(name);
	        cus.setDateofbirth(dob);
	        cus.setEmail(email);
	        cus.setPassword(pwd);
	        cus.setLocation(location);
	        cus.setContact(contact);
	        
	        
	        msg = customerService.updatecustomer(cus);
	        
	        mv.setViewName("cuslogin");
	        mv.addObject("message",msg);
	       
	     }
	     catch(Exception c)
	     {
	       msg = c.getMessage();
	       
	       mv.setViewName("updateerror");
	        mv.addObject("message",msg);
	     }
	      
	     
	      return mv;

	    }
	   
	   @GetMapping("view")
	    public ModelAndView viewcusdemo(@RequestParam("id") int cid)
	    {
	      Customer cus = adminService.viewcustomerbyid(cid);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("viewcusbyid");
	      mv.addObject("cus", cus);
	      return mv;
	    }
	   
		@GetMapping("aboutmain")
		   public ModelAndView aboutmain()
		   {
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("aboutmain");
		     return mv;
		   }
		@GetMapping("blog")
		   public ModelAndView blog()
		   {
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("blog");
		     return mv;
		   }
		@GetMapping("blog_detail")
		   public ModelAndView blog_detail()
		   {
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("blog_detail");
		     return mv;
		   }
		@GetMapping("cart")
		   public ModelAndView cart()
		   {
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("cart");
		     return mv;
		   }
		@GetMapping("checkout")
		   public ModelAndView checkout()
		   {
		     ModelAndView mv = new ModelAndView();
		     mv.setViewName("checkout");
		     return mv;
		   }
		
		//Akash
		@GetMapping("sellerreg")
		 public ModelAndView sellerreg()
		 {
		   ModelAndView mv = new ModelAndView();
		   mv.setViewName("sellerreg");
		   return mv;
		 }

		@GetMapping("sellerlogin") // URI & method name can be different
		public ModelAndView sellerlogin()
		{
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("sellerlogin");
		  return mv;
		}
		@GetMapping("sellernavbar") // URI & method name can be different
		public ModelAndView sellernavbar(HttpServletRequest request)
		{
		
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("sellernavbar");
		  return mv;
		}
		
		@GetMapping("sellerhome") // URI & method name can be different
		public ModelAndView sellerhome(HttpServletRequest request)
		{
		
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("sellerhome");
		  return mv;
		}
		
		@PostMapping("insertseller")
      public ModelAndView insertseller(HttpServletRequest request)
      {
    	  ModelAndView mv = new ModelAndView();
    	  
    	  String msg = null;
    	  try
    	  {
    	   String name = request.getParameter("name");
    	 
   	       String email = request.getParameter("email");
   	       String location = request.getParameter("location");
   	       String pwd = request.getParameter("pwd");
   	       String contact = request.getParameter("contact");
   	       
   	       Seller s = new Seller();
   	       
   		s.setName(name);
   		
		
		s.setEmail(email);
		s.setLocation(location);
		s.setPassword(pwd);
		s.setContact(contact);
		s.setActive(true);
   	       
		msg = sellerService.addseller(s);
		
		mv.setViewName("displaysellermsg");
		mv.addObject("message",msg);
		
    	  }
    	  catch (Exception e) {
			msg = e.getMessage();
			
			mv.setViewName("displayerror");
			mv.addObject("message",msg);
		}
    	  return mv;
      }



		@GetMapping("seller") // URI & method name can be different
		public ModelAndView sellerloginafter()
		{
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("sellerloginafter");
		  return mv;
		}
	
		@PostMapping("checksellerlogin")
		   public ModelAndView checksellerlogin(HttpServletRequest request)
		   {
		     ModelAndView mv = new ModelAndView();
		     
		     String email = request.getParameter("email");
		     String pwd = request.getParameter("pwd");
		     
		     
		       Seller s = sellerService.checksellerlogin(email, pwd);
		       
		       if(s!=null)
		       {
		    	   HttpSession session = request.getSession();
		           
		           session.setAttribute("sid", s.getId());
		           session.setAttribute("sname",s.getName());
		           //eid is a session varible
		         mv.setViewName("sellerhome");
		       }
		       else
		       {
		         mv.setViewName("sellerlogin");
		         mv.addObject("message", "Login Failed");
		       }
		       
		       return mv;
		   }
		@GetMapping("sellerloginafter") // URI & method name can be different
		public ModelAndView sellerloginafter(HttpServletRequest request)
		{
			HttpSession session = request.getSession();
			
			int cid = (int)session.getAttribute("sid");
			String sname = (String) session.getAttribute("sname");
			
		  ModelAndView mv = new ModelAndView();
		  mv.setViewName("sellerloginafter");
		  
		  mv.addObject("sid",cid);
		  mv.addObject("sname",sname);
		  
		  return mv;
		}
		@GetMapping("sellerlogout")
		public ModelAndView sellerlogout()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("sellerlogout");
			return mv;
		}
		
		@GetMapping("viewallsellers")
		public ModelAndView viewallsellers()
		{
			ModelAndView mv = new ModelAndView();
			mv.setViewName("viewallsellers");
			
			List<Seller> sellist = adminService.viewallsellers();
			
			mv.addObject("seldata",sellist);
			return mv;
		}
		
		@GetMapping("views")
	    public ModelAndView viewseldemo(@RequestParam("id") int cid)
	    {
	      Customer sel = adminService.viewcustomerbyid(cid);
	      ModelAndView mv = new ModelAndView();
	      mv.setViewName("viewselbyid");
	      mv.addObject("sel", sel);
	      return mv;
	    }
		
    //products
		
		@GetMapping("addproduct")
		   public ModelAndView addproductdemo()
		   {
			   ModelAndView mv = new ModelAndView("addproduct");
			   return mv;
		   }
		
		 @PostMapping("insertproduct")
		   public ModelAndView insertproductdemo(HttpServletRequest request,@RequestParam("productimage") MultipartFile file) throws IOException, SerialException, SQLException
		   {
			   String msg = null;
			   
			   ModelAndView mv = new ModelAndView();
			   
			   try
			   {
			   String category = request.getParameter("category");
			   String name = request.getParameter("name");
			   String description = request.getParameter("description");
			   Double cost = Double.valueOf(request.getParameter("cost"));
			   String productlink = request.getParameter("productlink");
			   
				  byte[] bytes = file.getBytes();
				  Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
				  
				  Product p = new Product();
				  p.setCategory(category);
				  p.setName(name);
				  p.setDescription(description);
				  p.setCost(cost);
				  p.setProductlink(productlink);
				  p.setProductimage(blob);
				  
				  msg=productService.AddProduct(p);
				  System.out.println(msg);
				  mv.setViewName("productmsg");
				  mv.addObject("message",msg);
			   }	  
			   catch(Exception e)
			   {
				   msg = e.getMessage();
				   System.out.println(msg.toString());
				   mv.setViewName("producterror");
				   mv.addObject("message",msg);
			   }
			   return mv;
		   }
		 
		 @GetMapping("viewallprods")
		   public ModelAndView viewallprodsdemo()
		   {
			   List<Product> productlist = productService.ViewAllProducts();
			   
			   ModelAndView mv = new ModelAndView("selviewallproducts");
			   
			   mv.addObject("productlist", productlist);
			   
			   return mv;
		   }
		 
		 @GetMapping("displayprodimage")
		 public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException
		 {
		   Product product =  productService.ViewProductByID(id);
		   byte [] imageBytes = null;
		   imageBytes = product.getProductimage().getBytes(1,(int) product.getProductimage().length());

		   return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
		 }

		 @GetMapping("viewproductbyid")
		 public ModelAndView  viewproductbyiddemo()
		 {
		 	   List<Product> productlist=productService.ViewAllProducts();
		 	   ModelAndView mv=new ModelAndView("viewproductbyid");
		 	   mv.addObject("productlist",productlist);
		 	   return mv;
		 }
		    
		    @PostMapping("displayproduct")
		    public ModelAndView displayproductdemo(HttpServletRequest request)
		    {
		 	   int pid=Integer.parseInt(request.getParameter("pid"));
		 	   Product product=productService.ViewProductByID(pid);
		 	   ModelAndView mv=new ModelAndView("displayproduct");
		 	   mv.addObject("product",product);
		 	   return mv;
		    }
		    @GetMapping("displaycategory")
		    public ModelAndView displaycategory() 
		    {
		      ModelAndView mv=new ModelAndView("displaycategory");
		      return mv;
		    }
		    @PostMapping("viewproductsbycategory")
		    public ModelAndView viewproductsbycategory(HttpServletRequest request)
		    {
		      String category = request.getParameter("category");
		      
		        List<Product> productlist = productService.viewallproductsbycategory(category);
		      
		      ModelAndView mv = new ModelAndView("selviewallproducts");
		      
		      mv.addObject("productlist", productlist);
		      
		      return mv;
		    }
		  
		
		    @GetMapping("viewallsel")
			public ModelAndView viewallsel()
			{
				ModelAndView mv = new ModelAndView();
				mv.setViewName("viewallsel");
				
				List<Customer> cuslist = adminService.viewallcustomers();
				mv.addObject("cusdata",cuslist);
				return mv;
			}
}
