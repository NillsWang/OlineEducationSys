/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/7/6 15:39:03                            */
/*==============================================================*/


drop table if exists Know_Info;

drop table if exists answers_info;

drop table if exists assignment_info;

drop table if exists case1;

drop table if exists channel_info;

drop table if exists class_info;

drop table if exists classes;

drop table if exists classinfo;

drop table if exists coomment;

drop table if exists course_Info;

drop table if exists course_info2;

drop table if exists courseinfo;

drop table if exists dictionary_Info;

drop table if exists examPerson;

drop table if exists examPerson2;

drop table if exists examPerson3;

drop table if exists examPerson4;

drop table if exists exam_info;

drop table if exists file;

drop table if exists file_info;

drop table if exists folder_info;

drop table if exists issue;

drop table if exists jurisdiction_info;

drop table if exists knowledge;

drop table if exists live_info;

drop table if exists loginInfo;

drop table if exists lost_info;

drop table if exists manager_Info;

drop table if exists organization;

drop table if exists paln_category;

drop table if exists person;

drop table if exists pigeonhole_info;

drop table if exists plan;

drop table if exists plan_Info;

drop table if exists plan_cateinfo;

drop table if exists planinfo;

drop table if exists profession_Info;

drop table if exists projects_info;

drop table if exists question_Info;

drop table if exists role;

drop table if exists schedul_Info;

drop table if exists score_info;

drop table if exists score_info2;

drop table if exists signs_info;

drop table if exists template;

drop table if exists test_info;

drop table if exists trainer_info;

drop table if exists trainer_info2;

drop table if exists trainer_info3;

drop table if exists two_manager;

drop table if exists user;

/*==============================================================*/
/* Table: Know_Info                                             */
/*==============================================================*/
create table Know_Info
(
   id                   int not null,
   father_class         char(25) not null,
   name                 char(25) not null,
   description          char(200) not null,
   is_valid             bool not null,
   primary key (id)
);

/*==============================================================*/
/* Table: answers_info                                          */
/*==============================================================*/
create table answers_info
(
   answers_id           int not null,
   answers_course       char(15) not null,
   answers_isAnswer     bool not null,
   primary key (answers_id)
);

/*==============================================================*/
/* Table: assignment_info                                       */
/*==============================================================*/
create table assignment_info
(
   assignment_id        int not null,
   assignment¡ª¡ªorgnization char(15) not null,
   assignment_condition bool not null,
   assignment_stuname   char(15) not null,
   assignment_course    char(15) not null,
   primary key (assignment_id)
);

/*==============================================================*/
/* Table: case1                                                 */
/*==============================================================*/
create table case1
(
   caseId               int not null,
   case1                varchar(20),
   primary key (caseId)
);

/*==============================================================*/
/* Table: channel_info                                          */
/*==============================================================*/
create table channel_info
(
   id                   int not null,
   channel_name         char(15),
   user_id              int,
   primary key (id)
);

/*==============================================================*/
/* Table: class_info                                            */
/*==============================================================*/
create table class_info
(
   id                   int not null,
   class_name           char(25),
   class_class          char(15),
   class_intro          char(40),
   primary key (id)
);

/*==============================================================*/
/* Table: classes                                               */
/*==============================================================*/
create table classes
(
   classId              int not null,
   className            varchar(20),
   startDate            date,
   endDate              date,
   primary key (classId)
);

/*==============================================================*/
/* Table: classinfo                                             */
/*==============================================================*/
create table classinfo
(
   classInfoId          char(10) not null,
   satrtDate            date,
   endDate              date,
   primary key (classInfoId)
);

/*==============================================================*/
/* Table: coomment                                              */
/*==============================================================*/
create table coomment
(
   com_id               int not null,
   com_name             char(30),
   primary key (com_id)
);

/*==============================================================*/
/* Table: course_Info                                           */
/*==============================================================*/
create table course_Info
(
   id                   int not null,
   father_class         char(25) not null,
   name                 char(25) not null,
   description          char(200) not null,
   is_valid             bool not null,
   primary key (id)
);

/*==============================================================*/
/* Table: course_info2                                          */
/*==============================================================*/
create table course_info2
(
   course_id            int not null,
   course_name          char(15) not null,
   course_type          char(15) not null,
   course_author        char(15) not null,
   course_uploader      char(15) not null,
   course_credit        int not null,
   course_period        int not null,
   course_isValid       bool not null,
   course_updateTime    date not null,
   course_exam_isValid  bool not null,
   course_cost          int not null,
   course_description   char(200),
   courseware_id        int not null,
   primary key (course_id)
);

