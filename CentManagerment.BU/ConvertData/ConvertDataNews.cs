using CentManagerment.BU.DTO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.ConvertData
{
    public class ConvertDataNews
    {
        public NewsDTO ConvertDataNewsToDTO(News news)
        {
            var newsDTO = new NewsDTO()
            {
                NewsContent = news.NewsContent,
                NewsId =news.NewsId,
                NewsPostDate = news.NewsPostDate,
                NewsShortContent = news.NewsShortContent,
                NewsTitle = news.NewsTitle,
                NewsUserID = news.NewsUserID,
                UserManagerDTO = new ConvertDataUserManager().ConvertDataUserManagerToDTO(news.UserManager)
            };
            return newsDTO;
        }
        public News ConvertDataNewsToEF(NewsDTO news)
        {
            var newsEF = new News()
            {
                NewsContent = news.NewsContent,
                NewsPostDate = news.NewsPostDate,
                NewsShortContent = news.NewsShortContent,
                NewsTitle = news.NewsTitle,
                NewsUserID = news.NewsUserID,
            };
            if(news.NewsId > 0)
            {
                newsEF.NewsId = news.NewsId;
            }
            return newsEF;
        }
    }
}
