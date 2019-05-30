//
// Created by davidhan on 19-5-30.
//

#ifndef CH3_TEST_CH3_USE_EIGEN_H
#define CH3_TEST_CH3_USE_EIGEN_H

#include <Eigen/Core>//基本的数组
#include <Eigen/Geometry>//平移和旋转
#include <Eigen/LU>//LU分解
#include <iostream>

class ch3_use_eigen {
public:
    Eigen::Matrix<double,2,1> matrix_21;//定义两行一列的矩阵
    Eigen::Vector3d vector_3d;//定义一个3行的列向量
    Eigen::Matrix<double,3,3> matrix_33;
    Eigen::Matrix<double,4,4> matrix_44;
    Eigen::Matrix<double,50,50> matrix_50;
    Eigen::Vector4d v_4d;
    Eigen::VectorXd v_50d;
public:
    //初始化列表
    ch3_use_eigen()
    {

     this->matrix_21<<1,2;
     this->vector_3d<<3,4,5;
     this->v_4d=Eigen::Vector4d::Random();
     for(int i=0;i<3;i++) {
         for (int j = 0; j < 3; j++)
             this->matrix_33(i,j)=j+1;
     }
     this->matrix_44=Eigen::Matrix4d::Random();
     this->matrix_50=Eigen::MatrixXd::Random(50,50);
     this->v_50d=Eigen::VectorXd::Random(50);

    }
};


#endif //CH3_TEST_CH3_USE_EIGEN_H
