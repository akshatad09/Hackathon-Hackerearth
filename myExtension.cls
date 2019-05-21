public with sharing class myExtension {

    private ApexPages.StandardController sc;

    public myExtension(ApexPages.StandardController sc) {
//        this.sc = sc;
        showPopup = false;
    }

//    public PageReference convert() {
//
//        update new Lead(Id = sc.getId());
//
//        Database.LeadConvert lc = new Database.LeadConvert();
//        lc.setLeadId(sc.getId());
//
//        LeadStatus convertStatus = [SELECT Id, MasterLabel FROM LeadStatus
//        WHERE IsConverted=true LIMIT 1];
//        lc.setConvertedStatus(convertStatus.MasterLabel);
//
//        Database.LeadConvertResult lcr = Database.convertLead(lc);
//        if (lcr.isSuccess()) {
//            return new PageReference('/' + lcr.getContactId());
//        } else {
//            for (Database.Error e : lcr.getErrors()) {
//                ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.ERROR,
//                        e.getMessage()));
//            }
//            return null;
//        }
//    }

    public boolean showPopup {get;set;}


    public PageReference openPopup()
    {
        showPopup = true;
        return null;
    }

    public PageReference Cancel()
    {
        showPopup = false;
        return null;
    }

}