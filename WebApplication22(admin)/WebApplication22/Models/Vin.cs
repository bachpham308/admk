using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class Vin
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "VIN")]
        public string Value { get; set; }
        [Required]
        [Display(Name = "Год")]
        public int ModelYearId { get; set; }

        public ModelYear ModelYear { get; set; }
        public List<ModelYear> ModelYears { get; set; }
    }
}