//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CentManagerment.Model.EF
{
    using System;
    using System.Collections.Generic;
    
    public partial class News
    {
        public int NewsId { get; set; }
        public string NewsContent { get; set; }
        public string NewsShortContent { get; set; }
        public Nullable<System.DateTime> NewsPostDate { get; set; }
        public string NewsTitle { get; set; }
        public Nullable<int> NewsUserID { get; set; }
        public string NewsAvatar { get; set; }
    
        public virtual UserManager UserManager { get; set; }
    }
}
