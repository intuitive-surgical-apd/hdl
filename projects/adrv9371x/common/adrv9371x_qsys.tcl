
# ad9371_tx-xcvr

add_instance avl_ad9371_tx_xcvr avl_adxcvr
set_instance_parameter_value avl_ad9371_tx_xcvr {ID} {0}
set_instance_parameter_value avl_ad9371_tx_xcvr {TX_OR_RX_N} {1}
set_instance_parameter_value avl_ad9371_tx_xcvr {PCS_CONFIG} {JESD_PCS_CFG2}
set_instance_parameter_value avl_ad9371_tx_xcvr {LANE_RATE} {4915.2}
set_instance_parameter_value avl_ad9371_tx_xcvr {REFCLK_FREQUENCY} {122.88}
set_instance_parameter_value avl_ad9371_tx_xcvr {NUM_OF_LANES} {4}
set_instance_parameter_value avl_ad9371_tx_xcvr {NUM_OF_CONVS} {4}
set_instance_parameter_value avl_ad9371_tx_xcvr {FRM_BCNT} {2}
set_instance_parameter_value avl_ad9371_tx_xcvr {FRM_SCNT} {1}
set_instance_parameter_value avl_ad9371_tx_xcvr {MF_FCNT} {32}
set_instance_parameter_value avl_ad9371_tx_xcvr {HD} {1}
set_instance_parameter_value avl_ad9144_xcvr {TX_LANE_MAP} {3 0 1 2}

add_connection sys_clk.clk avl_ad9371_tx_xcvr.sys_clk
add_connection sys_clk.clk_reset avl_ad9371_tx_xcvr.sys_resetn
add_interface tx_ref_clk clock sink
set_interface_property tx_ref_clk EXPORT_OF avl_ad9371_tx_xcvr.ref_clk
add_interface tx_data_0 conduit end
set_interface_property tx_data_0 EXPORT_OF avl_ad9371_tx_xcvr.tx_data_0
add_interface tx_data_1 conduit end
set_interface_property tx_data_1 EXPORT_OF avl_ad9371_tx_xcvr.tx_data_1
add_interface tx_data_2 conduit end
set_interface_property tx_data_2 EXPORT_OF avl_ad9371_tx_xcvr.tx_data_2
add_interface tx_data_3 conduit end
set_interface_property tx_data_3 EXPORT_OF avl_ad9371_tx_xcvr.tx_data_3
add_interface tx_sysref conduit end
set_interface_property tx_sysref EXPORT_OF avl_ad9371_tx_xcvr.sysref
add_interface tx_sync conduit end
set_interface_property tx_sync EXPORT_OF avl_ad9371_tx_xcvr.sync

# ad9371_tx-xcvr

add_instance axi_ad9371_tx_xcvr axi_adxcvr
set_instance_parameter_value axi_ad9371_tx_xcvr {ID} {0}
set_instance_parameter_value axi_ad9371_tx_xcvr {TX_OR_RX_N} {1}
set_instance_parameter_value axi_ad9371_tx_xcvr {NUM_OF_LANES} {4}
add_connection sys_clk.clk axi_ad9371_tx_xcvr.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_tx_xcvr.s_axi_reset
add_connection axi_ad9371_tx_xcvr.if_up_rst avl_ad9371_tx_xcvr.rst
add_connection avl_ad9371_tx_xcvr.ready axi_ad9371_tx_xcvr.ready
add_connection axi_ad9371_tx_xcvr.core_pll_locked avl_ad9371_tx_xcvr.core_pll_locked

# ad9371_rx-xcvr

