using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class Customer
    {
        public int Id { get; set; }
        [Required]
        [Display(Name = "Полное имя")]
        public string FullName { get; set; }
        [Required]
        [Display(Name = "Телефон")]
        public string Phone { get; set; }
    }
}