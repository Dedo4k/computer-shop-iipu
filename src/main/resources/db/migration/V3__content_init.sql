insert into component (id, model, producer, price)
       values (1, '11900K', 'Intel', 1509.00);
insert into processor (core, max_freq, min_freq, socket, core_number, crystal_name, thermal_power, id)
       values ('Core i9', 5.3, 3.5, 'LGA1200', 8, 'Rocket Lake', 125, 1);

insert into component_source (id, component_id, name, link)
       values (1, 1, 'Onliner.by', 'https://catalog.onliner.by/cpu/intel/corei911900k');

insert into component_source (id, component_id, name, link)
       values (2, 1, 'FK.by', 'https://fk.by/processor-intel-core-i9-11900k-157460');

insert into component_source (id, component_id, name, link)
       values (3, 1, 'AMD.by', 'https://www.amd.by/processory/intel-core-i9-11900k/');

insert into component_source (id, component_id, name, link)
       values (4, 1, 'Socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/protsessory/protsessor-intel-core-i9-11900k-3-5ghz-socket-1200-box/');

insert into component (id, model, producer, price)
       values (2, '3600', 'AMD', 569.31);
insert into processor (core, max_freq, min_freq, socket, core_number, crystal_name, thermal_power, id)
       values ('Ryzen 5', 4.2, 3.6, 'AM4', 6, 'Matisse', 65, 2);

insert into component_source (id, component_id, name, link)
       values (5, 2, 'amd.by', 'https://www.amd.by/processory/amd-ryzen-5-3600/');

insert into component_source (id, component_id, name, link)
       values (6, 2, '234.by', 'https://234.by/amd-ryzen-5-3600-2.html?utm_source=shop_by');

insert into component_source (id, component_id, name, link)
       values (7, 2, 'ram.by', 'https://ram.by/amd-ryzen-5-3600.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=8&utm_term=443039');

insert into component_source (id, component_id, name, link)
       values (8, 2, 'fk.by', 'https://fk.by/processor-amd-ryzen-5-3600-multipack-145437');

insert into component (id, model, producer, price)
       values (3, '11400', 'Intel', 555.00);
insert into processor (core, max_freq, min_freq, socket, core_number, crystal_name, thermal_power, id)
       values ('Core i5', 4.4, 2.6, 'LGA1200', 6, 'Rocket Lake', 65, 3);

insert into component_source (id, component_id, name, link)
       values (9, 3, 'amd.by', 'https://www.amd.by/processory/intel-core-i5-11400/');

insert into component_source (id, component_id, name, link)
       values (10, 3, '234.by', 'https://234.by/processor-intel-core-i5-11400.html?utm_source=shop_by');

insert into component_source (id, component_id, name, link)
       values (11, 3, 'shop.by', 'https://shop.by/protsessory/intel_core_i5_11400_box/#shop');

insert into component (id, model, producer, price)
       values (4, '3700X', 'AMD', 742.19);
insert into processor (core, max_freq, min_freq, socket, core_number, crystal_name, thermal_power, id)
       values ('Ryzen 7', 4.4, 3.6, 'AM4', 8, 'Matisse', 65, 4);

insert into component_source (id, component_id, name, link)
       values (12, 4, 'amd.by', 'https://www.amd.by/processory/amd-ryzen-7-3700x/');

insert into component_source (id, component_id, name, link)
       values (13, 4, '234.by', 'https://234.by/amd-ryzen-7-3700x-2.html?utm_source=shop_by');

insert into component_source (id, component_id, name, link)
       values (14, 4, 'shop.by', 'https://shop.by/protsessory/amd_ryzen_7_3700x/#shop');

insert into component (id, model, producer, price)
       values (5, '10700K', 'Intel', 923.47);
insert into processor (core, max_freq, min_freq, socket, core_number, crystal_name, thermal_power, id)
       values ('Core i7', 5.1, 3.8, 'LGA1200', 8, 'Comet Lake', 125, 5);

insert into component_source (id, component_id, name, link)
       values (15, 5, 'shop.by', 'https://shop.by/protsessory/intel_core_i7_10700k/#shop');

insert into component_source (id, component_id, name, link)
       values (16, 5, 'amd.by', 'https://www.amd.by/processory/intel-core-i7-10700k/');

