package dao;

import pojo.Type;
import pojo.User;

public interface UserMapper {
    public User selectByUser(User obj);

    public Integer getCountByUser(User obj);

    public Integer addByUser(User obj);

    public Integer updateByUser(User obj);

    public Integer delByUser(User obj);

    public Type selectByType(Type obj);
}