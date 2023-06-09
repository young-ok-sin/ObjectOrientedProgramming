package BicycleManage;
import java.io.*;
import java.sql.SQLException;
import javax.servlet.*;
import javax.servlet.http.*;
public class BicycleRentServlet extends HttpServlet {
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String selectedBicycleID = request.getParameter("selectedBicycle");
         try {
        // BicycleController 클래스의 insert 메소드 실행
        BicycleControll myController = new BicycleControll();
        myController.upDateBicycleRendted(selectedBicycleID);
         } catch (SQLException e) {
             e.printStackTrace();
             // 예외 처리 로직 추가
         } catch (ClassNotFoundException e) {
             e.printStackTrace();
             // 예외 처리 로직 추가
         }
         response.sendRedirect("BicycleRent.jsp");
        // 다음 동작을 수행하거나 응답을 보낼 수 있습니다.
        // ...
    }
}
