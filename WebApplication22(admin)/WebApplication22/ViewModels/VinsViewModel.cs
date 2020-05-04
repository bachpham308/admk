using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class VinsViewModel
    {
        public List<Vin> Vins { get; set; }
        public Vin CreatedVin { get; set; }
    }
}