var Util = {
	_default : {
		_popup_op : 'left=50,top=50,width=470,height=600,menubar=no,toolbar=no,location=yes,scrollbars=no,status=no,resizable=no'
	},
	fn_popup : function(param){
		var self = this;
		if(param.option == ''){
			param.option = self._default._popup_op;
		}else if(param.title == ''){
			param.title = "_blank";
		}
		
		var keys = Object.keys(param.params);
		for(var i in keys){
			if(i == 0){
				param.url += "?" + keys[i] + "=" + param.params[keys[i]];
			}else{
				param.url += "&" + keys[i] + "=" + param.params[keys[i]];
			}
		}
		
		location.open(param.url, param.title, param.option);
		
	},
	printList : function(data, url){
		var html = '<input type="text" class="comment" id="txt_replay_content" name="content" /><a class="submit" id="btn_reply_register" href="javascript:;">등록</a>';
		// 리플의 총 수
		var totalCnt = Number(data.totalCnt);
		// 한번에 보여질 페이징 리스트의 수
		var listCnt = Number(data.listCnt);
		// 한번에 보여질 리스트의 수
		var pagePerCnt = Number(data.pagePerCnt); 
		// 하단 페이징 총수
		var totalPageCnt = Math.ceil(totalCnt / pagePerCnt);
		// 현제 페이징 수
		var currentPage = Number(data.currentPage) || 1; 
		
		//댓글 리스트 처리.
		for(var i =0; i < pagePerCnt; i++){
			if(data.list[i] !== undefined){
				html += '<div class="mreply_area">'
					+ '<span class="mreply_wrt_area">' + data.list[i].writer + '</span>'
					+ '<span class="mreply_cnt_area">' + data.list[i].content + '</span>' 
					+ '<span class="mreply_btn_area">' + data.list[i].wDate + '</span></div>';
			}
		}
		
		//하단 페이징 처리.
		var viewPagingStartCnt = 1 + Math.floor((currentPage-1)/listCnt) * listCnt;
		if(currentPage>listCnt){
			html += '<a href=\'javascript:PageObj.printReplyArea("'+url+'", '+(1)+', '+data.noticeNo+');\'><span class="pagingArea">&lt;&lt;</span></a>';
		}
		if(currentPage>listCnt){
			html += '<a href=\'javascript:PageObj.printReplyArea("'+url+'", '+(viewPagingStartCnt-1)+', '+data.noticeNo+');\'><span class="pagingArea">&lt;</span></a>';
		}
		for(var i = viewPagingStartCnt; i<=totalPageCnt && i < (viewPagingStartCnt + listCnt); i++){
			if(i == currentPage){
				html += "<span class='pagingArea' style='color:red;'>"+i+"</span>";
			}else{
				html += '<a href=\'javascript:PageObj.printReplyArea("'+url+'", '+i+', '+data.noticeNo+');\'><span class="pagingArea">'+i+'</span></a>';
			}
		}
		if((viewPagingStartCnt+listCnt)<totalPageCnt){
			html += '<a href=\'javascript:PageObj.printReplyArea("'+url+'", '+(viewPagingStartCnt+listCnt)+', '+data.noticeNo+');\'><span class="pagingArea">&gt;</span></a>';
		}
		if((viewPagingStartCnt+listCnt)<totalPageCnt){
			html += '<a href=\'javascript:PageObj.printReplyArea("'+url+'", '+(totalPageCnt)+', '+data.noticeNo+');\'><span class="pagingArea">&gt;&gt;</span></a>';
		}
		return html;
	},
	loadPaging : function(url){
		var pageArea = $(".pageArea");
		
		var totalCnt = Number('${totalCnt}');
		var currentPage = Number('${currentPage}');
		var pagePerCnt = Number('${pagePerCnt}');
		var groupPerCnt = 5;
		var totalGroup = Math.ceil(totalCnt/pagePerCnt);
		
		var startGroup = 1 + Math.floor((currentPage-1)/groupPerCnt) * groupPerCnt;
		
		var html = ""
		
		if(currentPage > groupPerCnt){
			html += "<span class='paging'><a href='" + url + "?currentPage=1'>&lt;&lt;</a></span>";
		}
		
		if(currentPage > groupPerCnt){
			html += "<span class='paging'><a href='" + url + "?currentPage="+(startGroup-1)+"'>&lt;</a></span>";
		}
		
		for(var i = startGroup; (i<=totalGroup) && (i< (startGroup + groupPerCnt)); i++){
			if(i == currentPage){
				html += "<span class='paging'>"+i+"</span>";	
			}else{
				html += "<span class='paging'><a href='" + url + "?currentPage="+i+"'>"+i+"</a></span>";
			}
		}
		
		if((startGroup + groupPerCnt) < totalGroup){
			html += "<span class='paging'><a href='" + url + "?currentPage="+(startGroup+groupPerCnt)+"'>&gt;</a></span>";
		}
		
		if((startGroup + groupPerCnt) < totalGroup){
			html += "<span class='paging'><a href='" + url + "?currentPage="+ totalGroup +"'>&gt;&gt;</a></span>";
		}
		
		debugger;
		
		pageArea.html(html);
		
	},
	callAjax : function(param){
		$.ajax({
			url : param.url,
			type : "POST",
			data : param.data,
			dataType : "json",
			success : param.success,
			error:function(jqXHR, textStatus, errorThrown){
		        alert("에러 \n" + textStatus + " : " + errorThrown);
		    }
		});
	}
}

//ArrayList 구현
function ArrayList(){
    this.array = new Array();
    
    this.add = function(obj){
        this.array[this.array.length] = obj;
    };
    
    this.iterator = function (){
        return new Iterator(this);
    };
    
    this.length = function (){
        return this.array.length;
    };
    
    this.get = function (index){
        return this.array[index];
    };
    
    this.addAll = function (obj){
        if (obj instanceof Array){
            for (var i=0;i<obj.length;i++){
                this.add(obj[i]);
            }
        } else if (obj instanceof ArrayList){
            for (var i=0;i<obj.length();i++){
                this.add(obj.get(i));
            }
        }
    };
}