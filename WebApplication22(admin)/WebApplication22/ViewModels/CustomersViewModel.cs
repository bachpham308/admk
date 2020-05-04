using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class CustomersViewModel
    {
        public List<Customer> Customers { get; set; }
        public Customer CreatedCustomer { get; set; }
    }
}