using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class GoodRepository : IRepository<Good>
    {
        ShopDBEntities db;
        public GoodRepository(ShopDBEntities db)
        {
            this.db = db;
        }
        public void CreateOrUpdate(Good obj)
        {
            db.Goods.AddOrUpdate(obj);
        }

        public Good Get(int id)
        {
            return db.Goods.Find(id);
        }

        public IEnumerable<Good> GetAll()
        {
            return db.Goods;
        }

        public void Remove(Good obj)
        {
            db.Goods.Remove(obj);
        }
    }
}
