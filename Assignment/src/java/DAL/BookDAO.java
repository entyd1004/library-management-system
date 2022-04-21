/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.Book;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DPV
 */
public class BookDAO extends BaseDAO<Book> {

    public ArrayList<Book> getListBook() {
        ArrayList<Book> listBook = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Book ORDER BY BookID";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Book s = new Book();
                s.setBookID(rs.getString("BookID"));
                s.setBookName(rs.getString("BookName"));
                s.setAuthorID(rs.getString("AuthorID"));
                s.setCategoryID(rs.getString("CategoryID"));
                s.setPublisherID(rs.getString("PublisherID"));
                s.setPublishYear(rs.getString("PublishYear"));
                listBook.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listBook;
    }

    public void createBook(String BookID, String BookName, String AuthorID, String CategoryID, String PublisherID, String PublishYear) {
        try {
            String sql = "INSERT INTO Book (BookID, BookName, AuthorID, CategoryID, PublisherID, PublishYear) VALUES(?,?,?,?,?,?)";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, BookID);
            statement.setString(2, BookName);
            statement.setString(3, AuthorID);
            statement.setString(4, CategoryID);
            statement.setString(5, PublisherID);
            statement.setString(6, PublishYear);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void deleteBook(String BookID) {
        try {
            String sql = "DELETE Book WHERE BookID= ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, BookID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void editBook(String BookID, String BookName, String AuthorID, String CategoryID, String PublisherID, String PublishYear) {
        try {
            String sql = "UPDATE Book SET BookName = ?, AuthorID = ?, CategoryID = ?, PublisherID = ?, PublishYear = ? WHERE BookID = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, BookName);
            statement.setString(2, AuthorID);
            statement.setString(3, CategoryID);
            statement.setString(4, PublisherID);
            statement.setString(5, PublishYear);
            statement.setString(6, BookID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BookDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
