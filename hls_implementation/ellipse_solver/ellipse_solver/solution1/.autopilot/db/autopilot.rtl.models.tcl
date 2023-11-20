set SynModuleInfo {
  {SRCNAME ellipse_solver_Pipeline_1 MODELNAME ellipse_solver_Pipeline_1 RTLNAME ellipse_solver_ellipse_solver_Pipeline_1
    SUBMODULES {
      {MODELNAME ellipse_solver_flow_control_loop_pipe_sequential_init RTLNAME ellipse_solver_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME ellipse_solver_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME ellipse_solver_Pipeline_first_loop MODELNAME ellipse_solver_Pipeline_first_loop RTLNAME ellipse_solver_ellipse_solver_Pipeline_first_loop
    SUBMODULES {
      {MODELNAME ellipse_solver_mul_32s_32s_32_1_1 RTLNAME ellipse_solver_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ellipse_solver_Pipeline_second_loop MODELNAME ellipse_solver_Pipeline_second_loop RTLNAME ellipse_solver_ellipse_solver_Pipeline_second_loop
    SUBMODULES {
      {MODELNAME ellipse_solver_mux_134_32_1_1 RTLNAME ellipse_solver_mux_134_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME ellipse_solver MODELNAME ellipse_solver RTLNAME ellipse_solver IS_TOP 1
    SUBMODULES {
      {MODELNAME ellipse_solver_control_s_axi RTLNAME ellipse_solver_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
