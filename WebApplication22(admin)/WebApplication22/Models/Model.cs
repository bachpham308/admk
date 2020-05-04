using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class Model
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Название")]
        public string Name { get; set; }
        [Required]
        [Display(Name = "Сокращенное название")]
        public string TrimName { get; set; }
        [Required]
        [Display(Name = "Модель")]
        public int MakeID { get; set; }
        [Required]
        [Display(Name = "VpicID")]
        public int VpicID { get; set; }

        public Make Make { get; set; }
        public List<Make> Makes { get; set; }
    }
}