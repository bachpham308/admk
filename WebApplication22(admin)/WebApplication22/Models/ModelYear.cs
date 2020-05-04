using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class ModelYear
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Год")]
        public int Year { get; set; }
        public object CarDetailsJSON { get; set; }
        public object ScheduleJSON { get; set; }
        [Required]
        [Display(Name = "Модель")]
        public int ModelID { get; set; }
        [Required]
        [Display(Name = "VpicID")]
        public int VpicID { get; set; }

        public Model Model { get; set; }
        public List<Model> Models { get; set; }
    }
}