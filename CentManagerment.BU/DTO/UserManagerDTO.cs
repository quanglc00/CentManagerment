using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DTO
{
    public class UserManagerDTO
    {
        public int UserId { get; set; }
        public string UserName { get; set; }
        public string UserPassword { get; set; }
        public int? UserType { get; set; }
        public string UserAccount { get; set; }
        public string UserEmail { get; set; }
        public string UserPhone { get; set; }
        public DateTime? UserCreateDate { get; set; }
        public int? UserStatus { get; set; }

    }
}
