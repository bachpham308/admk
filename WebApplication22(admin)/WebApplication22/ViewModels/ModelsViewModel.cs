using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebApplication22.Models;

namespace WebApplication22.ViewModels
{
    public class ModelsViewModel
    {
        public List<Model> Models { get; set; }
        public Model CreatedModel { get; set; }
    }
}