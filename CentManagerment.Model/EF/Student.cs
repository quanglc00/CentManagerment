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
    
    public partial class Student
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Student()
        {
            this.Revenues = new HashSet<Revenue>();
        }
    
        public int StudentId { get; set; }
        public string StudentName { get; set; }
        public Nullable<int> StudentMark { get; set; }
        public Nullable<int> StudentClassID { get; set; }
        public Nullable<double> StudentSchoolFee { get; set; }
        public string StudentEmail { get; set; }
        public string StudentPhone { get; set; }
        public string StudentAdress { get; set; }
        public Nullable<bool> StudentSchoolFeeStatus { get; set; }
        public Nullable<System.DateTime> StudentSchoolFeeDate { get; set; }
    
        public virtual Class Class { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Revenue> Revenues { get; set; }
    }
}
