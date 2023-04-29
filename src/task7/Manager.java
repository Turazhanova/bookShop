package task7;

import java.util.ArrayList;

public class Manager {
    public static ArrayList<Users> users = new ArrayList<>();

    public static ArrayList<Users> getUsers() {
        return users;
    }


    public static int id = 4;

    public static void addUsers(Users user) {
        user.setId((id));
        users.add(user);
        id++;
    }
    static {
        users.add(new Users(
                1,"Kan men ter",
                "Azilhan Nurshayikov",
                "trilogia",
                500,
                "most popular book in the kazkh culture"));
    }
    static {
        users.add(new Users(
                2,"zhetim bala",
                "jec london",
                "trilogia",
                500,
                "about childhood one little boy"));
    }
    static {
        users.add(new Users(
                3,"kara olen",
                "Abai",
                "trilogia",
                500,
                "author Abai Kunanbayev "));
    }
    public static Users getBook(int id){
        return users.stream().filter(users -> users.getId()==id).findFirst().orElse(null);
    }

    public static void updateBook(Users userr){
        for(int i=0;i<users.size();i++){
           if(users.get(i).getId()==userr.getId()){
               System.out.println(userr.getName());
               users.set(i,userr);
               break;
           }
        }
    }

    public static void deleteBook(int id){
        for(int i=0;i<users.size();i++){
            if(users.get(i).getId()==id){
                users.remove(i);
                break;
            }
        }
    }

}
