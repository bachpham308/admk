using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class SparesViewModel
    {
        public List<Spare> Spares { get; set; }
        public Spare CreatedSpare { get; set; }
    }
}