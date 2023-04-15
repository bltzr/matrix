cmake_minimum_required(VERSION 3.13 FATAL_ERROR)

if(NOT TARGET score_lib_base)
  include(ScoreExternalAddon)
endif()

include(ScoreAvndHelper)

project(score_addon_matrix LANGUAGES CXX)

avnd_score_plugin_init(
  BASE_TARGET score_addon_matrix
)

avnd_score_plugin_add(
  BASE_TARGET score_addon_matrix
  SOURCES
    matrix/matrix.hpp
    matrix/matrixModel.hpp
    matrix/matrixModel.cpp
    matrix/matrixUi.hpp
  TARGET my_gain
  MAIN_CLASS matrix
  NAMESPACE Example
)

avnd_score_plugin_finalize(
  BASE_TARGET score_addon_matrix
  PLUGIN_VERSION 1
  PLUGIN_UUID "1057641E-4253-4BD3-802B-09F063FF559C"
)
