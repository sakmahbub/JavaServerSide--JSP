package service;

import entity.Student;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import util.HibernateUtil;


public class StudentService {

    public static void saveorUpdate(Student student) {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.saveOrUpdate(student);
        tr.commit();

    }

    public static void delete(Student student) {

        SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
        Session session = sessionFactory.getCurrentSession();
        Transaction tr = session.beginTransaction();
        session.delete(student);
        tr.commit();

    }

    public static Student getById(int id) {
        Student student = new Student();

        try {

            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.getCurrentSession();
            Transaction tr = session.beginTransaction();
            student = (Student) session.get(Student.class, id);
            tr.commit();

        } catch (Exception e) {
        }

        return student;
    }

    public static List<Student> getList() {
        List<Student> students = new ArrayList<>();
        try {
            
            SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
            Session session = sessionFactory.getCurrentSession();
            students = session.createCriteria("FROM Student").list();
            Transaction tr = session.beginTransaction();
            tr.commit();
            
        } catch (Exception e) {
        }

        return students;
    }

}
