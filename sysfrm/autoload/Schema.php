<?php


Class Schema{

    public $build_query;
    public $table;
    public $method;

    public function __construct($table)
    {
        $this->table = $table;
        $this->method = 'create';
        $this->build_query = 'CREATE TABLE IF NOT EXISTS '.$table.' (
id int(11) NOT NULL AUTO_INCREMENT,
';
    }

    public function create(){
        $this->method = 'create';
    }

    public function add_column(){
        $table = $this->table;
        $this->method = 'add_column';
        $this->build_query = 'ALTER TABLE '.$table.' ';
    }

    public function drop_column(){
        $table = $this->table;
        $this->method = 'drop_column';
        $this->build_query = 'ALTER TABLE '.$table.' ';
    }

    public function select($column){
        $this->build_query .= 'DROP '.$column.', ';
        return $this;

    }

    public function add_foreign_key($columns, $table, $f_columns)
    {
        if(!isset($columns) || !is_array($columns) || !isset($table) || !isset($f_columns) || !is_array($f_columns))
        {
            return;
        }
        $this->build_query .=' FOREIGN KEY (' . implode(',', $columns) . ') REFERENCES ' . $table . '(' . implode(',', $f_columns) . ') ON DELETE CASCADE, ';
    }

    public function add($name,$type='text',$length='',$default='')
    {
//Apply logic to create order
        $l = '';

        if($length != ''){
            $l = '('.$length.')';
        }
        if($default != ''){
            $d = ' NOT NULL DEFAULT \''.$default.'\'';
        }
        else{

        $d = '';

        }


        $method = $this->method;

        if($method == 'create'){
            $this->build_query .= $name.' ' . $type. '' . $l. $d.',
';
        }
        elseif($method == 'add_column'){
            $this->build_query .= 'ADD '.$name.' ' . $type. '' . $l. $d.', ';
        }
        else{

        }

        return $this;
    }

    public function column(){

        // ALTER TABLE sys_invoices ADD h_t VARCHAR(10) NOT NULL DEFAULT '0', ADD h_w VARCHAR(10) NOT NULL DEFAULT '0', ADD h_th VARCHAR(10) NOT NULL DEFAULT '0';
        
        $this->build_query = '';
    }

    public function save(){

        $method = $this->method;

        if($method == 'create'){
            $this->build_query .= 'PRIMARY KEY ( id )
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1';

            try {
                $d = ORM::execute($this->build_query);
                return $d;

            } catch (Exception $e) {
                return $e->getMessage();
            }
        }

        elseif($method == 'add_column'){


            $build_query = $this->build_query;
            $build_query = substr($build_query, 0, -2);



            try {
                $d = ORM::execute($build_query);
                return $d;

            } catch (Exception $e) {
                return $e->getMessage();
            }
        }

        else{
            return false;
        }




    }

    public function drop(){

        $method = $this->method;

        if($method == 'create'){
            try {
                $d = ORM::execute('DROP TABLE '.$this->table);
                return $d;

            } catch (Exception $e) {
                return $e->getMessage();
            }
        }

        elseif($method == 'drop_column'){

            $build_query = $this->build_query;
            $build_query = substr($build_query, 0, -2);




            try {
                $d = ORM::execute($build_query);
                return $d;

            } catch (Exception $e) {
                return $e->getMessage();
            }

        }
        else{
            return false;
        }

    }

}