/*==============================================================*/
/* Table: courseinfo                                            */
/*==============================================================*/
create table courseinfo
(
   course_id            int not null,
   course_name          char(15) not null,
   course_period        int not null,
   course_classify      char(15) not null,
   course_isAllot       bool not null,
   primary key (course_id)
);

/*==============================================================*/
/* Table: dictionary_Info                                       */
/*==============================================================*/
create table dictionary_Info
(
   id                   int not null,
   father_iteam         char(25) not null,
   symbol               char(25) not null,
   name                 char(25) not null,
   value                char(25) not null,
   is_sort              bool not null,
   value_sort           int not null,
   note                 char(200),
   primary key (id)
);

/*==============================================================*/
/* Table: examPerson                                            */
/*==============================================================*/
create table examPerson
(
   id11                 int not null,
   name                 char(15),
   account              char(30),
   userRole             char(15),
   phoneNum             char(20),
   password             char(20),
   status               bool,
   createTime           date,
   primary key (id11)
);

/*==============================================================*/
/* Table: examPerson2                                           */
/*==============================================================*/
create table examPerson2
(
   id                   int not null,
   name                 char(15),
   account              char(30),
   userRole             char(15),
   phoneNum             char(20),
   password             char(20),
   status               bool,
   createTime           date,
   primary key (id)
);

/*==============================================================*/
/* Table: examPerson3                                           */
/*==============================================================*/
create table examPerson3
(
   id                   int not null,
   name                 char(15),
   account              char(30),
   userRole             char(15),
   phoneNum             char(20),
   password             char(20),
   status               bool,
   createTime           date,
   primary key (id)
);

/*==============================================================*/
/* Table: examPerson4                                           */
/*==============================================================*/
create table examPerson4
(
   id                   int not null,
   name                 char(15),
   account              char(30),
   userRole             char(15),
   phoneNum             char(20),
   password             char(20),
   status               bool,
   createTime           date,
   primary key (id)
);

/*==============================================================*/
/* Table: exam_info                                             */
/*==============================================================*/
create table exam_info
(
   examName             char(15) not null,
   examHour             bigint,
   beginTime            date,
   endTime              date,
   passGrade            int,
   createType           char(15),
   scoreSet             char(15),
   peopleNum            int,
   examStatus           char(15),
   examCreater          char(15),
   eUpdateDate          date,
   retakeNum            int,
   examNote             char(30),
   examType             char(15),
   primary key (examName)
);

/*==============================================================*/
/* Table: file                                                  */
/*==============================================================*/
create table file
(
   file_id              int not null,
   file_name            char(30),
   primary key (file_id)
);

/*==============================================================*/
/* Table: file_info                                             */
/*==============================================================*/
create table file_info
(
   file_id              int not null,
   file_type            char(15) not null,
   file_isValid         bool not null,
   jurisdiction_id      int not null,
   file_fatherClass     char(15) not null,
   file_isCollect       bool not null,
   primary key (file_id)
);

/*==============================================================*/
/* Table: folder_info                                           */
/*==============================================================*/
create table folder_info
(
   folder_id            int not null,
   folder_type          char(15) not null,
   folder_isValid       bool not null,
   folder_fatherClass   char(15) not null,
   folder_isCollect     bool not null,
   jurisdiction_id      int not null,
   primary key (folder_id)
);

/*==============================================================*/
/* Table: issue                                                 */
/*==============================================================*/
create table issue
(
   com_id               int not null,
   headline             char(30),
   com_name             char(30),
   state_time           time,
   primary key (com_id)
);

/*==============================================================*/
/* Table: jurisdiction_info                                     */
/*==============================================================*/
create table jurisdiction_info
(
   jurisdiction_id      int not null,
   jurisdiction_isDownload bool,
   jurisdiction_isPreview bool,
   primary key (jurisdiction_id)
);

/*==============================================================*/
/* Table: knowledge                                             */
/*==============================================================*/
create table knowledge
(
   kno_id               int not null,
   author               char(15),
   state                char(20),
   kno_time             time,
   hits                 int,
   headline             char(30),
   applystate           char(15),
   primary key (kno_id)
);

