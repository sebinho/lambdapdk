from siliconcompiler import Library
from lambdapdk import register_data_source


def setup(chip):
    libs = []
    stackup = '5M1LI'

    register_data_source(chip)

    for config in ('64x256',):
        mem_name = f'sky130_sram_1rw1r_{config}_8'
        lib = Library(chip, mem_name, package='lambdapdk')
        path_base = 'lambdapdk/sky130/libs/sky130sram'
        lib.add('output', stackup, 'lef', f'{path_base}/{mem_name}/lef/{mem_name}.lef.gz')
        lib.add('output', stackup, 'gds', f'{path_base}/{mem_name}/gds/{mem_name}.gds')
        lib.add('output', stackup, 'cdl', f'{path_base}/{mem_name}/spice/{mem_name}.lvs.sp')

        for corner in ('slow', 'fast', 'typical'):
            lib.add('output', corner, 'nldm',
                    f'{path_base}/{mem_name}/nldm/{mem_name}_TT_1p8V_25C.lib')

        lib.set('option', 'file', 'openroad_pdngen', f'{path_base}/pdngen.tcl')

        lib.set('option', 'ydir', f'{path_base}/lambda')

        libs.append(lib)

    return libs
