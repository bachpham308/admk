using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class ModelYearsViewModel
    {
        public List<ModelYear> ModelYears { get; set; }
        public ModelYear CreatedModelYear { get; set; }
    }
}