using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.Model.DAO
{
    public class NewsDAO
    {
        CentManagermentEntities db = null;
        // use using to open and close connection
        public bool Insert(News news)
        {
            using (db = new CentManagermentEntities())
            {
                db.News.Add(news);
                db.SaveChanges();
            }
            return true;


        }
        // use using to open and close connection
        public bool Update(News news)
        {
            using (db = new CentManagermentEntities())
            {
                var newsUpdate = db.News.FirstOrDefault(x => x.NewsId == news.NewsId);
                newsUpdate.NewsContent = news.NewsContent;
                newsUpdate.NewsPostDate = news.NewsPostDate;
                newsUpdate.NewsShortContent = news.NewsShortContent;
                newsUpdate.NewsTitle = news.NewsTitle;
                newsUpdate.NewsUserID = news.NewsUserID;
                db.SaveChanges();
            }
            return true;


        }
        // use using to open and close connection
        public bool Delete(News news)
        {
            using (db = new CentManagermentEntities())
            {
                db.News.Remove(news);
                db.SaveChanges();
            }
            return true;

        }
    }
}