add_instance avl_ad9371_rx_xcvr avl_adxcvr
set_instance_parameter_value avl_ad9371_rx_xcvr {ID} {1}
set_instance_parameter_value avl_ad9371_rx_xcvr {TX_OR_RX_N} {0}
set_instance_parameter_value avl_ad9371_rx_xcvr {PCS_CONFIG} {JESD_PCS_CFG2}
set_instance_parameter_value avl_ad9371_rx_xcvr {LANE_RATE} {4915.2}
set_instance_parameter_value avl_ad9371_rx_xcvr {REFCLK_FREQUENCY} {122.88}
set_instance_parameter_value avl_ad9371_rx_xcvr {NUM_OF_LANES} {2}
set_instance_parameter_value avl_ad9371_rx_xcvr {NUM_OF_CONVS} {4}
set_instance_parameter_value avl_ad9371_rx_xcvr {FRM_BCNT} {4}
set_instance_parameter_value avl_ad9371_rx_xcvr {FRM_SCNT} {1}
set_instance_parameter_value avl_ad9371_rx_xcvr {MF_FCNT} {32}
set_instance_parameter_value avl_ad9371_rx_xcvr {HD} {1}
add_connection sys_clk.clk avl_ad9371_rx_xcvr.sys_clk
add_connection sys_clk.clk_reset avl_ad9371_rx_xcvr.sys_resetn
add_interface rx_ref_clk clock sink
set_interface_property rx_ref_clk EXPORT_OF avl_ad9371_rx_xcvr.ref_clk
add_interface rx_data_0 conduit end
set_interface_property rx_data_0 EXPORT_OF avl_ad9371_rx_xcvr.rx_data_0
add_interface rx_data_1 conduit end
set_interface_property rx_data_1 EXPORT_OF avl_ad9371_rx_xcvr.rx_data_1
add_interface rx_sysref conduit end
set_interface_property rx_sysref EXPORT_OF avl_ad9371_rx_xcvr.sysref
add_interface rx_sync conduit end
set_interface_property rx_sync EXPORT_OF avl_ad9371_rx_xcvr.sync

# ad9371_rx-xcvr

add_instance axi_ad9371_rx_xcvr axi_adxcvr
set_instance_parameter_value axi_ad9371_rx_xcvr {ID} {1}
set_instance_parameter_value axi_ad9371_rx_xcvr {TX_OR_RX_N} {0}
set_instance_parameter_value axi_ad9371_rx_xcvr {NUM_OF_LANES} {2}
add_connection sys_clk.clk axi_ad9371_rx_xcvr.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_rx_xcvr.s_axi_reset
add_connection axi_ad9371_rx_xcvr.if_up_rst avl_ad9371_rx_xcvr.rst
add_connection avl_ad9371_rx_xcvr.ready axi_ad9371_rx_xcvr.ready
add_connection axi_ad9371_rx_xcvr.core_pll_locked avl_ad9371_rx_xcvr.core_pll_locked

# ad9371_rx_os-xcvr

add_instance avl_ad9371_rx_os_xcvr avl_adxcvr
set_instance_parameter_value avl_ad9371_rx_os_xcvr {ID} {1}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {TX_OR_RX_N} {0}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {PCS_CONFIG} {JESD_PCS_CFG2}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {LANE_RATE} {4915.2}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {REFCLK_FREQUENCY} {122.88}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {NUM_OF_LANES} {2}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {NUM_OF_CONVS} {2}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {FRM_BCNT} {2}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {FRM_SCNT} {1}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {MF_FCNT} {32}
set_instance_parameter_value avl_ad9371_rx_os_xcvr {HD} {1}
add_connection sys_clk.clk avl_ad9371_rx_os_xcvr.sys_clk
add_connection sys_clk.clk_reset avl_ad9371_rx_os_xcvr.sys_resetn
add_interface rx_os_ref_clk clock sink
set_interface_property rx_os_ref_clk EXPORT_OF avl_ad9371_rx_os_xcvr.ref_clk
add_interface rx_data_2 conduit end
set_interface_property rx_data_2 EXPORT_OF avl_ad9371_rx_os_xcvr.rx_data_0
add_interface rx_data_3 conduit end
set_interface_property rx_data_3 EXPORT_OF avl_ad9371_rx_os_xcvr.rx_data_1
add_interface rx_os_sysref conduit end
set_interface_property rx_os_sysref EXPORT_OF avl_ad9371_rx_os_xcvr.sysref
add_interface rx_os_sync conduit end
set_interface_property rx_os_sync EXPORT_OF avl_ad9371_rx_os_xcvr.sync

# ad9371_rx_os-xcvr

