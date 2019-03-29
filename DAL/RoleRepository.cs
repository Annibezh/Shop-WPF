using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class RoleRepository : IRepository<Role>
    {
        ShopDBEntities db;
        public RoleRepository(ShopDBEntities db)
        {
            this.db = db;
        }
        public void CreateOrUpdate(Role obj)
        {
            db.Roles.AddOrUpdate(obj);
        }

        public Role Get(int id)
        {
            return db.Roles.Find(id);
        }

        public IEnumerable<Role> GetAll()
        {
            return db.Roles;
        }

        public void Remove(Role obj)
        {
            db.Roles.Remove(obj);
        }
    }
}
