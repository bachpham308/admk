using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class UsersViewModel
    {
        public List<User> Users { get; set; }
        public User CreatedUser { get; set; }
    }
}