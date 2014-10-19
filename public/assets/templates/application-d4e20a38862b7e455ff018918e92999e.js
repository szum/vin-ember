Ember.TEMPLATES["application"] = Ember.Handlebars.template(function anonymous(Handlebars,depth0,helpers,partials,data) {
this.compilerInfo = [4,'>= 1.0.0'];
helpers = this.merge(helpers, Ember.Handlebars.helpers); data = data || {};
  var buffer = '', stack1, helper, options, self=this, helperMissing=helpers.helperMissing;

function program1(depth0,data) {
  
  
  data.buffer.push("\n			   			<li><img src=\"https://s3.amazonaws.com/vinsync/navbar-logo.png\" class=\"navbar-brand\"/></li>\n			   		");
  }

function program3(depth0,data) {
  
  var buffer = '', stack1, helper, options;
  data.buffer.push("\n			 			");
  stack1 = (helper = helpers['query-params'] || (depth0 && depth0['query-params']),options={hash:{
    'kind': ("null")
  },hashTypes:{'kind': "STRING"},hashContexts:{'kind': depth0},contexts:[],types:[],data:data},helper ? helper.call(depth0, options) : helperMissing.call(depth0, "query-params", options));
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{
    'class': ("dropdown-toggle")
  },hashTypes:{'class': "STRING"},hashContexts:{'class': depth0},inverse:self.noop,fn:self.program(4, program4, data),contexts:[depth0],types:["sexpr"],data:data},helper ? helper.call(depth0, stack1, options) : helperMissing.call(depth0, "link-to", stack1, options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 			");
  stack1 = helpers['if'].call(depth0, "isDropdownVisible", {hash:{},hashTypes:{},hashContexts:{},inverse:self.noop,fn:self.program(6, program6, data),contexts:[depth0],types:["ID"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 		");
  return buffer;
  }
function program4(depth0,data) {
  
  
  data.buffer.push("Brands<span class=\"caret\"></span>");
  }

function program6(depth0,data) {
  
  var buffer = '', stack1;
  data.buffer.push("	\n			 				<ul class=\"dropdown-list\">\n			 				  ");
  stack1 = helpers.each.call(depth0, "company", "in", "navCompanies", {hash:{},hashTypes:{},hashContexts:{},inverse:self.noop,fn:self.program(7, program7, data),contexts:[depth0,depth0,depth0],types:["ID","ID","ID"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 				</ul>\n			 			");
  return buffer;
  }
function program7(depth0,data) {
  
  var buffer = '', stack1, helper, options;
  data.buffer.push("\n			 				    ");
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{
    'tagName': ("li")
  },hashTypes:{'tagName': "STRING"},hashContexts:{'tagName': depth0},inverse:self.noop,fn:self.program(8, program8, data),contexts:[depth0,depth0],types:["STRING","ID"],data:data},helper ? helper.call(depth0, "companies.show", "company", options) : helperMissing.call(depth0, "link-to", "companies.show", "company", options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 				  ");
  return buffer;
  }
function program8(depth0,data) {
  
  var stack1;
  stack1 = helpers._triageMustache.call(depth0, "company.name", {hash:{},hashTypes:{},hashContexts:{},contexts:[depth0],types:["ID"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  else { data.buffer.push(''); }
  }

function program10(depth0,data) {
  
  
  data.buffer.push("Synthesizer");
  }

function program12(depth0,data) {
  
  
  data.buffer.push("Drum Machine");
  }

function program14(depth0,data) {
  
  
  data.buffer.push("Sampler");
  }

function program16(depth0,data) {
  
  var buffer = '', stack1;
  data.buffer.push("\n		<div class=\"row-fluid\">\n			");
  stack1 = helpers._triageMustache.call(depth0, "outlet", {hash:{},hashTypes:{},hashContexts:{},contexts:[depth0],types:["ID"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n		</div>\n	");
  return buffer;
  }

  data.buffer.push("<div class=\"row\">\n	<div class=\"col-md-9 col-md-offset-2\">\n		<div class=\"navbar navbar-inverse\" id=\"no-border\" role=\"navigation\">\n			<div class=\"container-fluid\">\n			 <!-- Brand and toggle get grouped for better mobile display -->\n			 <div class=\"navbar-header\">\n			   <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n			     <span class=\"sr-only\">Toggle navigation</span>\n			     <span class=\"icon-bar\"></span>\n			     <span class=\"icon-bar\"></span>\n			     <span class=\"icon-bar\"></span>\n			   </button>\n			   <ul class=\"navbar-header\">\n			   		");
  stack1 = (helper = helpers['query-params'] || (depth0 && depth0['query-params']),options={hash:{
    'kind': ("null")
  },hashTypes:{'kind': "STRING"},hashContexts:{'kind': depth0},contexts:[],types:[],data:data},helper ? helper.call(depth0, options) : helperMissing.call(depth0, "query-params", options));
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{},hashTypes:{},hashContexts:{},inverse:self.noop,fn:self.program(1, program1, data),contexts:[depth0,depth0],types:["STRING","sexpr"],data:data},helper ? helper.call(depth0, "companies.index", stack1, options) : helperMissing.call(depth0, "link-to", "companies.index", stack1, options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			   </ul>\n			 </div>\n\n			 <!-- Collect the nav links, forms, and other content for toggling -->\n			 <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n			   <ul class=\"nav navbar-nav\">\n			 		");
  stack1 = helpers.view.call(depth0, "dropdown", {hash:{},hashTypes:{},hashContexts:{},inverse:self.noop,fn:self.program(3, program3, data),contexts:[depth0],types:["STRING"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 		<li>\n			 			");
  stack1 = (helper = helpers['query-params'] || (depth0 && depth0['query-params']),options={hash:{
    'kind': ("synth")
  },hashTypes:{'kind': "STRING"},hashContexts:{'kind': depth0},contexts:[],types:[],data:data},helper ? helper.call(depth0, options) : helperMissing.call(depth0, "query-params", options));
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{
    'classNames': ("dropdown")
  },hashTypes:{'classNames': "STRING"},hashContexts:{'classNames': depth0},inverse:self.noop,fn:self.program(10, program10, data),contexts:[depth0],types:["sexpr"],data:data},helper ? helper.call(depth0, stack1, options) : helperMissing.call(depth0, "link-to", stack1, options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 		</li>\n		 			<li>\n		 				");
  stack1 = (helper = helpers['query-params'] || (depth0 && depth0['query-params']),options={hash:{
    'kind': ("drum")
  },hashTypes:{'kind': "STRING"},hashContexts:{'kind': depth0},contexts:[],types:[],data:data},helper ? helper.call(depth0, options) : helperMissing.call(depth0, "query-params", options));
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{
    'classNames': ("dropdown")
  },hashTypes:{'classNames': "STRING"},hashContexts:{'classNames': depth0},inverse:self.noop,fn:self.program(12, program12, data),contexts:[depth0],types:["sexpr"],data:data},helper ? helper.call(depth0, stack1, options) : helperMissing.call(depth0, "link-to", stack1, options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n		 			</li>\n		 			<li>\n			 			");
  stack1 = (helper = helpers['query-params'] || (depth0 && depth0['query-params']),options={hash:{
    'kind': ("sampler")
  },hashTypes:{'kind': "STRING"},hashContexts:{'kind': depth0},contexts:[],types:[],data:data},helper ? helper.call(depth0, options) : helperMissing.call(depth0, "query-params", options));
  stack1 = (helper = helpers['link-to'] || (depth0 && depth0['link-to']),options={hash:{
    'classNames': ("dropdown")
  },hashTypes:{'classNames': "STRING"},hashContexts:{'classNames': depth0},inverse:self.noop,fn:self.program(14, program14, data),contexts:[depth0],types:["sexpr"],data:data},helper ? helper.call(depth0, stack1, options) : helperMissing.call(depth0, "link-to", stack1, options));
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n			 		</li>\n			   	</ul>\n			 	</div><!-- /.navbar-collapse -->\n			</div><!-- /.container-fluid -->\n		</div>\n	</div>\n</div>\n<div class=\"container-fluid\">\n	");
  stack1 = helpers.view.call(depth0, "body", {hash:{},hashTypes:{},hashContexts:{},inverse:self.noop,fn:self.program(16, program16, data),contexts:[depth0],types:["STRING"],data:data});
  if(stack1 || stack1 === 0) { data.buffer.push(stack1); }
  data.buffer.push("\n</div>\n<div id=\"footer\" class=\"row\">\n	<div class=\"row-content-wrap\">	\n		<div class=\"col-md-5 col-md-offset-7\">\n			<div class=\"footer-row\">		\n			</div>\n			<div class=\"footer-row\">\n				<ul id=\"donate-message\">\n					<li>Cos machines don't run themselves</li>\n				</ul>\n			</div>\n		</div>\n	</div>\n</div>\n");
  return buffer;
  
});
