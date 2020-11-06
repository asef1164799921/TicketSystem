package com.qlsf.mapper;

import com.qlsf.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface UserMapper {


    //增加用户
    int insert(User user);
    //删除用户
    int delete(Long userId);
    //修改用户
    int update(User user);
    //查询用户--分页
    List<User> selectList(User user,Long pageNo,Long pageSize);
    //查询用户总数
    int selectListCount(User user);
    //根据用户id获取用户
    User selectUserByid(Long userId);

}