add_instance axi_ad9371_rx_os_xcvr axi_adxcvr
set_instance_parameter_value axi_ad9371_rx_os_xcvr {ID} {2}
set_instance_parameter_value axi_ad9371_rx_os_xcvr {TX_OR_RX_N} {0}
set_instance_parameter_value axi_ad9371_rx_os_xcvr {NUM_OF_LANES} {2}
add_connection sys_clk.clk axi_ad9371_rx_os_xcvr.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_rx_os_xcvr.s_axi_reset
add_connection axi_ad9371_rx_os_xcvr.if_up_rst avl_ad9371_rx_os_xcvr.rst
add_connection avl_ad9371_rx_os_xcvr.ready axi_ad9371_rx_os_xcvr.ready
add_connection axi_ad9371_rx_os_xcvr.core_pll_locked avl_ad9371_rx_os_xcvr.core_pll_locked

# ad9371-core

add_instance axi_ad9371 axi_ad9371
add_connection avl_ad9371_tx_xcvr.core_clk axi_ad9371.if_dac_clk
add_connection axi_ad9371.if_dac_tx_data avl_ad9371_tx_xcvr.ip_data
add_connection avl_ad9371_rx_xcvr.core_clk axi_ad9371.if_adc_clk
add_connection avl_ad9371_rx_xcvr.ip_sof axi_ad9371.if_adc_rx_sof
add_connection avl_ad9371_rx_xcvr.ip_data axi_ad9371.if_adc_rx_data
add_connection avl_ad9371_rx_os_xcvr.core_clk axi_ad9371.if_adc_os_clk
add_connection avl_ad9371_rx_os_xcvr.ip_sof axi_ad9371.if_adc_rx_os_sof
add_connection avl_ad9371_rx_os_xcvr.ip_data axi_ad9371.if_adc_rx_os_data
add_connection sys_clk.clk axi_ad9371.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371.s_axi_reset

# pack(s) & unpack(s)

add_instance axi_ad9371_tx_upack util_upack
set_instance_parameter_value axi_ad9371_tx_upack {NUM_OF_CHANNELS} {4}
set_instance_parameter_value axi_ad9371_tx_upack {CHANNEL_DATA_WIDTH} {32}
add_connection avl_ad9371_tx_xcvr.core_clk axi_ad9371_tx_upack.if_dac_clk
add_connection axi_ad9371_tx_upack.dac_ch_0 axi_ad9371.dac_ch_0
add_connection axi_ad9371_tx_upack.dac_ch_1 axi_ad9371.dac_ch_1
add_connection axi_ad9371_tx_upack.dac_ch_2 axi_ad9371.dac_ch_2
add_connection axi_ad9371_tx_upack.dac_ch_3 axi_ad9371.dac_ch_3

add_instance axi_ad9371_rx_cpack util_cpack
set_instance_parameter_value axi_ad9371_rx_cpack {NUM_OF_CHANNELS} {4}
set_instance_parameter_value axi_ad9371_rx_cpack {CHANNEL_DATA_WIDTH} {16}
add_connection sys_clk.clk_reset axi_ad9371_rx_cpack.if_adc_rst
add_connection avl_ad9371_rx_xcvr.core_clk axi_ad9371_rx_cpack.if_adc_clk
add_connection axi_ad9371.adc_ch_0 axi_ad9371_rx_cpack.adc_ch_0
add_connection axi_ad9371.adc_ch_1 axi_ad9371_rx_cpack.adc_ch_1
add_connection axi_ad9371.adc_ch_2 axi_ad9371_rx_cpack.adc_ch_2
add_connection axi_ad9371.adc_ch_3 axi_ad9371_rx_cpack.adc_ch_3

add_instance axi_ad9371_rx_os_cpack util_cpack
set_instance_parameter_value axi_ad9371_rx_os_cpack {NUM_OF_CHANNELS} {2}
set_instance_parameter_value axi_ad9371_rx_os_cpack {CHANNEL_DATA_WIDTH} {32}
add_connection sys_clk.clk_reset axi_ad9371_rx_os_cpack.if_adc_rst
add_connection avl_ad9371_rx_os_xcvr.core_clk axi_ad9371_rx_os_cpack.if_adc_clk
add_connection axi_ad9371.adc_os_ch_0 axi_ad9371_rx_os_cpack.adc_ch_0
add_connection axi_ad9371.adc_os_ch_1 axi_ad9371_rx_os_cpack.adc_ch_1

