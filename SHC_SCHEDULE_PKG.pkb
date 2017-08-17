create or replace package body shc_schedule_pkg as

   procedure create_schedule(p_year number) is
   begin
       insert into shc_schedule (schedule_id, cal_year, cal_month, employee_id, creation_date, last_update_Date)
        select shc_schedule_seq.nextval SCHEDULE_ID, 
        dt.cal_year, 
        dt.cal_month,
        employee_id, 
        sysdate creation_date,
        sysdate last_update_Date
        from (select distinct cal_year, cal_month
                 from gen_time
                 where cal_year in (2017, 2018)
                 order by 1,2) dt, 
             SHC_EMPLOYEE emp
        where cal_year = p_year;
   end;
   
   function count_shift_for_day(p_year number, p_month number, p_day_of_month number, p_shift_id number) return varchar2 is
       l_count number;
       l_limit number;
   begin
      
        select day_limit
          into l_limit
          from shc_shift
          where shift_id = p_shift_id;
      
      select count(*)
         into l_count
         from shc_schedule
        where cal_year = p_year
          and cal_month = p_month
          and case when p_day_of_month = 1 then shift1 
          when p_day_of_month = 2 then shift2
          when p_day_of_month = 3 then shift3
          when p_day_of_month = 4 then shift4
          when p_day_of_month = 5 then shift5
          when p_day_of_month = 6 then shift6
          when p_day_of_month = 7 then shift7
          when p_day_of_month = 8 then shift8
          when p_day_of_month = 9 then shift9
          when p_day_of_month = 10 then shift10
          when p_day_of_month = 11 then shift11
          when p_day_of_month = 12 then shift12
          when p_day_of_month = 13 then shift13
          when p_day_of_month = 14 then shift14
          when p_day_of_month = 15 then shift15
          when p_day_of_month = 16 then shift16
          when p_day_of_month = 17 then shift17
          when p_day_of_month = 18 then shift18
          when p_day_of_month = 19 then shift19
          when p_day_of_month = 20 then shift20
          when p_day_of_month = 21 then shift21
          when p_day_of_month = 22 then shift22
          when p_day_of_month = 23 then shift23
          when p_day_of_month = 24 then shift24
          when p_day_of_month = 25 then shift25
          when p_day_of_month = 26 then shift26
          when p_day_of_month = 27 then shift27
          when p_day_of_month = 28 then shift28
          when p_day_of_month = 29 then shift29
          when p_day_of_month = 30 then shift30
          when p_day_of_month = 31 then shift31
          end = p_shift_id;
          
          if l_count > l_limit then 
          return l_count||'!';
          else 
          return to_char(l_count);
          end if;
          
   exception when others then
    return null;
   end;
   
   function is_sk (p_year number, p_month number, p_day_of_month number) return varchar2 is
       l_found varchar2(1);
   begin
        select 'Y'
        into l_found
        from gen_time gt
        where cal_year = p_year
         and cal_month = p_month
         and gt.day_of_month = p_day_of_month
         --and holiday = 1
         and upper(trim(to_char(calendar_date,'DAY'))) in ('SUNDAY', 'SATURDAY', 'ÓÁÂÂÁÔÏ', 'ÊÕÑÉÁÊÇ');
         
      return l_found;   
   exception when others then      
    return 'N';
   end;
   
   function is_holiday (p_year number, p_month number, p_day_of_month number) return varchar2 is
       l_found varchar2(1);
   begin
       select 'Y'
        into l_found
        from gen_time gt
        where cal_year = p_year
         and cal_month = p_month
         and gt.day_of_month = p_day_of_month
         and holiday = 1;
         
      return l_found;   
   exception when others then      
    return 'N';
   end;
   
   function count_shift_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_shift_id number, p_employee_id number) return number is
       l_count number;
   begin
   
        select sum(cnt)
          into l_count
          from (select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift1 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift2 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift3 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift4 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift5 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift6 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift7 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift8 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift9 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift10 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift11 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift12 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift13 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift14 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift15 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift16 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift17 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift18 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift19 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift20 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift21 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift22 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift23 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift24 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift25 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift26 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift27 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift28 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift29 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift30 = p_shift_id
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and shift31 = p_shift_id);
      
   
       return l_count;
   exception when others then
    return 0;
   end;
   
   procedure reset_month (p_year number, p_month number) is
   begin
    update shc_schedule
      set shift1 = null
         ,shift2 = null  
         ,shift3 = null
         ,shift4 = null
         ,shift5 = null
         ,shift6 = null
         ,shift7 = null
         ,shift8 = null
         ,shift9 = null
         ,shift10 = null
         ,shift11 = null
         ,shift12 = null
         ,shift13 = null
         ,shift14 = null
         ,shift15 = null
         ,shift16 = null
         ,shift17 = null
         ,shift18 = null
         ,shift19 = null
         ,shift20 = null
         ,shift21 = null
         ,shift22 = null
         ,shift23 = null
         ,shift24 = null
         ,shift25 = null
         ,shift26 = null
         ,shift27 = null
         ,shift28 = null
         ,shift29 = null
         ,shift30 = null
         ,shift31 = null
     where cal_year = p_year
       and cal_month = p_month;
   end;
   
   procedure reset_year(p_year number) is
   begin
    for i in 1..12 loop
     reset_month(p_year, i);
    end loop;
   end;
   
   function count_sk_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_employee_id number) return number is
    l_count number;
   begin
    
    select sum(cnt)
          into l_count
          from (select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 1) = 'Y' 
                and shift1 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 2) = 'Y' 
                and shift2 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 3) = 'Y' 
                and shift3 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 4) = 'Y' 
                and shift4 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 5) = 'Y' 
                and shift5 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 6) = 'Y' 
                and shift6 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 7) = 'Y' 
                and shift7 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 8) = 'Y' 
                and shift8 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 9) = 'Y' 
                and shift9 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 10) = 'Y' 
                and shift10 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 11) = 'Y' 
                and shift11 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 12) = 'Y' 
                and shift12 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 13) = 'Y' 
                and shift13 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 14) = 'Y' 
                and shift14 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 15) = 'Y' 
                and shift15 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 16) = 'Y' 
                and shift16 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 17) = 'Y' 
                and shift17 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 18) = 'Y' 
                and shift18 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 19) = 'Y' 
                and shift19 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 20) = 'Y' 
                and shift20 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 21) = 'Y' 
                and shift21 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 22) = 'Y' 
                and shift22 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 23) = 'Y' 
                and shift23 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 24) = 'Y' 
                and shift24 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 25) = 'Y' 
                and shift25 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 26) = 'Y' 
                and shift26 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 27) = 'Y' 
                and shift27 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 28) = 'Y' 
                and shift28 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 29) = 'Y' 
                and shift29 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 30) = 'Y' 
                and shift30 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_sk(cal_year, cal_month, 31) = 'Y' 
                and shift31 not in (7,8,10));
    
    
                return l_count;
   
    exception when others then
        return 0;
   end;
   
   function count_holiday_for_emp (p_year_from number, p_year_to number, p_month_from number, p_month_to number, p_employee_id number) return number is
    l_count number;
   begin
    select sum(cnt)
          into l_count
          from (select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 1) = 'Y' 
                and shift1 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 2) = 'Y' 
                and shift2 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 3) = 'Y' 
                and shift3 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 4) = 'Y' 
                and shift4 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 5) = 'Y' 
                and shift5 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 6) = 'Y' 
                and shift6 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 7) = 'Y' 
                and shift7 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 8) = 'Y' 
                and shift8 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 9) = 'Y' 
                and shift9 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 10) = 'Y' 
                and shift10 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 11) = 'Y' 
                and shift11 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 12) = 'Y' 
                and shift12 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 13) = 'Y' 
                and shift13 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 14) = 'Y' 
                and shift14 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 15) = 'Y' 
                and shift15 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 16) = 'Y' 
                and shift16 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 17) = 'Y' 
                and shift17 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 18) = 'Y' 
                and shift18 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 19) = 'Y' 
                and shift19 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 20) = 'Y' 
                and shift20 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 21) = 'Y' 
                and shift21 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 22) = 'Y' 
                and shift22 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 23) = 'Y' 
                and shift23 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 24) = 'Y' 
                and shift24 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 25) = 'Y' 
                and shift25 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 26) = 'Y' 
                and shift26 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 27) = 'Y' 
                and shift27 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 28) = 'Y' 
                and shift28 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 29) = 'Y' 
                and shift29 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 30) = 'Y' 
                and shift30 not in (7,8,10)
                union all
                select 1 cnt
                    from shc_schedule
                where cal_year >= p_year_from
                and cal_year <= p_year_to
                and cal_month >= p_month_from
                and cal_month <= p_month_to
                and employee_id = p_employee_id
                and is_holiday(cal_year, cal_month, 31) = 'Y' 
                and shift31 not in (7,8,10));
                
                return l_count;
                
    exception when others then            
    return 0;
   end;

end;