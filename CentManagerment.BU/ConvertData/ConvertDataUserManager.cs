using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataUserManager
    {
        public UserManagerDTO ConvertDataUserManagerToDTO(UserManager userManager)
        {
            var userManagerDTO = new UserManagerDTO()
            {
                UserId = userManager.UserId,
                UserName = userManager.UserName,
                UserPassword = userManager.UserPassword,
                UserType =userManager.UserType,
                UserAccount = userManager.UserAccount,
                UserCreateDate = userManager.UserCreateDate,
                UserEmail = userManager.UserEmail,
                UserPhone = userManager.UserPhone,
                UserStatus = userManager.UserStatus
            };
            return userManagerDTO;
        }
        public UserManager ConvertDataUserManagerToEF(UserManagerDTO userManagerDTO)
        {
            var userManager = new UserManager()
            {
                UserName = userManagerDTO.UserName,
                UserPassword = userManagerDTO.UserPassword,
                UserType = userManagerDTO.UserType,
                UserAccount = userManagerDTO.UserAccount,
                UserCreateDate = userManagerDTO.UserCreateDate,
                UserEmail = userManagerDTO.UserEmail,
                UserPhone = userManagerDTO.UserPhone,
                UserStatus = userManagerDTO.UserStatus
            };
            if (userManagerDTO.UserId > 0)
            {
                userManager.UserId = userManagerDTO.UserId;
            }
            return userManager;
        }
    }
}
