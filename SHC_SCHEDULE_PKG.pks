create or replace package shc_schedule_pkg as

   procedure create_schedule(p_year number);
   
   function count_shift_for_day(p_year number, p_month number, p_day_of_month number, p_shift_id number) return varchar2;
   
   function is_sk (p_year number, p_month number, p_day_of_month number) return varchar2;
   
   function is_holiday (p_year number, p_month number, p_day_of_month number) return varchar2;
   
   function count_shift_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_shift_id number, p_employee_id number) return number;
   
   procedure reset_month (p_year number, p_month number);
   
   procedure reset_year(p_year number);
   
   function count_sk_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_employee_id number) return number;
   
   function count_holiday_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_employee_id number) return number;

end;