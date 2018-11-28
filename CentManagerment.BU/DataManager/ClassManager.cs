using CentManagerment.BU.ConvertData;
using CentManagerment.BU.DTO;
using CentManagerment.Model.DAO;
using CentManagerment.Model.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CentManagerment.BU.DataManager
{
    public class ClassManager
    {
        CentManagermentEntities db = null;

        /// <summary>
        /// Insert class
        /// </summary>
        /// <param name="Class"></param>
        /// <returns></returns>
        public bool ClassManagerInsert(ClassDTO Class)
        {
            try
            {
                return new ClassDAO().Insert(new ConvertDataClass().ConvertDataClassToEF(Class));
            }
            catch (Exception)
            {

                return false;
            }
        }
        /// <summary>
        /// Update class
        /// </summary>
        /// <param name="Class"></param>
        /// <returns></returns>
        public bool ClassManagerUpdate(ClassDTO Class)
        {
            try
            {
                return new ClassDAO().Update(new ConvertDataClass().ConvertDataClassToEF(Class));
            }
            catch (Exception)
            {

                return false;
            }
        }
        /// <summary>
        /// delete class
        /// </summary>
        /// <param name="Class"></param>
        /// <returns></returns>
        public bool ClassManagerDelete(int id)
        {
            try
            {
                return new ClassDAO().Delete(id);
            }
            catch (Exception)
            {
                return false;
            }
        }
        /// <summary>
        /// Get List class DTO
        /// </summary>
        /// <returns></returns>
        /// #region Dungdz
        public List<ClassDTO> GetListClass()
        {
            using (db = new CentManagermentEntities())
            {
                var listClass = db.Class.ToList();
                var listDTO = new List<ClassDTO>();
                foreach (var item in listClass)
                {
                    listDTO.Add(new ConvertDataClass().ConvertDataClassToDTO(item));
                }
                return listDTO;
            }
        }

        public ClassDTO GetClassById(int classId)
        {
            using (db = new CentManagermentEntities())
            {
                return new ConvertDataClass().ConvertDataClassToDTO(db.Class.Find(classId));
            }
        }
    }
}