insert into component_source (id, component_id, name, link)
       values (17, 5, '234.by', 'https://234.by/intel-core-i7-10700k-box.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (6, 'DUAL', 'Palit', 2399.00);
insert into graphics_card (gpu_model, gpu_producer, video_memory, video_memory_type, gpu_interface, height, length, recommented_power, id)
       values ('GeForce RTX 3060', 'NVIDIA', 12, 'GDDR6', 'PCI Express 4.0 x16', 119, 245, 550, 6);

insert into component_source (id, component_id, name, link)
       values (18, 6, 'shop.by', 'https://shop.by/videokarty/palit_geforce_rtx_3060_dual_12gb_gddr6_ne63060019k9_190ad/#shop');

insert into component_source (id, component_id, name, link)
       values (19, 6, 'amd.by', 'https://www.amd.by/videokarty/palit-geforce-rtx-3060-dual-12gb-gddr6-ne63060019k9-190ad/');

insert into component_source (id, component_id, name, link)
       values (20, 6, '234.by', 'https://234.by/palit-geforce-rtx-3060-dual-12gb-gddr6-ne63060019k9-190ad.html?utm_source=shop_by');

insert into component_source (id, component_id, name, link)
       values (21, 6, 'ram.by', 'https://ram.by/videokarta-palit-geforce-rtx-3060-dual-12gb-gddr6-ne63060019k9-190ad.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=15&utm_term=470114');

insert into component_source (id, component_id, name, link)
       values (22, 6, 'fk.by', 'https://fk.by/videokarta-palit-geforce-rtx-3060-dual-12gb-gddr6-ne63060019k9-190ad-156051');

insert into component (id, model, producer, price)
       values (7, 'D6 WINDFORCE OC', 'Gigabyte', 1030.19);
insert into graphics_card (gpu_model, gpu_producer, video_memory, video_memory_type, gpu_interface, height, length, recommented_power, id)
       values ('GeForce GTX 1650', 'NVIDIA', 4, 'GDDR6', 'PCI Express 3.0 x16', 112, 191, 300, 7);

insert into component_source (id, component_id, name, link)
       values (23, 7, 'shop.by', 'https://shop.by/videokarty/gigabyte_gv_n1650oc_4gd/#shop');

insert into component_source (id, component_id, name, link)
       values (24, 7, 'ram.by', 'https://ram.by/videokarta-gigabyte-nvidia-geforce-gtx-1650-4gb-gv-n1650oc-4gd.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=15&utm_term=437171');

insert into component_source (id, component_id, name, link)
       values (25, 7, 'fk.by', 'https://fk.by/videokarta-gigabyte-geforce-gtx-1650-oc-4gb-gddr5-gv-n1650oc-4gd-115102');

insert into component (id, model, producer, price)
       values (8, 'V2 OC Edition', 'ASUS ROG Strix', 2899.00);
insert into graphics_card (gpu_model, gpu_producer, video_memory, video_memory_type, gpu_interface, height, length, recommented_power, id)
       values ('GeForce RTX 3060 Ti', 'NVIDIA', 8, 'GDDR6', 'PCI Express 4.0 x16', 140, 318, 750, 8);

insert into component_source (id, component_id, name, link)
       values (26, 8, 'shop.by', 'https://shop.by/videokarty/asus_rog_strix_geforce_rtx_3060_ti_v2_oc_edition_8gb_gddr6_lhr/#shop');

insert into component_source (id, component_id, name, link)
       values (27, 8, 'izliv.by', 'https://izliv.by/asus_rog_strix_geforce_rtx_3060_ti_v2_oc_edition_8gb_gddr6_lhr');

insert into component (id, model, producer, price)
       values (9, 'Ventus XS OC', 'MSI', 2050.00);
insert into graphics_card (gpu_model, gpu_producer, video_memory, video_memory_type, gpu_interface, height, length, recommented_power, id)
       values ('GeForce GTX 1660 Super', 'NVIDIA', 6, 'GDDR6', 'PCI Express 3.0 x16', 128, 204, 450, 9);

insert into component_source (id, component_id, name, link)
       values (28, 9, 'shop.by', 'https://shop.by/videokarty/msi_gtx_1660_super_ventus_xs_oc/#shop');

insert into component_source (id, component_id, name, link)
       values (29, 9, 'ram.by', 'https://ram.by/videokarta-msi-geforce-gtx-1660-super-ventus-xs-oc-6gb-gddr5.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=15&utm_term=446610');

insert into component_source (id, component_id, name, link)
       values (30, 9, 'fk.by', 'https://fk.by/videokarta-msi-geforce-gtx-1660-super-ventus-xs-oc-6gb-gddr6-124784');

insert into component (id, model, producer, price)
       values (10, 'TUF Gaming OC Edition', 'ASUS', 5990.00);
insert into graphics_card (gpu_model, gpu_producer, video_memory, video_memory_type, gpu_interface, height, length, recommented_power, id)
       values ('GeForce RTX 3080 Ti', 'NVIDIA', 12, 'GDDR6X', 'PCI Express 4.0 x16', 126, 299, 850, 10);

insert into component_source (id, component_id, name, link)
       values (31, 10, 'shop.by', 'https://shop.by/videokarty/asus_tuf_gaming_geforce_rtx_3080_ti_12gb_gddr6x/#shop');

insert into component_source (id, component_id, name, link)
       values (32, 10, 'amd.by', 'https://www.amd.by/videokarty/asus-tuf-gaming-geforce-rtx-3080-ti-12gb-gddr6x/');

insert into component_source (id, component_id, name, link)
       values (33, 10, 'fk.by', 'https://fk.by/videokarta-asus-tuf-gaming-geforce-rtx-3080-ti-12gb-gddr6x-164351');

insert into component (id, model, producer, price)
       values (11, 'B450M S2H', 'Gigabyte', 166.02);
insert into mother_board (pci_version, chipset, form_factor, length, m_two, memory_slots, memory_type, socket, width, id)
       values ('3.0 and 2.0','AMD B450', 'mAtx', 244, 1, 2, 'DDR4', 'AM4', 205, 11);

insert into component_source (id, component_id, name, link)
       values (34, 11, 'shop.by', 'https://shop.by/materinskie_platy/gigabyte_b450m_s2h_rev_1_0/#shop');

insert into component_source (id, component_id, name, link)
       values (35, 11, 'amd.by', 'https://www.amd.by/materinskie-platy/gigabyte-b450m-s2h-v2-rev--1-0/');

insert into component_source (id, component_id, name, link)
       values (36, 11, '234.by', 'https://234.by/materinskaja-plata-gigabyte-b450m-s2h-v2-rev-1-0.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (12, 'B560M-HDV', 'ASRock', 205.07);
insert into mother_board (pci_version, chipset, form_factor, length, m_two, memory_slots, memory_type, socket, width, id)
       values ('4.0 and 3.0','Intel B560', 'mAtx', 244, 2, 2, 'DDR4', 'LGA1200', 198, 12);

insert into component_source (id, component_id, name, link)
       values (37, 12, 'shop.by', 'https://shop.by/materinskie_platy/asrock_b560m_hdv/#shop');

insert into component_source (id, component_id, name, link)
       values (38, 12, 'amd.by', 'https://www.amd.by/materinskie-platy/asrock-b560m-hdv/');

insert into component_source (id, component_id, name, link)
       values (39, 12, '234.by', 'https://234.by/asrock-b560m-hdv.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (13, 'TUF B450M-Pro Gaming', 'ASUS', 237.39);
insert into mother_board (pci_version, chipset, form_factor, length, m_two, memory_slots, memory_type, socket, width, id)
       values ('3.0 and 2.0','AMD B450', 'mAtx', 244, 2, 4, 'DDR4', 'AM4',244 , 13);

insert into component_source (id, component_id, name, link)
       values (40, 13, 'shop.by', 'https://shop.by/materinskie_platy/asus_tuf_b450m_pro_gaming/#shop');

insert into component_source (id, component_id, name, link)
       values (41, 13, 'amd.by', 'https://www.amd.by/materinskie-platy/asus-tuf-b450m-pro-gaming/');

insert into component_source (id, component_id, name, link)
       values (42, 13, '234.by', 'https://234.by/materinskaja-plata-asus-tuf-b450m-pro-gaming-1.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (14, 'MAG B550 Tomahawk', 'MSI', 467.00);
insert into mother_board (pci_version, chipset, form_factor, length, m_two, memory_slots, memory_type, socket, width, id)
       values ('4.0 and 3.0','AMD B550', 'ATX', 244, 2, 4, 'DDR4', 'AM4', 305, 14);

insert into component_source (id, component_id, name, link)
       values (43, 14, 'shop.by', 'https://shop.by/materinskie_platy/msi_mag_b550_tomahawk/#shop');

insert into component_source (id, component_id, name, link)
       values (44, 14, 'force.by', 'https://www.force.shop.by/kompjuternaja-tekhnika/kompjuternye-komplektujuschie/materinskie-platy/materinskaja-plata-msi-mag-b550-tomahawk/');

insert into component (id, model, producer, price)
       values (15, 'Z690 Gaming X', 'Gigabyte', 763.15);
insert into mother_board (pci_version, chipset, form_factor, length, m_two, memory_slots, memory_type, socket, width, id)
       values ('5.0','Intel Z690', 'ATX', 244, 4, 4, 'DDR4', 'LGA1700', 305, 15);

insert into component_source (id, component_id, name, link)
       values (45, 15, 'fk.by', 'https://fk.by/materinskaya-plata-gigabyte-z690-gaming-x-ddr4-rev-1-0-167557');

insert into component (id, model, producer, price)
       values (16, 'Pure Base 500 BG035', 'be quiet!', 195.03);
insert into computer_case (case_type, colour, material, section_number, compatible_motherboards, depth, height, max_graphics_card_width, max_power_unit_width, weight, width, id)
       values ('Mid Tower', 'white/белый', 'metal/метал', 6,'ATX, micro-ATX, mini-ITX', 450, 463, 369, 258, 6.95, 463,  16);

insert into component_source (id, component_id, name, link)
       values (46, 16, 'shop.by', 'https://shop.by/korpusa_dlya_kompyutera/be_quiet_pure_base_500_bg035/#shop');

insert into component_source (id, component_id, name, link)
       values (47, 16, 'ram.by', 'https://ram.by/korpus-be-quiet-pure-base-500-bg035.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=53&utm_term=448226');

insert into component_source (id, component_id, name, link)
       values (48, 16, 'fk.by', 'https://fk.by/korpus-be-quiet-pure-base-500-bg035-136477');

insert into component (id, model, producer, price)
       values (17, 'MATREXX 55 V3', 'DeepCool', 186.03);
insert into computer_case (case_type, colour, material, section_number, compatible_motherboards, depth, height, max_graphics_card_width, max_power_unit_width, weight, width, id)
       values ('Mid Tower', 'white/белый', 'metal/метал', 6,'ATX, micro-ATX, eATX, mini-ITX', 446, 479, 370, 170, 7.4, 479, 17);

insert into component_source (id, component_id, name, link)
       values (49, 17, 'shop.by', 'hhttps://shop.by/korpusa_dlya_kompyutera/deepcool_matrexx_55_v3_add_rgb_3f_dp_atx_matrexx55v3_ar_3f/#shop');

insert into component_source (id, component_id, name, link)
       values (50, 17, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/korpusa/korpus-deepcool-matrexx-55-v3-dp-atx-matrexx55v3-ar-3f/');

insert into component_source (id, component_id, name, link)
       values (51, 17, 'ram.by', 'https://ram.by/korpus-deepcool-matrexx-55-v3-add-rgb-dp-atx-matrexx55v3-ar-3f.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=53&utm_term=449004');

insert into component (id, model, producer, price)
       values (18, 'Silent Base 802 Window', 'be quiet!', 474.60);
insert into computer_case (case_type, colour, material, section_number, compatible_motherboards, depth, height, max_graphics_card_width, max_power_unit_width, weight, width, id)
       values ('Mid Tower', 'black/черный', 'steel/сталь', 6,'ATX, micro-ATX, mini-ITX', 539, 553, 432, 288, 13.15, 553, 18);

insert into component_source (id, component_id, name, link)
       values (52, 18, 'shop.by', 'https://shop.by/korpusa_dlya_kompyutera/be_quiet_silent_base_802_bgw39/#shop');

insert into component_source (id, component_id, name, link)
       values (53, 18, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/korpusa/korpus-bgw39-be-quiet-silent-base-802-window-black-eatx-usb-3-2-type-c-3xfan/');

insert into component_source (id, component_id, name, link)
       values (54, 18, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/kompyuternye-korpusa-bez-bloka-pitaniya/korpus-be-quiet-silent-base-802-bgw39-chyernyy-s-oknom-bez-bp/');

insert into component (id, model, producer, price)
       values (19, 'N5 MF', 'Zalman', 100.20);
insert into computer_case (case_type, colour, material, section_number, compatible_motherboards, depth, height, max_graphics_card_width, max_power_unit_width, weight, width, id)
       values ('Mid Tower', 'black/черный', 'plastic/пластик', 5,'ATX, micro-ATX, mini-ITX', 437, 450, 365, 160, 3.6, 450, 19);

insert into component_source (id, component_id, name, link)
       values (55, 19, 'shop.by', 'https://shop.by/korpusa_dlya_kompyutera/zalman_n5_mf/#shop');

insert into component_source (id, component_id, name, link)
       values (56, 19, 'ram.by', 'https://ram.by/korpus-zalman-n5-mf.html?utm_source=shop_by_yml&utm_medium=place&utm_campaign=53&utm_term=457757');

insert into component_source (id, component_id, name, link)
       values (57, 19, 'fk.by', 'https://fk.by/korpus-zalman-n5-mf-142478');

insert into component (id, model, producer, price)
       values (20, 'FireBase X2', '1stPlayer', 94.99);
insert into computer_case (case_type, colour, material, section_number, compatible_motherboards, depth, height, max_graphics_card_width, max_power_unit_width, weight, width, id)
       values ('Mid Tower', 'black/черный', 'steel/сталь', 7,'ATX, micro-ATX, mini-ITX', 326, 398, 310, 170, 3.8, 398, 20);

insert into component_source (id, component_id, name, link)
       values (58, 20, 'fk.by', 'https://fk.by/korpus-1stplayer-firebase-x2-128190');

insert into component_source (id, component_id, name, link)
       values (59, 20, 'multicom.by', 'https://multicom.by/catalog/korpusa/1stplayer-firebase-x2?utm_source=market&utm_term=M0230628');

insert into component (id, model, producer, price)
       values (21, 'P2', 'Crucial', 245.84);
insert into ssd (capacity, controller, form_factor, reading_speed, ssd_interface, writing_speed, recording_resource, microchip_type, id)
       values (1000, 'Phison PS5013-E13T', 'M.2', 2400, 'PCI Express 3.0 x4 (NVMe)', 1800, 300, '3D QLC', 21);

insert into component_source (id, component_id, name, link)
       values  (60, 21, 'shop.by', 'https://shop.by/zhestkie_diski/crucial_p2_ct1000p2ssd8/#shop');

insert into component_source (id, component_id, name, link)
       values  (61, 21, 'amd.by', 'https://www.amd.by/344-ssd/crucial-p2-1tb-ct1000p2ssd8/');

insert into component_source (id, component_id, name, link)
       values  (62, 21, '234.by', 'https://234.by/crucial-p2-1tb-ct1000p2ssd8.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (22, '870 Evo', 'Samsung', 224.85);
insert into ssd (capacity, controller, form_factor, reading_speed, ssd_interface, writing_speed, recording_resource, microchip_type, id)
       values (500, 'Samsung MKX', '2.5"', 560, 'SATA 3.0', 530, 600, '3D TLC', 22);

insert into component_source (id, component_id, name, link)
       values (63, 22, 'shop.by', 'https://shop.by/zhestkie_diski/samsung_870_evo_1tb_mz_77e1t0bw/#shop');

insert into component_source (id, component_id, name, link)
       values (64, 22, 'amd.by', 'https://www.amd.by/344-ssd/samsung-870-evo-1tb-mz-77e1t0bw/');

insert into component_source (id, component_id, name, link)
       values (65, 22, '234.by', 'https://234.by/samsung-870-evo-1tb-mz-77e1t0bw.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (23, 'NV1', 'Kingston', 141.80);
insert into ssd (capacity, controller, form_factor, reading_speed, ssd_interface, writing_speed, recording_resource, microchip_type, id)
       values (500, '-', 'M.2', 2000, 'PCI Express 3.0 x4', 1700, 480, '3D TLC', 23);

insert into component_source (id, component_id, name, link)
       values (66, 23, 'shop.by', 'https://shop.by/zhestkie_diski/kingston_nv1_2tb_snvs_2000g/#shop');

insert into component_source (id, component_id, name, link)
       values (67, 23, 'amd.by', 'https://www.amd.by/344-ssd/kingston-nv1-2tb-snvs2000g/');

insert into component_source (id, component_id, name, link)
       values (68, 23, '234.by', 'https://234.by/ssd-kingston-nv1-2tb-snvs-2000g.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (24, 'Radeon R5', 'AMD', 142.04);
insert into ssd (capacity, controller, form_factor, reading_speed, ssd_interface, writing_speed, recording_resource, microchip_type, id)
       values (512, 'Silicon Motion SM2258XT', '2.5"', 540, 'SATA 3.0', 460, 150, '3D TLC', 24);

insert into component_source (id, component_id, name, link)
       values (69, 24, 'shop.by', 'https://shop.by/zhestkie_diski/amd_radeon_r5_nvme_r5mp512g8/#shop');

insert into component_source (id, component_id, name, link)
       values (70, 24, '234.by', 'https://234.by/ssd-amd-radeon-r5-nvme-512gb-r5mp512g8.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (25, '870 QVO', 'Samsung', 275.00);
insert into ssd (capacity, controller, form_factor, reading_speed, ssd_interface, writing_speed, recording_resource, microchip_type, id)
       values (1000, 'Samsung MKX', '2.5"', 560, 'SATA 3.0', 530, 360, 'MLC', 25);

insert into component_source (id, component_id, name, link)
       values (71, 25, 'shop.by', 'https://shop.by/zhestkie_diski/samsung_870_qvo_mz_77q1t0bw/#shop');

insert into component_source (id, component_id, name, link)
       values (72, 25, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/tvyerdotelnye-nakopiteli-ssd/ssd-nakopitel-2-5-samsung-870-qvo-1000gb-mz-77q1t0b/');

insert into component_source (id, component_id, name, link)
       values (73, 25, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/Zhestkie_diski_SSD/id-221198/');

insert into component (id, model, producer, price)
       values (26, 'L200', 'Toshiba', 107.63);
insert into hdd (buffer_size, capacity, form_factor, rotation_speed, hdd_interface, thickness, id)
       values (128, 1000, '2.5"', 5400, 'SATA 3.0 (6Gbps)', 7, 26);

insert into component_source (id, component_id, name, link)
       values (74, 26, 'shop.by', 'https://shop.by/zhestkie_diski/toshiba_l200_hdwl110uzsva/#shop');

insert into component_source (id, component_id, name, link)
       values (75, 26, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/zhyestkie-diski/zhestkiy-disk-toshiba-l200-slim-1000gb-hdwl110uzsva/');

insert into component_source (id, component_id, name, link)
       values (76, 26, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/zh_stkie_diski/id-129658/');

insert into component (id, model, producer, price)
       values (27, 'Red Plus', 'WD', 560.00);
insert into hdd (buffer_size, capacity, form_factor, rotation_speed, hdd_interface, thickness, id)
       values (256, 8000, '3.5"', 7200, 'SATA 3.0 (6Gbps)', 26, 27);

insert into component_source (id, component_id, name, link)
       values (77, 27, 'shop.by', 'https://shop.by/zhestkie_diski/western_digital_red_plus_8tb_wd80efbx/#shop');

insert into component_source (id, component_id, name, link)
       values (78, 27, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/zhyestkie-diski/zhestkiy-disk-western-digital-red-8000gb-wd80efbx/');

insert into component_source (id, component_id, name, link)
       values (79, 27, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/zh_stkie_diski/zhestkiy-disk-8tb-western-digital-red-wd80efbx/');

insert into component (id, model, producer, price)
       values (28, 'Purple', 'WD', 302.41);
insert into hdd (buffer_size, capacity, form_factor, rotation_speed, hdd_interface, thickness, id)
       values (64, 4000, '3.5"', 5400, 'SATA 3.0 (6Gbps)', 26, 28);

insert into component_source (id, component_id, name, link)
       values (80, 28, 'shop.by', 'https://shop.by/zhestkie_diski/western_digital_purple_4tb_wd40purx/#shop');

insert into component_source (id, component_id, name, link)
       values (81, 28, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/zhyestkie-diski/zhestkiy-disk-western-digital-purple-4000gb-wd40purx/');

insert into component_source (id, component_id, name, link)
       values (82, 28, 'uni.by', 'https://uni.by/shop/w/Item/18359/');

insert into component (id, model, producer, price)
       values (29, 'IronWolf', 'Seagate', 445.00);
insert into hdd (buffer_size, capacity, form_factor, rotation_speed, hdd_interface, thickness, id)
       values (256, 8000, '3.5"', 7200, 'SATA 3.0 (6Gbps)', 20, 29);

insert into component_source (id, component_id, name, link)
       values (83, 29, 'shop.by', 'https://shop.by/zhestkie_diski/seagate_ironwolf_st1000vn002/#shop');

insert into component_source (id, component_id, name, link)
       values (84, 29, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/zhyestkie-diski/zhestkiy-disk-dlya-servera-3-5-sata-seagate-ironwolf-nas-1tb-st1000vn002/');

insert into component_source (id, component_id, name, link)
       values (85, 29, 'shop.by', 'https://shop.by/zhestkie_diski/seagate_ironwolf_st1000vn002/#shop');

insert into component (id, model, producer, price)
       values (30, 'Exos X16', 'Seagate', 967.12);
insert into hdd (buffer_size, capacity, form_factor, rotation_speed, hdd_interface, thickness, id)
       values (256, 16000, '3.5"', 7200, 'SATA 3.0 (6Gbps)', 26, 30);

insert into component_source (id, component_id, name, link)
       values (86, 30, 'shop.by', 'https://shop.by/zhestkie_diski/seagate_exos_x16_12tb_st12000nm001g/#shop');

insert into component_source (id, component_id, name, link)
       values (87, 30, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/zhyestkie-diski/zhestkiy-disk-seagate-exos-x16-512e-12tb-st12000nm001g/');

insert into component_source (id, component_id, name, link)
       values (88, 30, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/zh_stkie_diski/zhestkiy-disk-seagate-exos-x16-12tb-st12000nm001g/');

insert into component (id, model, producer, price)
       values (31, 'FURY Beast', 'Kingston', 218.40);
insert into ram (capacity, freq, type, module_set, id)
       values (16, 3200.0, 'DDR4 DIMM', 2, 31);

insert into component_source (id, component_id, name, link)
       values (89, 31, 'shop.by', 'https://shop.by/pamyat/kingston_fury_beast_2x16gb_ddr5_pc5_38400_kf548c38bbk2_32/#shop');

insert into component_source (id, component_id, name, link)
       values (90, 31, 'amd.by', 'https://www.amd.by/ram-operativnaya-pamyat/kingston-fury-beast-2x16gb-ddr5-pc5-38400-kf548c38bbk2-32/');

insert into component (id, model, producer, price)
       values (32, 'Ballistix', 'Crucial', 238.0);
insert into ram (capacity, freq, type, module_set, id)
       values (16, 3200.0, 'DDR4 DIMM', 1, 32);

insert into component_source (id, component_id, name, link)
       values (91, 32, 'shop.by', 'https://shop.by/pamyat/crucial_ballistix_sport_lt_bls4g4d26bfsb/#shop');

insert into component_source (id, component_id, name, link)
       values (92, 32, 'marchenko.by', 'https://marchenko.by/p167841603-operativnaya-pamyat-crucial.html');

insert into component_source (id, component_id, name, link)
       values (93, 32, 'm-pk.by', 'https://www.m-pk.by/dram/crucial/bls4g4d26bfsb?utm_source=shopby&utm_medium=cpc&utm_campaign=shopmanager_by&utm_term=1290625');

insert into component (id, model, producer, price)
       values (33, 'Fury', 'HyperX', 280.58);
insert into ram (capacity, freq, type, module_set, id)
       values (16, 3200.0, 'DDR4 DIMM', 1, 33);

insert into component_source (id, component_id, name, link)
       values (94, 33, 'shop.by', 'https://shop.by/pamyat/hyperx_fury_rgb_hx426c16fb3a_16/#shop');

insert into component_source (id, component_id, name, link)
       values (95, 33, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/operativnaya-pamyat/operativnaya-pamyat-ddr4-2666-16gb-hyperx-fury-hx426c16fb3a-16/');

insert into component_source (id, component_id, name, link)
       values (96, 33, 'amd.by', 'https://www.amd.by/ram-operativnaya-pamyat/hyperx-fury-rgb-16gb-ddr4-pc4-21300-hx426c16fb3a16/');

insert into component_source (id, component_id, name, link)
       values (97, 33, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/moduli_pamyati/id-215593/');

insert into component (id, model, producer, price)
       values (34, 'Viper', 'Patriot', 201.73);
insert into ram (capacity, freq, type, module_set, id)
       values (16, 1600.0, 'DDR3 DIMM', 2, 34);

insert into component_source (id, component_id, name, link)
       values (98, 34, 'shop.by', 'https://shop.by/pamyat/patriot_viper_steel_pvs416g300c6k/#shop');

insert into component_source (id, component_id, name, link)
       values (99, 34, 'amd.by', 'https://www.amd.by/ram-operativnaya-pamyat/patriot-viper-steel-series-2x8gb-ddr4-pc4-24000-pvs416g300c6k/');

insert into component_source (id, component_id, name, link)
       values (100, 34, '234.by', 'https://234.by/operativnaja-pamjat-patriot-viper-steel-series-2x8gb-ddr4-pc4-24000-pvs416g300c6k.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (35, 'Aegis', 'G.Skill', 110.66);
insert into ram (capacity, freq, type, module_set, id)
       values (8, 3200.0, 'DDR4 DIMM', 2, 35);

insert into component_source (id, component_id, name, link)
       values (101, 35, 'shop.by', 'https://shop.by/pamyat/g_skill_aegis_f4_3200c16d_16gis/#shop');

insert into component_source (id, component_id, name, link)
       values (102, 35, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/operativnaya-pamyat/operativnaya-pamyat-ddr4-3200-16gb-2x8gb-g-skill-aegis-f4-3200c16d-16gis/');

insert into component_source (id, component_id, name, link)
       values (103, 35, 'amd.by', 'https://www.amd.by/ram-operativnaya-pamyat/g-skill-aegis-2x8gb-ddr4-pc4-25600-f4-3200c16d-16gis/');

insert into component (id, model, producer, price)
       values (36, 'Proton', 'Chieftec', 201.00);
insert into power_unit (certificate, power, depth, efficiency, height, pfc, standard, width, id)
       values ('bronze', 850.0, 160, 85, 87, 'active', 'ATX12V 2.3', 150, 36);

insert into component_source (id, component_id, name, link)
       values (104, 36, 'shop.by', 'https://shop.by/kompyuternye_bloki_pitaniya/chieftec_proton_bdf_750c/#shop');

insert into component_source (id, component_id, name, link)
       values (105, 36, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/bloki-pitaniya/blok-pitaniya-chieftec-750w-bdf-750c/');

insert into component_source (id, component_id, name, link)
       values (106, 36, '234.by', 'https://234.by/chieftec-proton-bdf-750c.html?utm_source=shop_by');

insert into component (id, model, producer, price)
       values (37, 'GigaMax', 'Zalman', 166.23);
insert into power_unit (certificate, power, depth, efficiency, height, pfc, standard, width, id)
       values ('bronze', 750.0, 140, 88, 86, 'active', 'ATX12V 2.31', 86, 37);

insert into component_source (id, component_id, name, link)
       values (107, 37, 'shop.by', 'https://shop.by/kompyuternye_bloki_pitaniya/zalman_gigamax_zm550_gvii/#shop');

insert into component_source (id, component_id, name, link)
       values (108, 37, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/psu/id-210483/');

insert into component_source (id, component_id, name, link)
       values (109, 37, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/bloki-pitaniya/blok-pitaniya-zalman-zm550-gvii-550w/');

insert into component (id, model, producer, price)
       values (38, 'ECO', 'AeroCool', 60.00);
insert into power_unit (certificate, power, depth, efficiency, height, pfc, standard, width, id)
       values ('-', 500.0, 140, 88, 86, 'active', 'ATX12V 2.31', 150, 38);

insert into component_source (id, component_id, name, link)
       values (110, 38, 'shop.by', 'https://shop.by/kompyuternye_bloki_pitaniya/aerocool_eco_500w/#shop');

insert into component_source (id, component_id, name, link)
       values (111, 38, 'itmarket.by', 'https://itmarket.by/komplektuyuschie-i-aksessuary/Komplektuyuschie/psu/id-82213/');

insert into component_source (id, component_id, name, link)
       values (112, 38, 'socket.by', 'https://www.socket.by/kompyutery/komplektuyushchie-dlya-pk/bloki-pitaniya/blok-pitaniya-aerocool-500w-eco-500w/');

insert into component (id, model, producer, price)
       values (39, 'System Power', 'be quiet!', 150.27);
insert into power_unit (certificate, power, depth, efficiency, height, pfc, standard, width, id)
       values ('bronze', 600.0, 140, 88, 86, 'active', 'ATX12V 2.31', 86, 39);

insert into component_source (id, component_id, name, link)
       values (113, 39, 'shop.by', 'https://shop.by/kompyuternye_bloki_pitaniya/be_quiet_system_power_9_600w/#shop');

insert into component_source (id, component_id, name, link)
       values (114, 39, 'uni.by', 'https://uni.by/shop/w/Item/7503/');

insert into component_source (id, component_id, name, link)
       values (115, 39, 'sli.by', 'http://sli.by/catalog/zms16-komputernaya-tehnika/zms542-komplektuushie/zms1316-bloki-pitaniya/i1865635.html');

insert into component (id, model, producer, price)
       values (40, 'MVE', 'Cooler Master', 139.80);
insert into power_unit (certificate, power, depth, efficiency, height, pfc, standard, width, id)
       values ('basic', 600.0, 140, 85, 86, 'active', 'ATX12V 2.52', 150, 40);

insert into component_source (id, component_id, name, link)
       values (116, 40, 'onliner.by', 'https://catalog.onliner.by/powersupply/coolermaster/mpe7001acaabeu');

insert into component_source (id, component_id, name, link)
       values (117, 40, '5element.by', 'https://5element.by/products/661219-blok-pitaniya-cooler-master-mwe-500-white-230v-v2-mpe-5001-acabw-eu');

insert into component_source (id, component_id, name, link)
       values (118, 40, 'komp.1k.by', 'https://komp.1k.by/utility-powermodules/coolermaster/');