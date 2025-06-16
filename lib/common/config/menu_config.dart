class MenuConfig {
  const MenuConfig();

  // ignore: non_constant_identifier_names
  final List<Map<String, dynamic>> MENU_CONFIG = const [
    {
      "id": "dashboard",
      "name": "Dashboard",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "selected": true,
      "url": "home",
      "params": {}
    },

    {
      "id": "users-access",
      "name": "Users & Access",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "user-management",
          "parentid": "users-access",
          "name": "Users",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "users", "type": "table"}
          }
        },
        {
          "id": "user-role-management",
          "parentid": "users-access",
          "name": "User Roles",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "userrole", "type": "table"}
          }
        },
        {
          "id": "menu_details",
          "parentid": "users-access",
          "name": "Menu Access",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "menu_table", "type": "table"}
          }
        },
        {
          "id": "user-role-group-management",
          "parentid": "users-access",
          "name": "Role Groups",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "userrolegroup", "type": "table"}
          }
        },
        {
          "id": "workitem-task-management",
          "parentid": "users-access",
          "name": "WorkItem Task Map",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "userroleworkitemmap", "type": "table"}
          }
        }
      ]
    },
    {
      "id": "canteen-management",
      "name": "Canteen Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "canteen dashboard",
          "parentid": "canteen-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "canteendashboard",
        },
        {
          "id": "food menu",
          "parentid": "canteen-management",
          "name": "Food Menu",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "food", "type": "table"}
          }
        },
        {
          "id": "food category",
          "parentid": "canteen-management",
          "name": "Food Category",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "food_category", "type": "table"}
          }
        },
        {
          "id": "food order",
          "parentid": "canteen-management",
          "name": "Food Orders",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "foodorders",
          "params": {}
        },
      ]
    },
    {
      "id": "incentive-management",
      "name": "Incentive Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "incentivemanagementDashboard",
          "parentid": "incentive-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "incentivemanagementDashboard",
        },
        {
          "id": "employeeProfile",
          "parentid": "incentive-management",
          "name": "incentive Profile",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "employeeProfile",
        },
      ]
    },

    {
      "id": "cssd-management",
      "name": "CSSD Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "cssddashboard",
          "parentid": "cssd-management",
          "name": "Cssd Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "cssddashboard",
        },
        {
          "id": "cssdrequestform",
          "parentid": "cssd-management",
          "name": "Cssd Request Form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "cssdrequestform",
        },
        // {
        // "id": "cssddipform",
        // "parentid": "cssd-management",
        // "name": "Cssd DIP Form",
        // "type": "item",
        // "level": 1,
        // "icon": "heroicons-outline:queue-list",
        // "url": "cssddipform",
        // },
        {
          "id": "cssdsterilizationform",
          "parentid": "cssd-management",
          "name": "Cssd SterilizationForm",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "cssdsterilizationform",
        },
        // {
        //   "id": "cssddistrubuteform",
        //   "parentid": "cssd-management",
        //   "name": "Cssd Distrubute Form",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "cssddistrubuteform",
        // },
        // {
        //   "id": "cssdstroageform",
        //   "parentid": "cssd-management",
        //   "name": "Cssd Storage Form",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "cssdstroageform",
        // },
        {
          "id": "cssdlistrequest",
          "parentid": "cssd-management",
          "name": "Cssd List Request",
          "type": "item",
          "level": 1,        
          "icon": "heroicons-outline:queue-list",
          "url": "cssdlistrequest",
        },
        // {
        //   "id": "cssdliststerilize",
        //   "parentid": "cssd-management",
        //   "name": "Cssd List Sterilize",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "cssdliststerilize",
        // },
      ]
    },

    {
      "id": "billing",
      "name": "Billing",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "billing dashboard",
          "parentid": "billing",
          "name": " Billing Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "dashboardbilling",
        },
        {
          "id": "patient-billing",
          "parentid": "billing",
          "name": "Patient Billing",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "patient_billing", "type": "table"},
          }
        },
      ]
    },
    {
      "id": "references-management",
      "name": "References",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:office-building",
      "url": "table/list",
      "params": {
        "pathParams": {"type": "reference"},
      }
    },
    {
      "id": "transaction-tables-management",
      "name": "Transaction Tables",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "url": "table/list",
      "params": {
        "pathParams": {"type": "transaction"},
      }
    },
    {
      "id": "configuration-management",
      "name": "Configurations",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "platform-configuration-management",
          "parentid": "configuration-management",
          "name": "Platform",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "platformconfig", "type": "table"}
          }
        },
        {
          "id": "communication-configuration-management",
          "parentid": "configuration-management",
          "name": "Communication",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "communicationconfig", "type": "table"}
          }
        },
        {
          "id": "algorithm-builder",
          "parentid": "algorithm-management",
          "name": "Algorithm",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "algorithm-builder",
          "params": {
            //"pathParams": {"type": "add"}
          }
        }
      ]
    },
    // {
    //   "id": "task-management",
    //   "name": "Tasks",
    //   "type": "item",
    //   "level": 0,
    //   "icon": "heroicons-outline:chart-pie",
    //   "url": "build/task",
    //   "params": {
    //     "pathParams": {"type": "add"}
    //   }
    // },
    {
      "id": "task-management",
      "name": "Tasks",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:queue-list",
      "url": "render/list",
      "params": {
        "pathParams": {"key": "taskmaster", "type": "table"}
      },
    },
    {
      "id": "view-config",
      "name": "View Builder",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "url": "build/view/config",
      "params": {
        "pathParams": {"type": "add"},
        // "extra": {
        //   "templatename": "template_1",
        //   "name": "example_template",
        //   "type": "page",
        //   "labels": {"en": "Example Template"},
        //   "tables": [
        //     "019440b4-ec69-735c-83a5-f91497921b6e|citizen_address",
        //     "01944457-9064-7d2e-8f11-dbc6d8b32a39|citizen",
        //     "019440ab-0dad-70e4-8884-1941d4d1f694|citizen_communication_contacts"
        //   ],
        // }
      },
    },
    {
      "id": "familyDashboard",
      "name": "Family Dashboard",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "url": "familydashboard",
      "params": {},
    },
    {
      "id": "appointment",
      "name": "Appointment",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:queue-list",
      "url": "appointment",
      "children": [
        {
          "id": "appointment-dashboard",
          "parentid": "appointment",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "appointment-dashboard",
        },
        {
          "id": "appointment-calendar",
          "parentid": "appointment",
          "name": "View Appointment",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "appointment-calendar",
        },
        {
          "id": "new-registartions",
          "parentid": "appointment",
          "name": "New Registration",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "appointment/list",
        }
      ]
    },
    {
      "id": "out_patient",
      "name": "Patient",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "out_patient-history",
          "parentid": "out_patient",
          "name": "History",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "out_patient-history",
        },
        // {
        //   "id": "insight",
        //   "parentid": "out_patient",
        //   "name": "Insight",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "insight",
        // },
      ]
    },
    {
      "id": "learning_management",
      "name": "Learning Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        // {
        //   "id": "learning-dashboard",
        //   "parentid": "learning_management",
        //   "name": "Dashboard",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "learning-dashboard",
        // },
        {
          "id": "all-courses",
          "parentid": "learning_management",
          "name": "All Courses",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "all-courses",
        },
      ]
    },
    {
      "id": "pharmacy",
      "name": "Pharmacy",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:queue-list",
      "url": "pharmacy",
      "children": [
        {
          "id": "pharmacy-dashboard",
          "parentid": "pharmacy",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "pharmacy-dashboard",
        },
        {
          "id": "pharmacy-sales-dashboard",
          "parentid": "pharmacy",
          "name": "Phramacy Sales Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "pharmacy-sales-dashboard",
        },
        {
          "id": "medicine-returns",
          "parentid": "pharmacy",
          "name": "Medicine Returns",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "medicine-returns",
        },
        {
          "id": "dispense-worklist",
          "parentid": "pharmacy",
          "name": "Dispense Worklists",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "dispense_worklist", "type": "table"}
          }
        },
        {
          "id": "prescription-management",
          "parentid": "pharmacy",
          "name": "Prescription Management",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "prescription-management",
        },
        {
          "id": "pharmacy-advances",
          "parentid": "pharmacy",
          "name": "Pharmacy Advances",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "pharmacy-advances",
        },
        {
          "id": "pharmacy-audit",
          "parentid": "pharmacy",
          "name": "Pharmacy Audit",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "pharmacy-audit",
        },
      ]
    },
    {
      "id": "shift",
      "name": "Shift Management",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "selected": true,
      "url": "shift",
    },
    {
      "id": "treatment-management",
      "name": "Treatment Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "treatment-mangement-dashboard",
          "parentid": "treatment-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "selected": false,
          "url": "treatment-mangement-dashboard",
          "params": {}
        },
        {
          "id": "treatment-mangement-list",
          "parentid": "treatment-management",
          "name": "Treatments",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "selected": false,
          "url": "render/list",
          "params": {
            "pathParams": {"key": "treatment_plan", "type": "table"}
          }
        },
      ]
    },
    {
      "id": "equipment-management",
      "name": "Equipment Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "eq-dashboard",
          "parentid": "equipment-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:chart-pie",
          "selected": true,
          "url": "equipmentdashboard",
          "params": {}
        },
        {
          "id": "equipment-list",
          "parentid": "equipment-management",
          "name": "Devices",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "device_type", "type": "table"}
          }
        },
        {
          "id": "equipment-audit",
          "parentid": "equipment-management",
          "name": "Audit",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "device_audit", "type": "table"}
          }
        },
        {
          "id": "equipment-request",
          "parentid": "equipment-management",
          "name": "Request device",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "devicerequest",
        },
        {
          "id": "equipment-access",
          "parentid": "equipment-management",
          "name": "Access device",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "deviceaccess",
        },
      ]
    },
    {
      "id": "admin",
      "name": "Admin",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "admin-dashboard",
          "parentid": "admin",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:chart-pie",
          "selected": true,
          "url": "admindashboard",
          "params": {}
        },
        // {
        //   "id": "shift",
        //   "parentid": "admin",
        //   "name": "Shift Management",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:chart-pie",
        //   "selected": true,
        //   "url": "shift",
        // },
      ]
    },

    {
      "id": "bed_management",
      "name": "Bed Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:users",
      "children": [
        {
          "id": "bedmanagement",
          "parentid": "bed_management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "bedmanagement",
          "params": {}
        },
        {
          "id": "bedavailability",
          "parentid": "bed_management",
          "name": "Bed Availability",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "bedavailability",
          "params": {}
        },
        {
          "id": "bedrequestform",
          "parentid": "bed_management",
          "name": "Bed Request Form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "bedrequestform",
          "params": {}
        },
        {
          "id": "bedcleaningstatus",
          "parentid": "bed_management",
          "name": "Bed Cleaning Status",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "bedcleaningstatus",
          "params": {}
        },
      ]
    },
    {
      "id": "patientRegistration",
      "name": "Patient Registration",
      "type": "item",
      "level": 0,
      "icon": "heroicons-outline:chart-pie",
      "url": "render/list",
      "params": {
        "pathParams": {"key": "patient_profile", "type": "table"}
      },
    },
    {
      "id": "inpatient-management",
      "name": "In-Patient Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "medical-record-management",
          "parentid": "inpatient-management",
          "name": "Medical Record - MRD",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "medical_record_department", "type": "table"}
          }
        },
        {
          "id": "medical-record-form",
          "parentid": "inpatient-management",
          "name": "Medical Record Form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "view/medicalRecordDepartmemtForm",
          "params": {
            "pathParams": {"key": "medical_record_department", "type": "table"}
          }
        },
        {
          "id": "medical-record-department-audit",
          "parentid": "inpatient-management",
          "name": "Medical Record Department Audit",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:plus",
          "url": "view/medicalRecordDepartmemtAudit",
          "params": {},
        },
      ],
    },

    //     {
    //       "id": "inpatient-management",
    //       "parentid": "inpatient-management",
    //       "name": "In-Patient",
    //       "type": "item",
    //       "level": 1,
    //       "icon": "heroicons-outline:queue-list",
    //       "url": "render/list",
    //       "params": {
    //         "pathParams": {"key": "visits", "type": "table"},
    //         "extra": {
    //           "patient_type": "Inpatient",
    //           // "parent_visit_id": null,
    //         }
    //       },
    //     },

    //     // {
    //     //   "id": "inpatientfile",
    //     //   "parentid": "inpatient-management",
    //     //   "name": "In-Patient Files",
    //     //   "type": "item",
    //     //   "level": 1,
    //     //   "icon": "heroicons-outline:plus",
    //     //   "url": "view/inpatientFile",
    //     //   "params": {}
    //     // },
    //     // {
    //     //   "id": "inpatient-reports-management",
    //     //   "parentid": "inpatient-management",
    //     //   "name": "In-Patient Reports",
    //     //   "type": "item",
    //     //   "level": 1,
    //     //   "icon": "heroicons-outline:plus",
    //     //   "url": "render/list",
    //     //   "params": {
    //     //     "pathParams": {"key": "reports", "type": "table"}
    //     //   }
    //     // },
    //     // {
    //     //   "id": "transferred-files-management",
    //     //   "parentid": "inpatient-management",
    //     //   "name": "Transfered Files",
    //     //   "type": "item",
    //     //   "level": 1,
    //     //   "icon": "heroicons-outline:plus",
    //     //   "url": "view/transferFile",
    //     //   "params": {
    //     //     }
    //     // },
    //     // {
    //     //   "id": "inpatient-clearence-management",
    //     //   "parentid": "inpatient-management",
    //     //   "name": "In-Patient Clearence",
    //     //   "type": "item",
    //     //   "level": 1,
    //     //   "icon": "heroicons-outline:plus",
    //     //   "url": "render/list",
    //     //   "params": {
    //     //     "pathParams": {"key": "ip_clearance", "type": "table"}
    //     //   }
    //     // },
    //   ]
    // },
    {
      "id": "laboratory-management",
      "name": "Laboratory",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "laboratory-dashboard",
          "parentid": "laboratory-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "laboratory/dashboard",
          "params": {
            // "pathParams": {"key": "inpatient", "type": "table"}
          }
        },
        {
          "id": "labtest-management",
          "parentid": "laboratory-management",
          "name": "Labtest",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "laboratory/labtest",
          "params": {},
        },
      ]
    },
    {
      "id": "hr-management",
      "name": "HR Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "hr-dashboard",
          "parentid": "hr-management",
          "name": "Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "hr/dashboard",
          "params": {
            // "pathParams": {"key": "inpatient", "type": "table"}
          }
        },
        {
          "id": "hr-employees",
          "parentid": "hr-management",
          "name": "Employees",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "users", "type": "table"}
          }
        },
        {
          "id": "recruitment-management",
          "parentid": "hr-management",
          "name": "Recruitment",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "hr/recuitment",
          "params": {},
        },
        {
          "id": "meeting-management",
          "parentid": "hr-management",
          "name": "Hr Meetings",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "hr/meeting",
          "params": {},
        },
        {
          "id": "attendence-management",
          "parentid": "hr-management",
          "name": "Attendance",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "hr/attendance",
          "params": {},
        },
        {
          "id": "payroll-management",
          "parentid": "hr-management",
          "name": "Payroll",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "payroll", "type": "table"}
          },
        },
        {
          "id": "hr-jobs",
          "parentid": "hr-management",
          "name": "Jobs",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "render/list",
          "params": {
            "pathParams": {"key": "job_type", "type": "table"}
          }
        },
      ]
    },

    {
      "id": "discharge management",
      "name": "Discharge Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "dishcargedashboard",
          "parentid": "discharge management",
          "name": "Discharge Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "dishcargedashboard",
          "params": {}
        },
        {
          "id": "dischargerequestform",
          "parentid": "discharge management",
          "name": "Discharge Request Form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "dischargerequestform",
          "params": {}
        },
        {
          "id": "dischargeapproval",
          "parentid": "discharge management",
          "name": "Discharge Approval",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "dischargeapproval",
          "params": {}
        },
        // {
        //   "id": "followupappointmentform",
        //   "parentid": "discharge management",
        //   "name": "Follow-up Appointment",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "followupappointmentform",
        //   "params": {}
        // },
      ]
    },

    {
      "id": "vehicle management",
      "name": "Vehicle Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "vehicledashboard",
          "parentid": "vehicle management",
          "name": "Vehicle Dashboard",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "vehicledashboard",
          "params": {}
        },
        {
          "id": "vehiclelistpage",
          "parentid": "vehicle management",
          "name": "Vehicle List Page",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "vehiclelistpage",
          "params": {}
        },
        {
          "id": "vehicleusagelogs",
          "parentid": "vehicle management",
          "name": "Vehicle Usage Logs",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "vehicleusagelogs",
          "params": {}
        },
        {
          "id": "vehiclemaintenancelogs",
          "parentid": "vehicle management",
          "name": "Vehicle Maintenance logs",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "vehiclemaintenancelogs",
          "params": {}
        },
        {
          "id": "vehiclecompletionform",
          "parentid": "vehicle management",
          "name": "Vehicle Maintenance Completion",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "vehiclecompletionform",
          "params": {}
        },
        {
          "id": "driveraddform",
          "parentid": "vehicle management",
          "name": "Driver Add Form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "driveraddform",
          "params": {}
        },
        {
          "id": "driverlistpage",
          "parentid": "vehicle management",
          "name": "Driver ListPage",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "driverlistpage",
          "params": {}
        },
        // {
        //   "id": "driverdetailspage",
        //   "parentid": "vehicle management",
        //   "name": "Driver Details Page",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "driverdetailspage",
        //   "params": {}
        // },
        // {
        //   "id": "vehicledetailspage",
        //   "parentid": "vehicle management",
        //   "name": "Vehicle Details Page",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "vehicledetailspage",
        //   "params": {}
        // },
        // {
        //   "id": "vehiclemaintenanceform",
        //   "parentid": "vehicle management",
        //   "name": "Vehicle Maintenance Form",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "vehiclemaintenanceform",
        //   "params": {}
        // },
        // {
        //   "id": "vehicleaddform",
        //   "parentid": "vehicle management",
        //   "name": "Vehicle Add Form",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "vehicleaddform",
        //   "params": {}
        // },
        // {
        //   "id": "vehiclescheduleform",
        //   "parentid": "vehicle management",
        //   "name": "Vehicle Schedule Form",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "vehiclescheduleform",
        //   "params": {}
        // },
        // {
        //   "id": "driverlistpage",
        //   "parentid": "vehicle management",
        //   "name": "Driver List Page",
        //   "type": "item",
        //   "level": 1,
        //   "icon": "heroicons-outline:queue-list",
        //   "url": "driverlistpage",
        //   "params": {}
        // },
      ]
    },
    {
      "id": "operation theatre Management",
      "name": "Operation theatre Management",
      "type": "collapse",
      "level": 0,
      "icon": "heroicons-outline:square-stack",
      "children": [
        {
          "id": "Operation Theatre Calendar View",
          "parentid": "operation theatre Management",
          "name": "Operation Theatre Calendar View",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "operationtheatreview",
          "params": {}
        },
        {
          "id": "operation theatre patient list",
          "parentid": "operation theatre Management",
          "name": "Surgical Candidates List",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "operationtheatrepatientlist",
          "params": {}
        },
        {
          "id": "Operation Consent form",
          "parentid": "operation theatre Management",
          "name": "Operation Consent form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "operationtheatreconsentform",
          "params": {}
        },
        {
          "id": "Operation Appointment Form",
          "parentid": "operation theatre Management",
          "name": "Operation Appointment form",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "operationappointmentform",
          "params": {}
        },
        {
          "id": "Pre Operation assessment",
          "parentid": "operation theatre Management",
          "name": "Pre Operation Assessment",
          "type": "item",
          "level": 1,
          "icon": "heroicons-outline:queue-list",
          "url": "preoperationpreparationform",
          "params": {}
        },
      ]
    }
  ];
}
