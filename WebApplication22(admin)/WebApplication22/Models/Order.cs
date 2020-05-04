using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace WebApplication22.Models
{
    public class Order
    {
        public int ID { get; set; }
        [Required]
        [Display(Name = "Цена")]
        public double Price { get; set; }
        [Required]
        [Display(Name = "Дата создание")]
        public string CreationDate { get; set; }
        [Required]
        [Display(Name = "Дата изменения")]
        public string ChangeDate { get; set; }
        [Required]
        [Display(Name = "Состояние")]
        public int OrderStatusID { get; set; }
        [Required]
        [Display(Name = "Клиент")]
        public int CustomerID { get; set; }
        [Required]
        [Display(Name = "Год")]
        public int ModelYearId { get; set; }

        public OrderStatus OrderStatus { get; set; }
        public Customer Customer { get; set; }
        public ModelYear ModelYear { get; set; }

        public List<OrderStatus> OrderStatuses { get; set; }
        public List<Customer> Customers { get; set; }
        public List<ModelYear> ModelYears { get; set; }
    }
}