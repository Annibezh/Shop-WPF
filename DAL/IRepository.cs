using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public interface IRepository<T>
    {
        void CreateOrUpdate(T obj);
        void Remove(T obj);
        T Get(int id);
        IEnumerable<T> GetAll();
    }
}
