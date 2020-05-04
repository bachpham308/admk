using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class MakesViewModel
    {
        public List<Make> Makes { get; set; }
        public Make CreatedMake { get; set; }
    }
}