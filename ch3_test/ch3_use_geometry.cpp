//
// Created by davidhan on 19-5-30.
//
#include <iostream>
#include <Eigen/Core>
//eigen的关于旋转和平移的模块
#include<Eigen/Geometry>

int main()
{

    //定义一个旋转
    Eigen::Matrix3d rotation_matrix=Eigen::Matrix3d::Identity();//定义一个单位矩阵
    std::cout<<"rotation_matrix:"<<rotation_matrix<<std::endl;
    Eigen::AngleAxisd rotation_vector(M_PI/4,Eigen::Vector3d(1,0,0));//绕x轴旋转pi/4
    std::cout<<"angle_axised:"<<rotation_vector.matrix()<<std::endl;
    //如果要输出的话，需要添加.matrix
    rotation_matrix=rotation_vector.toRotationMatrix();
    std::cout<<"rotation_matrix:"<<rotation_matrix<<std::endl;

    //通过旋转角度进行坐标变换
    Eigen::Vector3d change_v3d (1,0,0);
    Eigen::Vector3d result=rotation_vector*change_v3d;
    std::cout<<"result:"<<result.transpose()<<std::endl;

    //使用欧拉角来表示,将一些旋转矩阵到欧拉角之间的变换
    Eigen::Vector3d euler_angle=rotation_matrix.eulerAngles(result(2),result(1),result(0));//zxy的顺序，输出的结果，ypr
    std::cout<<"euler_angle"<<euler_angle.transpose()<<std::endl;

    //欧式变换矩阵
    Eigen::Isometry3d matrix_T=Eigen::Isometry3d::Identity();//这是4x4的矩阵
    std::cout<<"Isometry3d:"<<matrix_T.matrix()<<std::endl;
     matrix_T.rotate(rotation_vector.matrix());
    std::cout<<"result:"<<matrix_T.matrix()<<std::endl;

    //转换成四元数，如何进行
    Eigen::Quaterniond quater=Eigen::Quaterniond(rotation_vector);
    std::cout<<"Quateriond:"<<quater.coeffs().transpose()<<std::endl;//四元数的顺序是（x,y,z,w）





















}

