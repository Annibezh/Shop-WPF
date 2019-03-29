using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class User : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;
        int userId;
        int roleId;
        string login;
        string password;
        public int UserId
        {
            get
            {
                return userId;
            }
            set
            {
                userId = value;
                Notify();
            }
        }
        public int RoleId
        {
            get
            {
                return roleId;
            }
            set
            {
                roleId = value;
                Notify();
            }
        }
        public string Login
        {
            get
            {
                return login;
            }
            set
            {
                login = value;
                Notify();
            }
        }
        public string Password
        {
            get
            {
                return password;
            }
            set
            {
                password = value;
                Notify();
            }
        }
        public User()
        {

        }
        public User(int uId, int rId, string log, string pass, PropertyChangedEventHandler p)
        {
            UserId = uId;
            RoleId = rId;
            Login = log;
            Password = pass;
            PropertyChanged += p;
        }
        private void Notify([CallerMemberName]string property = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(property));
        }
    }
}
