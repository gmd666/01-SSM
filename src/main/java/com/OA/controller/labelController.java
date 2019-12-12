package com.OA.controller;

import com.OA.beans.Label;
import com.OA.service.LabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class labelController {
    //设置静态变量全局调动；
    static List<Label> labelList;
    static HashMap<Integer,Label> labelMap = new HashMap<>();
    static  List<Label> childLabelList = new ArrayList<>();
    //依赖注入
    @Autowired
    private LabelService labelService;
    /**
     * 1.点击页面连接后，发送请求，执行函数；
     * 2.获取b标签集合发送到页面；
     * 获取所有的标签对象然后发送到页面；
     * 3.保存到session中；
     * 4.转发到标签页面；
     * 5.获取所有的栏目使用list集合输出；
     */
    @RequestMapping("/getLabels.do")
    public String getLabels(HttpSession session,HttpServletRequest request){
        //获取当前页
        int nowPage = Integer.parseInt(request.getParameter("nowPage"));
        if (nowPage==0) nowPage++;
        //根据数据库查找label集合
        labelList = labelService.findAllLabels();
        //储存为map对象；以id为键；
        listToMap();
        //填充pName;
        addPName();
        //再次更新map
        listToMap();
        session.setAttribute("labelList",labelList);
        session.setAttribute("msg",0);
        //分页；
        List<Label> labels= splitPages(labelList,nowPage);
        session.setAttribute("labels",labels);
        //保存页数和数量；
        savePagesAndCount(labelList,session);
        //保留当前页；
        session.setAttribute("nowPage",nowPage);
        return "html/news/labelManage.jsp";
    }

    /**
     *
     * @param session
     */
    private void savePagesAndCount(List<Label> list,HttpSession session) {
        int count = list.size();
        int pages = count/3;
        if(count%3!=0) pages++;
        session.setAttribute("pages",pages);
        session.setAttribute("count",count);
    }

    /**
     * 将list储存为map对象；
     */
    private void listToMap() {
       // System.out.println(labelList.size());
        for (Label label:labelList) {
            labelMap.put(label.getId(),label);
           // System.out.println(label);
        }
    }
    /**
     * 添加pName
     */
    private void addPName() {
        for (Label label:labelList) {
            if (label.getPid()!=null&&labelMap.get(label.getPid())!=null){
                label.setpName(labelMap.get(label.getPid()).getLabelName());
                //System.out.println(label);
            }else {
                label.setpName(label.getLabelName());
            }
        }
    }
    /**
     * 通过获取session对象，来实现查询，减少数据库的访问；
     * 在页面使用js发送选中的id到后台；
     * 在页面中使用c标签判断childLabel使用为空如果为空，则显示原来内容
     * @param
     * @param session
     * @return
     */
    @RequestMapping("/getChildLabels.do")
    public String getChildLabels(HttpServletRequest request,HttpSession session){
        int nowPage = Integer.parseInt(request.getParameter("nowPage"));
        Integer id = Integer.parseInt(request.getParameter("id"));
        if (nowPage==0) nowPage++;
        if(childLabelList!=null) childLabelList.clear();//清空子栏目
        for (Label label:labelList) {
            if(label.getPid()==id){
                childLabelList.add(label);
            }
            if (label.getId()==id){
                session.setAttribute("selectedLabel",label);
            }

        }
        //分页；
        List<Label> childLabels= splitPages(childLabelList,nowPage);
        session.setAttribute("childLabelList",childLabels);
        session.setAttribute("msg",1);
        //保存页数和数量；
        savePagesAndCount(childLabelList,session);
        //保留当前页；
        session.setAttribute("nowPage",nowPage);
        return"html/news/labelManage.jsp";
    }

    /**
     * 获取session对象后发送到页面添加；
     * @param session
     * @return
     */
    @RequestMapping("/labelAdd.do")
    public String labelAdd(HttpSession session){
        session.setAttribute("labelList",labelList);
        return"html/news/labelAdd.jsp";
    }

    /**
     * 添加条目；
     * 从页面发送数据到后台；
     * 接受数据添加到数据库中，通过ajax实现交互；
     * 通过ajax获取数据到页面；
     * 返回为json字符串
     * 如果插入成功返回1，失败返回0;
     * 调用geteLabels方法，重新请求数据库；
     * 添加之后，返回一个list集合封装到session对象；
     * 用来检测是否查询成功；
     * @param
     * @return
     */
    @RequestMapping(value = "/labelAdd2.do",method = RequestMethod.POST)
    public String labelAdd2( Label label, HttpSession session){
       // System.out.println(label.toString());
        labelService.addLabel(label);//添加
        labelList = labelService.findAllLabels();//获取所有栏目
        listToMap();//跟新map;
        session.setAttribute("labelList",labelList);//覆盖域对象
        return"html/news/labelAdd.jsp";
    }

    /**
     * 1.根据获取的id查找labelList;
     * 2.而后返回对象，传递对象到修改页面
     * 3.
     * @return
     */
    @RequestMapping("/labelModify.do")
    public String labelModify(HttpServletRequest request) {
        Integer id = Integer.parseInt(request.getParameter("id"));
        Label label = labelMap.get(id);
        request.getSession().setAttribute("label",label);
        return "html/news/labelModify.jsp";
    }
    /**
     * 1.根据id对数据库对象进行覆盖；
     * 2.修改后回显到页面；
     * 3.获取list;
     * 4.保存到session域对象
     * 5.
     */
    @RequestMapping("/labelModify2.do")
    public String labelModify2(Label label,HttpSession session) {
        labelService.modifyLabel(label);
        labelList = labelService.findAllLabels();//获取所有栏目
        listToMap();//跟新map;
        session.setAttribute("label",label);
        session.setAttribute("labelList",labelList);
        return "html/news/labelModify.jsp";
    }
    /**
     * 删除
     * 直接删除；
     * 并且删除父栏目
     */
    @RequestMapping("/deleteById.do")
    public String deleteById(String id,HttpSession session) {
        Integer id2 = Integer.parseInt(id);
        Label label = labelMap.get(id2);
        labelService.deleteById(id2);
        if(label.getPid()!=null&&label.getPid()!=id2){
            labelService.deleteById(label.getPid());
        }
        labelList = labelService.findAllLabels();//获取所有栏目
        //储存为map对象；以id为键；
        listToMap();
        //填充pName;
        addPName();
        //再次更新map
        listToMap();
        session.setAttribute("labelList",labelList);//覆盖域对象
        return "html/news/labelManage.jsp";
    }
    /**
     * 只删除子栏目；
     */
    @RequestMapping("/deleteById2.do")
    public String deleteById2(String id,HttpSession session) {
        Integer id2 = Integer.parseInt(id);
        labelService.deleteById(id2);
        labelList = labelService.findAllLabels();//获取所有栏目
        //储存为map对象；以id为键；
        listToMap();
        //填充pName;
        addPName();
        //再次更新map
        listToMap();
        session.setAttribute("labelList",labelList);//覆盖域对象
        return "html/news/labelManage.jsp";
    }
    /**
     * 分页函数的实现；
     * 1.根据前端传回的页码；
     * 2.首页，上一页，下一页，末页，总页数，总的记录数；
     * 3.每页三条数据；
     * 4.需要使用分页的有，请求所有标签，请求子标签；
     * 5.每次都需要传递的有，总页数，总的记录数；
     * 6.逻辑分页，在内存中实现；
     * 7.传递参数有，list集合，
     * 8.首页默认为1；1*3返回，确定当前页；
     * 9.上一页-1，下一页+1，根据传递回来的list集合确定页数和记录数；
     * 10.在session中保存当前页，根据
     * 10.如果是最后一页，则进行取余；
     * 传回页码的情况；
     * 如果大于或者等于所有页数，表示直接从最后一页；
     */
    private List<Label> splitPages(List<Label> list,int nowPage){
        List<Label> newLabel = new ArrayList<>();
        //判断没有子孩子的情况
        if(list.size()==0) return null;

        int pages = list.size()/3;
        int end = 0,start = 0;
        //对于特殊情况的判断；
        if(list.size()%3==0&&nowPage>pages){
            nowPage=pages;
        }
        //确定其实和结束标签；
        if(nowPage<=pages){
            end = nowPage*3-1;
            start = end-2;
        } else {
            end = list.size()-1;
            start = end-list.size()%3+1;
        }
        //开始添加序列；
        for (int i=start;i<=end;i++){
            newLabel.add(list.get(i));
        }

        return newLabel;
    }
    /**
     * 建立专门处理获取子栏目分页的函数；
     * 便于不使用id来进行分页；
     * 根据得到的
     */
    @RequestMapping("/splitChildPages.do")
    public String splitChildPages(int nowPage,HttpSession session) {
        if (nowPage<=0) nowPage=1;
        List<Label> newLabel = splitPages(childLabelList,nowPage);
        session.setAttribute("childLabelList",newLabel);
        session.setAttribute("msg",1);
        //保存页数和数量；
        savePagesAndCount(childLabelList,session);
        //保留当前页；
        session.setAttribute("nowPage",nowPage);
        return"html/news/labelManage.jsp";
    }
}
