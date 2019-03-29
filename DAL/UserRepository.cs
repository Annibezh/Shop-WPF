using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class UserRepository : IRepository<User>
    {
        ShopDBEntities db;
        public UserRepository(ShopDBEntities db)
        {
            this.db = db;
        }
        public void CreateOrUpdate(User obj)
        {
            db.Users.AddOrUpdate();
        }
        public User Get(int id)
        {
            return db.Users.Find(id);
        }
        public IEnumerable<User> GetAll()
        {
            return db.Users;
        }

        public void Remove(User obj)
        {
            db.Users.Remove(obj);
        }
    }
}
