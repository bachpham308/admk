using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class Spare
    {
        public int Id { get;set; }
        [Required]
        [Display(Name = "Название")]
        public string Name { get; set; }
        [Required]
        [Display(Name = "Стоимость Происхождение")]
        public int CostOrigin { get; set; }
        [Required]
        [Display(Name = "Стоимость замены")]
        public int CostReplacement { get; set; }
        [Required]
        [Display(Name = "Сменное производство")]
        public string ReplacementProduction { get; set; }
        [Required]
        [Display(Name = "Продолжительность происхождения")]
        public int OriginDuration { get; set; }
        [Required]
        [Display(Name = "Продолжительность замены")]
        public int ReplacementDuration { get; set; }
        [Required]
        [Display(Name = "Заказ")]
        public int OrderId { get; set; }
        [Required]
        [Display(Name = "Сервис")]
        public int ServiceId { get; set; }
        [Required]
        [Display(Name = "Приложение")]
        public int ApplicationId { get; set; }

        public Order Order { get; set; }
        public Service Service { get; set; }
        public Application Application { get; set; }

        public List<Service> Services { get; set; }
        public List<Application> Applications { get; set; }
    }
}