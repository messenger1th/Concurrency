cmake_minimum_required(VERSION 3.20)
project(Concurrency)

set(CMAKE_CXX_STANDARD 17)

add_executable(Concurrency main.cpp Queue/ThreadSafeQueue.cpp Queue/ThreadSafeQueue.h)
