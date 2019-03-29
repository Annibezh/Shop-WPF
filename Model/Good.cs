using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Good : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        int goodId;
        int catId;
        string name;
        double price;
        string image;
        string descrFull;
        string descr;
        string catName;
        public int GoodId
        {
            get
            {
                return goodId;
            }
            set
            {
                goodId = value;
                Notify();
            }
        }
        public int CategoryId
        {
            get
            {
                return catId;
            }
            set
            {
                catId = value;
                Notify();
            }
        }
        public string GoodName
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
                Notify();
            }
        }
        public double Price
        {
            get
            {
                return price;
            }
            set
            {
                price = value;
                Notify();
            }
        }
        public string Image
        {
            get
            {
                return image;
            }
            set
            {
                image = value;
                Notify();
            }
        }
        public string Description
        {
            get
            {
                return descr;
            }
            set
            {
                descr = value;
                Notify();
            }
        }
        public string DescriptionFull
        {
            get
            {
                return descrFull;
            }
            set
            {
                descrFull = value;
                Notify();
            }
        }
        public string CatName
        {
            get
            {
                return catName;
            }
            set
            {
                catName = value;
                Notify();
            }
        }

        private void Notify([CallerMemberName]string property = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }
        public Good()
        {

        }
        public Good(int cId, string gName, double price, string img, string descr,
                   string descrFull, PropertyChangedEventHandler p)
        {
            CategoryId = cId;
            GoodName = gName;
            Price = price;
            Image = img;
            Description = descr;
            DescriptionFull = descrFull;
            PropertyChanged += p;
        }
        public Good(int gId, int cId, string gName, double price, string img, string descr, 
                    string descrFull, string catName, PropertyChangedEventHandler p)
        {
            GoodId = gId;
            CategoryId = cId;
            GoodName = gName;
            Price = price;
            Image = img;
            Description = descr;
            DescriptionFull = descrFull;
            CatName = catName;
            PropertyChanged += p;
        }
    }
}