# dac fifo

add_interface tx_fifo_bypass conduit end
set_interface_property tx_fifo_bypass EXPORT_OF avl_ad9371_tx_fifo.if_bypass

add_connection axi_ad9371_tx_xcvr.if_up_rst avl_ad9371_tx_fifo.if_dac_rst
add_connection avl_ad9371_tx_xcvr.core_clk avl_ad9371_tx_fifo.if_dac_clk
add_connection axi_ad9371_tx_upack.if_dac_valid avl_ad9371_tx_fifo.if_dac_valid
add_connection avl_ad9371_tx_fifo.if_dac_data axi_ad9371_tx_upack.if_dac_data
add_connection avl_ad9371_tx_fifo.if_dac_dunf axi_ad9371.if_dac_dunf

# dac & adc dma

add_instance axi_ad9371_tx_dma axi_dmac
set_instance_parameter_value axi_ad9371_tx_dma {ID} {0}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_DATA_WIDTH_SRC} {128}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_DATA_WIDTH_DEST} {128}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_LENGTH_WIDTH} {24}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_2D_TRANSFER} {0}
set_instance_parameter_value axi_ad9371_tx_dma {AXI_SLICE_DEST} {0}
set_instance_parameter_value axi_ad9371_tx_dma {AXI_SLICE_SRC} {0}
set_instance_parameter_value axi_ad9371_tx_dma {SYNC_TRANSFER_START} {0}
set_instance_parameter_value axi_ad9371_tx_dma {CYCLIC} {1}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_TYPE_DEST} {1}
set_instance_parameter_value axi_ad9371_tx_dma {DMA_TYPE_SRC} {0}
set_instance_parameter_value axi_ad9371_tx_dma {FIFO_SIZE} {16}
add_connection sys_dma_clk.clk avl_ad9371_tx_fifo.if_dma_clk
add_connection sys_dma_clk.clk_reset avl_ad9371_tx_fifo.if_dma_rst
add_connection sys_dma_clk.clk axi_ad9371_tx_dma.if_m_axis_aclk
add_connection axi_ad9371_tx_dma.if_m_axis_valid avl_ad9371_tx_fifo.if_dma_valid
add_connection axi_ad9371_tx_dma.if_m_axis_data avl_ad9371_tx_fifo.if_dma_data
add_connection axi_ad9371_tx_dma.if_m_axis_last avl_ad9371_tx_fifo.if_dma_xfer_last
add_connection axi_ad9371_tx_dma.if_m_axis_xfer_req avl_ad9371_tx_fifo.if_dma_xfer_req
add_connection avl_ad9371_tx_fifo.if_dma_ready axi_ad9371_tx_dma.if_m_axis_ready
add_connection sys_clk.clk axi_ad9371_tx_dma.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_tx_dma.s_axi_reset
add_connection sys_dma_clk.clk axi_ad9371_tx_dma.m_src_axi_clock
add_connection sys_dma_clk.clk_reset axi_ad9371_tx_dma.m_src_axi_reset

