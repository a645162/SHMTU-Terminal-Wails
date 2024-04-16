export const routesBill = [
    {
        path: "/bill",
        component: () => import("../views/Bill/Bill.vue")
    },

    {
        path: "/bill/analysis",
        component: () => import("../views/Bill/Analysis/BillAnalysis.vue")
    },

    {
        path: "/bill/export",
        component: () => import("../views/Bill/Export/ExportBill.vue")
    },
    {
        path: "/bill/export/csv",
        component: () => import("../views/Bill/Export/ExportBillToCsv.vue")
    },

]