/*==============================================================*/
/* Table: live_info                                             */
/*==============================================================*/
create table live_info
(
   live_id              int not null,
   live_time            time not null,
   live_status          char(15) not null,
   live_teacher         char(15) not null,
   live_organization    char(15) not null,
   live_course          char(15) not null,
   primary key (live_id)
);

/*==============================================================*/
/* Table: loginInfo                                             */
/*==============================================================*/
create table loginInfo
(
   loginId              int not null,
   loginDate            date,
   logoutDate           date,
   location             varchar(50),
   primary key (loginId)
);

/*==============================================================*/
/* Table: lost_info                                             */
/*==============================================================*/
create table lost_info
(
   lostId               int,
   lastDate             date,
   reason               varchar(20)
);

/*==============================================================*/
/* Table: manager_Info                                          */
/*==============================================================*/
create table manager_Info
(
   id                   int not null,
   name                 char(25) not null,
   account              char(25) not null,
   user_Role            char(25) not null,
   Phone_number         char(25) not null,
   password             char(25) not null,
   status               bool not null,
   creat_time           date not null,
   primary key (id)
);

/*==============================================================*/
/* Table: organization                                          */
/*==============================================================*/
create table organization
(
   org_id               int not null,
   name                 char(25),
   parent_organ         char(30),
   type                 char(15),
   code                 int,
   description          char(200),
   primary key (org_id)
);

/*==============================================================*/
/* Table: paln_category                                         */
/*==============================================================*/
create table paln_category
(
   catNum               int not null,
   catName              varchar(20),
   primary key (catNum)
);

/*==============================================================*/
/* Table: person                                                */
/*==============================================================*/
create table person
(
   per_                 int not null,
   per_name             char(20),
   account              char(30),
   organization         char(30),
   state                char(20),
   type                 char(15),
   password             char(20),
   email                char(20),
   role                 char(15),
   phone                int,
   sex                  char(8),
   birthday             date,
   nickname             char(20),
   primary key (per_)
);

/*==============================================================*/
/* Table: pigeonhole_info                                       */
/*==============================================================*/
create table pigeonhole_info
(
   pigeonhole_id        int not null,
   score_id             int,
   plan_id              int,
   trainer_id           int,
   signs_id             int,
   answers_id           int,
   course_id            int,
   live_id              int,
   assignment_id        int,
   primary key (pigeonhole_id)
);

/*==============================================================*/
/* Table: plan                                                  */
/*==============================================================*/
create table plan
(
   planId               int not null,
   planName             varchar(20),
   satrtDate            date,
   endDate              date,
   primary key (planId)
);

/*==============================================================*/
/* Table: plan_Info                                             */
/*==============================================================*/
create table plan_Info
(
   id                   int not null,
   father_class         char(25) not null,
   name                 char(25) not null,
   description          char(200) not null,
   is_valid             bool not null,
   primary key (id)
);

/*==============================================================*/
/* Table: plan_cateinfo                                         */
/*==============================================================*/
create table plan_cateinfo
(
   plan_id              int not null,
   plan_name            char(15) not null,
   plan_use             char(15) not null,
   plan_type            char(15) not null,
   plan_isAllot         bool not null,
   primary key (plan_id)
);

/*==============================================================*/
/* Table: planinfo                                              */
/*==============================================================*/
create table planinfo
(
   palnInfoId           int not null,
   startDate            date,
   endDate              date,
   primary key (palnInfoId)
);

