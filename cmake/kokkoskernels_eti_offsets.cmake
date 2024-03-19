SET(KOKKOSKERNELS_INST_OFFSET_SIZE_T_DEFAULT ${KOKKOSKERNELS_ADD_DEFAULT_ETI})
SET(KOKKOSKERNELS_INST_OFFSET_INT_DEFAULT OFF)
SET(OFFSETS
  OFFSET_INT
  OFFSET_SIZE_T
)
SET(OFFSET_INT_CPP_TYPE int)
SET(OFFSET_SIZE_T_CPP_TYPE size_t)
#GLOBAL_SET(KokkosKernels_INST_OFFSET_INT64_T_DEFAULT  OFF)

KOKKOSKERNELS_ADD_OPTION(
  INST_OFFSET_INT
  ${KOKKOSKERNELS_INST_OFFSET_INT_DEFAULT}
  BOOL
  "Whether to pre instantiate kernels for the offset type int.  This option is KokkosKernels_INST_OFFSET_INT=OFF by default. Default: OFF"
  )

KOKKOSKERNELS_ADD_OPTION(
  INST_OFFSET_SIZE_T
  ${KOKKOSKERNELS_INST_OFFSET_SIZE_T_DEFAULT}
  BOOL
  "Whether to pre instantiate kernels for the offset type size_t.  This option is KokkosKernels_INST_OFFSET_SIZE_T=ON by default. Default: ON"
  )

IF (KOKKOSKERNELS_INST_OFFSET_INT)
  LIST(APPEND OFFSET_LIST "int")
ENDIF()

IF (KOKKOSKERNELS_INST_OFFSET_SIZE_T)
  LIST(APPEND OFFSET_LIST "size_t")
ENDIF()
