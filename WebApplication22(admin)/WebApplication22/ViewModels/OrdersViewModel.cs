using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class OrdersViewModel
    {
        public List<Order> Orders { get; set; }
        public Order CreatedOrder { get; set; }
    }
}