add_instance axi_ad9371_rx_dma axi_dmac
set_instance_parameter_value axi_ad9371_rx_dma {ID} {0}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_DATA_WIDTH_SRC} {64}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_DATA_WIDTH_DEST} {128}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_LENGTH_WIDTH} {24}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_2D_TRANSFER} {0}
set_instance_parameter_value axi_ad9371_rx_dma {AXI_SLICE_DEST} {0}
set_instance_parameter_value axi_ad9371_rx_dma {AXI_SLICE_SRC} {0}
set_instance_parameter_value axi_ad9371_rx_dma {SYNC_TRANSFER_START} {0}
set_instance_parameter_value axi_ad9371_rx_dma {CYCLIC} {0}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_TYPE_DEST} {0}
set_instance_parameter_value axi_ad9371_rx_dma {DMA_TYPE_SRC} {2}
set_instance_parameter_value axi_ad9371_rx_dma {FIFO_SIZE} {16}
add_connection avl_ad9371_rx_xcvr.core_clk axi_ad9371_rx_dma.if_fifo_wr_clk
add_connection axi_ad9371_rx_cpack.if_adc_valid axi_ad9371_rx_dma.if_fifo_wr_en
add_connection axi_ad9371_rx_cpack.if_adc_sync axi_ad9371_rx_dma.if_fifo_wr_sync
add_connection axi_ad9371_rx_cpack.if_adc_data axi_ad9371_rx_dma.if_fifo_wr_din
add_connection axi_ad9371_rx_dma.if_fifo_wr_overflow axi_ad9371.if_adc_dovf
add_connection sys_clk.clk axi_ad9371_rx_dma.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_rx_dma.s_axi_reset
add_connection sys_dma_clk.clk axi_ad9371_rx_dma.m_dest_axi_clock
add_connection sys_dma_clk.clk_reset axi_ad9371_rx_dma.m_dest_axi_reset

add_instance axi_ad9371_rx_os_dma axi_dmac
set_instance_parameter_value axi_ad9371_rx_os_dma {ID} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_DATA_WIDTH_SRC} {64}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_DATA_WIDTH_DEST} {128}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_LENGTH_WIDTH} {24}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_2D_TRANSFER} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {AXI_SLICE_DEST} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {AXI_SLICE_SRC} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {SYNC_TRANSFER_START} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {CYCLIC} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_TYPE_DEST} {0}
set_instance_parameter_value axi_ad9371_rx_os_dma {DMA_TYPE_SRC} {2}
set_instance_parameter_value axi_ad9371_rx_os_dma {FIFO_SIZE} {16}
add_connection avl_ad9371_rx_os_xcvr.core_clk axi_ad9371_rx_os_dma.if_fifo_wr_clk
add_connection axi_ad9371_rx_os_cpack.if_adc_valid axi_ad9371_rx_os_dma.if_fifo_wr_en
add_connection axi_ad9371_rx_os_cpack.if_adc_sync axi_ad9371_rx_os_dma.if_fifo_wr_sync
add_connection axi_ad9371_rx_os_cpack.if_adc_data axi_ad9371_rx_os_dma.if_fifo_wr_din
add_connection axi_ad9371_rx_os_dma.if_fifo_wr_overflow axi_ad9371.if_adc_os_dovf
add_connection sys_clk.clk axi_ad9371_rx_os_dma.s_axi_clock
add_connection sys_clk.clk_reset axi_ad9371_rx_os_dma.s_axi_reset
add_connection sys_dma_clk.clk axi_ad9371_rx_os_dma.m_dest_axi_clock
add_connection sys_dma_clk.clk_reset axi_ad9371_rx_os_dma.m_dest_axi_reset

# ad9371 gpio

add_instance avl_ad9371_gpio altera_avalon_pio
set_instance_parameter_value avl_ad9371_gpio {direction} {Bidir}
set_instance_parameter_value avl_ad9371_gpio {generateIRQ} {1}
set_instance_parameter_value avl_ad9371_gpio {width} {19}
add_connection sys_clk.clk avl_ad9371_gpio.clk
add_connection sys_clk.clk_reset avl_ad9371_gpio.reset
add_interface ad9371_gpio conduit end
set_interface_property ad9371_gpio EXPORT_OF avl_ad9371_gpio.external_connection

# reconfig sharing

add_instance avl_adxcfg_0 avl_adxcfg
add_connection sys_clk.clk avl_adxcfg_0.rcfg_clk
add_connection sys_clk.clk_reset avl_adxcfg_0.rcfg_reset_n
add_connection avl_adxcfg_0.rcfg_m0 avl_ad9371_tx_xcvr.phy_reconfig_0
add_connection avl_adxcfg_0.rcfg_m1 avl_ad9371_rx_xcvr.phy_reconfig_0

