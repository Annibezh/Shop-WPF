using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Category 
    {
        int catId;
        string catName;
        public int CategoryId
        {
            get
            {
                return catId;
            }
            set
            {
                catId = value;
            }
        }
        public string CategoryName
        {
            get
            {
                return catName;
            }
            set
            {
                catName = value;
            }
        }
        public Category()
        {

        }
        public Category(int cId, string cName)
        {
            CategoryId = cId;
            CategoryName = cName;
        }
        public override string ToString()
        {
            return $"{CategoryName}";
        }
    }
}
