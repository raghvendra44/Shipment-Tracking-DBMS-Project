\c shipment2;

CREATE OR REPLACE FUNCTION assign_del_staff()
RETURNS TRIGGER LANGUAGE PLPGSQL AS 
$$ 
    BEGIN
        update vehicles set free='F' where vehicles.DS_id=NEW.ds_id and NEW.status = 'In-transit';
    return NEW;
    END;
$$;

CREATE TRIGGER "assign delivery staff"
after insert on orders
for each row
execute procedure assign_del_staff(); 

CREATE OR REPLACE FUNCTION free_staff() 
RETURNS TRIGGER LANGUAGE PLPGSQL AS 
$$ 
    BEGIN
        update vehicles set free='T' where (select Vehicle_id from orders where orders.prod_id=NEW.prod_id and status = 'Delivered') = vehicles.Vehicle_id;
    return NEW;
    END;
$$;

CREATE TRIGGER "free delivery staff"
after update on orders
for each row
execute procedure free_staff();