using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class CategoryRepository : IRepository<Category>
    {
        ShopDBEntities db;
        public CategoryRepository(ShopDBEntities db)
        {
            this.db = db;
        }
        public void CreateOrUpdate(Category obj)
        {
            db.Categories.AddOrUpdate(obj);
        }

        public Category Get(int id)
        {
            return db.Categories.Find(id);
        }

        public IEnumerable<Category> GetAll()
        {
            return db.Categories;
        }

        public void Remove(Category obj)
        {
            db.Categories.Remove(obj);
        }
    }
}