/*==============================================================*/
/* Table: profession_Info                                       */
/*==============================================================*/
create table profession_Info
(
   id                   int not null,
   name                 char(25) not null,
   description          char(200) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: projects_info                                         */
/*==============================================================*/
create table projects_info
(
   projects_id          int not null,
   projects_name        char(15) not null,
   projects_type        char(15) not null,
   projects_author      char(15) not null,
   projects_uploader    char(15) not null,
   projects_credit      int not null,
   projects_period      int not null,
   projects_isValid     bool not null,
   projects_updateTime  date not null,
   course_id2           int not null,
   projects_cost        int not null,
   section_id           int not null,
   projects_description char(200),
   primary key (projects_id)
);

/*==============================================================*/
/* Table: question_Info                                         */
/*==============================================================*/
create table question_Info
(
   id                   int not null,
   father_class         char(25) not null,
   name                 char(25) not null,
   description          char(200) not null,
   is_valid             bool not null,
   primary key (id)
);

/*==============================================================*/
/* Table: role                                                  */
/*==============================================================*/
create table role
(
   role_id              int not null,
   role_name            char(15),
   jurisdiction         char(25),
   primary key (role_id)
);

/*==============================================================*/
/* Table: schedul_Info                                          */
/*==============================================================*/
create table schedul_Info
(
   id                   int not null,
   time_up              time not null,
   time_down            time not null,
   time                 char(25) not null,
   primary key (id)
);

/*==============================================================*/
/* Table: score_info                                            */
/*==============================================================*/
create table score_info
(
   user_id              int not null,
   score                bigint,
   retry                int,
   paperStatus          char(15),
   passStatus           char(15),
   paperDetails         char(20),
   markStatus           char(15),
   primary key (user_id)
);

/*==============================================================*/
/* Table: score_info2                                           */
/*==============================================================*/
create table score_info2
(
   score_id             int not null,
   score_score          int not null,
   score_name           char(15) not null,
   primary key (score_id)
);

/*==============================================================*/
/* Table: signs_info                                            */
/*==============================================================*/
create table signs_info
(
   signs_id             int not null,
   signs_name           char(15) not null,
   signs_organization   char(15) not null,
   signs_time           date not null,
   signs_condition      char(15) not null,
   primary key (signs_id)
);

/*==============================================================*/
/* Table: template                                              */
/*==============================================================*/
create table template
(
   tem_id               int not null,
   tem_name             char(20),
   primary key (tem_id)
);

/*==============================================================*/
/* Table: test_info                                             */
/*==============================================================*/
create table test_info
(
   testClassId          int not null,
   testClass            char(15),
   kName                char(15),
   kNote                char(30),
   kStatus              char(15),
   kCreater             char(15),
   kCreaterDate         date,
   kUpdateDate          date,
   testTopic            char(15),
   testType             char(15),
   degree               char(15),
   testSatus            char(15),
   title                char(40),
   optionNum            int,
   referencePoint       bigint,
   optionPoint          bigint,
   primary key (testClassId)
);

/*==============================================================*/
/* Table: trainer_info                                          */
/*==============================================================*/
create table trainer_info
(
   trainer_id           int not null,
   trainer_name2        char(15) not null,
   trainer_type2        char(15) not null,
   trainer_direction2   char(15),
   trainer_title2       char(15) not null,
   trainer_duty2        char(15) not null,
   trainer_highest_edu2 char(15),
   trainer_teach_time2  int,
   trainer_hierarchy2   int not null,
   trainer_description2 char(200),
   trainer_nation2      char(15),
   trainer_nationality2 char(15),
   trainer_birthday2    char(15),
   primary key (trainer_id)
);

/*==============================================================*/
/* Table: trainer_info2                                         */
/*==============================================================*/
create table trainer_info2
(
   trainer_id2          int not null,
   trainer_name2        char(15) not null,
   trainer_type2        char(15) not null,
   trainer_direction2   char(15),
   trainer_title2       char(15) not null,
   trainer_duty2        char(15) not null,
   trainer_highest_edu2 char(15),
   trainer_teach_time2  int,
   trainer_hierarchy2   int not null,
   trainer_description2 char(200),
   trainer_nation2      char(15),
   trainer_nationality2 char(15),
   trainer_birthday2    char(15),
   primary key (trainer_id2)
);

/*==============================================================*/
/* Table: trainer_info3                                         */
/*==============================================================*/
create table trainer_info3
(
   trainer_id           int not null,
   trainer_account      char(15) not null,
   trainer_type         char(15) not null,
   trainer_direction    char(15),
   trainer_title        char(15) not null,
   trainer_duty         char(15) not null,
   trainer_highest_edu  char(15),
   trainer_teach_time   int,
   trainer_hierarchy    int not null,
   trainer_description  char(200),
   trainer_nation       char(15),
   trainer_nationality  char(15),
   trainer_birthday     char(15),
   trainer_role         char(10),
   trainer_name         char(10),
   primary key (trainer_id)
);

/*==============================================================*/
/* Table: two_manager                                           */
/*==============================================================*/
create table two_manager
(
   two_id               int not null,
   man_name             char(15),
   password             char(25),
   role                 char(15),
   account              char(25),
   primary key (two_id)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   id                   int not null,
   name                 char(15),
   account              char(30),
   userRole             char(15),
   phoneNum             char(20),
   password             char(20),
   status               bool,
   createTime           date,
   primary key (id)
);

