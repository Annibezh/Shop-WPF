using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public interface IUnitOfWork
    {
        IRepository<Good> Good { get; }
        IRepository<Category> Category { get; }
        IRepository<User> User { get; }
        IRepository<Role> Role { get; }
        void SaveChanges();
    }
}
