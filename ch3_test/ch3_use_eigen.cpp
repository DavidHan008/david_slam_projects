//
// Created by davidhan on 19-5-30.
//

#include "ch3_use_eigen.h"
#include <iostream>
#include<Eigen/Dense>
#include <ctime>


int main()
{
    std::cout<<"david-ch3-use-eigen-start"<<std::endl;
    ch3_use_eigen test;
    //给某个元素进行赋值
    std::cout<<"inital:"<<test.vector_3d<<std::endl;
    test.vector_3d(1)=0;
    std::cout<<"change:"<<test.vector_3d<<std::endl;
    //在使用<<的时候，必须输等同的个数，不然就会报错
    test.vector_3d<<1,2,3;
    std::cout<<"change:"<<test.vector_3d<<std::endl;
    //
    std::cout<<"inital:"<<test.matrix_33<<std::endl;
    //前后的数据结构必须是一样的。例如double对应的double,int对应的int，如果两个不对应的话，那么需要将他通过
    //cast转成同一个数据类型
    Eigen::Matrix<double,3,1> cast_matrix_33=test.matrix_33.cast<double>()*test.vector_3d;
    //Eigen::Matrix<double,3,1> cast_matrix_33=test.matrix_33*test.vector_3d;
    std::cout<<"result:"<<cast_matrix_33<<std::endl;
    std::cout<<"inital:"<<test.matrix_44<<std::endl;
    //定义数组的转置
    std::cout<<"transpose:"<<test.matrix_44.transpose()<<std::endl;
    //数组求和
    std::cout<<"sum:"<<test.matrix_33.sum()<<std::endl;//求的是所有的矩阵的和
    //数组的迹  （从左上方至右下方的对角线）上各个元素的总和被称为矩阵A的迹
    std::cout<<"trace:"<<test.matrix_33.trace()<<std::endl;

    std::cout<<"inverse:"<<test.matrix_44.inverse()<<std::endl;
    //证明
    Eigen::Matrix4d matrix_44_result=test.matrix_44*test.matrix_44.inverse();
    std::cout<<"result:"<<matrix_44_result<<std::endl;//近似将这个矩阵认为是一个单位矩阵
    //行列式
    std::cout<<"determinant:"<<test.matrix_44.determinant()<<std::endl;
    //实对称矩阵：就是A的转置等于A
    //求解特征值
    //需要添加头文件Eigen/Dense
    Eigen::SelfAdjointEigenSolver<Eigen::Matrix4d> eigen_solver(test.matrix_44.inverse()*test.matrix_44);
    std::cout<<"特征值eigen value:"<<eigen_solver.eigenvalues()<<std::endl;
    std::cout<<"特征向量 eigen vector:"<<eigen_solver.eigenvectors()<<std::endl;
    //什么叫特征值的特征向量，首先特征值是个数字。
    //特征向量是个向量。
    //那么Au=lmda U 那么，lmda就是特征值，U是特征向量。


    //求解线性方程：matrix_44 * x=v_4d;
    Eigen::Matrix<double,50,1> result_4d;//这边不能够定义Matrix4d
    //添加ctime用来计时
//通过求解逆
      clock_t start_time=clock();
      result_4d=test.matrix_50.inverse()*test.v_50d;
     // std::cout<<"solver_function_result："<<result_4d<<std::endl;
      std::cout<<"inverse_spend_time:"<< 1000* (clock() - start_time)/(double)CLOCKS_PER_SEC<<std::endl;
//    通过svd分解

      clock_t start_time_2=clock();
      result_4d=test.matrix_50.colPivHouseholderQr().solve(test.v_50d);
    //  std::cout<<"solver_function_result："<<result_4d<<std::endl;
       std::cout<<"svd_spend_time:"<< 1000* (clock() - start_time_2)/(double)CLOCKS_PER_SEC<<std::endl;

      std::cout<<"david-ch3-use-eigen-end"<<std::endl;

    //结论，就是的矩阵，通过求逆矩阵快，大的矩阵，通过QR分解快


    return 0;
}