add_instance avl_adxcfg_1 avl_adxcfg
add_connection sys_clk.clk avl_adxcfg_1.rcfg_clk
add_connection sys_clk.clk_reset avl_adxcfg_1.rcfg_reset_n
add_connection avl_adxcfg_1.rcfg_m0 avl_ad9371_tx_xcvr.phy_reconfig_1
add_connection avl_adxcfg_1.rcfg_m1 avl_ad9371_rx_xcvr.phy_reconfig_1

add_instance avl_adxcfg_2 avl_adxcfg
add_connection sys_clk.clk avl_adxcfg_2.rcfg_clk
add_connection sys_clk.clk_reset avl_adxcfg_2.rcfg_reset_n
add_connection avl_adxcfg_2.rcfg_m0 avl_ad9371_tx_xcvr.phy_reconfig_2
add_connection avl_adxcfg_2.rcfg_m1 avl_ad9371_rx_os_xcvr.phy_reconfig_0

add_instance avl_adxcfg_3 avl_adxcfg
add_connection sys_clk.clk avl_adxcfg_3.rcfg_clk
add_connection sys_clk.clk_reset avl_adxcfg_3.rcfg_reset_n
add_connection avl_adxcfg_3.rcfg_m0 avl_ad9371_tx_xcvr.phy_reconfig_3
add_connection avl_adxcfg_3.rcfg_m1 avl_ad9371_rx_os_xcvr.phy_reconfig_1

# addresses

ad_cpu_interconnect 0x00010000 avl_adxcfg_0.rcfg_s0
ad_cpu_interconnect 0x00011000 avl_adxcfg_0.rcfg_s1
ad_cpu_interconnect 0x00012000 avl_adxcfg_1.rcfg_s0
ad_cpu_interconnect 0x00013000 avl_adxcfg_1.rcfg_s1
ad_cpu_interconnect 0x00014000 avl_adxcfg_2.rcfg_s0
ad_cpu_interconnect 0x00015000 avl_adxcfg_2.rcfg_s1
ad_cpu_interconnect 0x00016000 avl_adxcfg_3.rcfg_s0
ad_cpu_interconnect 0x00017000 avl_adxcfg_3.rcfg_s1
ad_cpu_interconnect 0x00018000 avl_ad9371_tx_xcvr.core_pll_reconfig
ad_cpu_interconnect 0x00019000 avl_ad9371_tx_xcvr.ip_reconfig
ad_cpu_interconnect 0x0001a000 avl_ad9371_tx_xcvr.lane_pll_reconfig
ad_cpu_interconnect 0x0001b000 avl_ad9371_rx_xcvr.core_pll_reconfig
ad_cpu_interconnect 0x0001c000 avl_ad9371_rx_xcvr.ip_reconfig
ad_cpu_interconnect 0x0001d000 avl_ad9371_rx_os_xcvr.core_pll_reconfig
ad_cpu_interconnect 0x0001e000 avl_ad9371_rx_os_xcvr.ip_reconfig
ad_cpu_interconnect 0x00020000 axi_ad9371_tx_xcvr.s_axi
ad_cpu_interconnect 0x00030000 axi_ad9371_rx_xcvr.s_axi
ad_cpu_interconnect 0x00040000 axi_ad9371_rx_os_xcvr.s_axi
ad_cpu_interconnect 0x00050000 axi_ad9371_tx_dma.s_axi
ad_cpu_interconnect 0x00060000 axi_ad9371_rx_dma.s_axi
ad_cpu_interconnect 0x00070000 axi_ad9371_rx_os_dma.s_axi
ad_cpu_interconnect 0x00080000 axi_ad9371.s_axi
ad_cpu_interconnect 0x00090000 avl_ad9371_gpio.s1

# dma interconnects

ad_dma_interconnect axi_ad9371_tx_dma.m_src_axi
ad_dma_interconnect axi_ad9371_rx_dma.m_dest_axi
ad_dma_interconnect axi_ad9371_rx_os_dma.m_dest_axi

# interrupts

ad_cpu_interrupt 11 axi_ad9371_tx_dma.interrupt_sender
ad_cpu_interrupt 12 axi_ad9371_rx_dma.interrupt_sender
ad_cpu_interrupt 13 axi_ad9371_rx_os_dma.interrupt_sender
ad_cpu_interrupt 14 avl_ad9371_gpio.irq

