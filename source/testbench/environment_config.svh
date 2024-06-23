typedef enum bit { CLUSTER = 1'b1, UNIT   = 1'b0 } cluster_unit_enum;

class environment_config;
    protected cluster_unit_enum is_cluster;
    
    function new ( cluster_unit_enum is_cluster );
        this.is_cluster = is_cluster;
    endfunction : new
    
    function cluster_unit_enum get_is_cluster();
        return is_cluster;
    endfunction : get_is_cluster  
endclass : environment_config