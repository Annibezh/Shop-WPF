using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Collections.ObjectModel;

namespace Model
{
    public class ShopAdo
    {
        IUnitOfWork unitOfWork;
        ObservableCollection<User> user;
        List<Category> category;
        ObservableCollection<Good> good;
        public int AddOrDelete
        {
            get
            {
                return addOrDelete;
            }
            set
            {
                addOrDelete = value;
            }
        }
        int addOrDelete;
        public ShopAdo()
        {
            unitOfWork = new UnitOfWork();
            
            Goods.CollectionChanged += Good_CollectionChanged;
        }
        private void Good_CollectionChanged(object sender, System.Collections.Specialized.NotifyCollectionChangedEventArgs e)
        {
            if(AddOrDelete == 2)
            {
                DAL.Good g = unitOfWork.Good.GetAll().FirstOrDefault(x => x.Id == ((Good)e.OldItems[0]).GoodId);
                unitOfWork.Good.Remove(g);
            }
            else if(AddOrDelete == 1)
            {
                if(e.NewItems[0] != null)
                {
                    string name = ((Good)e.NewItems[0]).GoodName;
                    int catId = ((Good)e.NewItems[0]).CategoryId;
                    string image = ((Good)e.NewItems[0]).Image;
                    string descr = ((Good)e.NewItems[0]).Description;
                    string fullDescr = ((Good)e.NewItems[0]).DescriptionFull;
                    double price = ((Good)e.NewItems[0]).Price;
                    DAL.Good g = new DAL.Good
                    {
                        CategoryId = catId,
                        Name = name,
                        Description = descr,
                        DescriptionFull = fullDescr,
                        ImagePath = image,
                        Price = price
                    };
                    unitOfWork.Good.CreateOrUpdate(g);
                }
            }
            unitOfWork.SaveChanges();
        }
        public ObservableCollection<User> Users
        {
            get
            {
                if (user == null)
                    user =
                        new ObservableCollection<User>(unitOfWork
                            .User
                                 .GetAll()
                                     .Select(x => new User(x.Id, x.RoleId, x.Login, x.Password, ShopAdo_PropertyChangedUser)));
                return user;
            }
        }
        public List<Category> Categories
        {
            get
            {
                if (category == null)
                    category =
                        new List<Category>(unitOfWork
                            .Category
                                 .GetAll()
                                     .Select(x => new Category(x.Id, x.Name)));
                return category;
            }
        }
        public ObservableCollection<Good> Goods
        {
            get
            {
                if (good == null)
                    good =
                        new ObservableCollection<Good>(unitOfWork
                            .Good
                                .GetAll()
                                    .Select(x => new Good(x.Id, x.CategoryId, x.Name, x.Price, x.ImagePath, x.Description, 
                                                            x.DescriptionFull, x.Category.Name, ShopAdo_PropertyChangedGood)));
                return good;
            }
        }
        public void ShopAdo_PropertyChangedGood(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            Good g = sender as Good;
            DAL.Good dg = unitOfWork.Good.Get(g.GoodId);
            dg.CategoryId = g.CategoryId;
            dg.Name = g.GoodName;
            dg.Price = g.Price;
            dg.ImagePath = g.Image;
            dg.Description = g.Description;
            dg.DescriptionFull = g.DescriptionFull;
            
            unitOfWork.Good.CreateOrUpdate(dg);
        }
        public void ShopAdo_PropertyChangedUser(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            User u = sender as User;
            DAL.User du = unitOfWork.User.Get(u.UserId);
            du.Login = u.Login;
            du.Password = u.Password;
            du.RoleId = u.RoleId;            
        }
        public void SaveChanges()
        {
            unitOfWork.SaveChanges();
        }
    }
}
