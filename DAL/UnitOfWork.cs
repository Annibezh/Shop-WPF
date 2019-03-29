using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class UnitOfWork : IUnitOfWork
    {
        ShopDBEntities db = new ShopDBEntities();
        CategoryRepository category;
        GoodRepository good;
        RoleRepository role;
        UserRepository user;
        public IRepository<Category> Category
        {
            get
            {
                if (category == null)
                    category = new CategoryRepository(db);
                return category;
            }
        }
        public IRepository<Good> Good
        {
            get
            {
                if (good == null)
                    good = new GoodRepository(db);
                return good;
            }
        }
        public IRepository<Role> Role
        {
            get
            {
                if (role == null)
                    role = new RoleRepository(db);
                return role;
            }
        }
        public IRepository<User> User
        {
            get
            {
                if (user == null)
                    user = new UserRepository(db);
                return user;
            }
        }
        public void SaveChanges()
        {
            db.SaveChanges();
        }
    }
}
