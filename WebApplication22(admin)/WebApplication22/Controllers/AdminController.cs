using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WebApplication22.Models;
using WebApplication22.ViewModels;

namespace VinPrj.Controllers
{
    public class AdminController : Controller
    {
        CarDbContext db = new CarDbContext("Server=localhost; Port=3306;  uid=root; Pwd=12345; Database=mydb; charset=utf8;");

        public ActionResult Users()
        {
            if(LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            UsersViewModel viewModel = new UsersViewModel
            {
                Users = db.Get<User>(),
                CreatedUser = new User()
            };
            return View(viewModel);
        }

        public ActionResult CreateUser(User user)
        {
            user.Password = CreateMD5(user.Password);
            db.Insert(user);

            return RedirectToAction("Users");
        }

        public ActionResult DeleteUser(int id)
        {
            User user = db.Get<User>().First(u => u.Id == id);
            db.Delete(user);

            return RedirectToAction("Users");
        }

        //makes
        public ActionResult Makes()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            MakesViewModel viewModel = new MakesViewModel
            {
                Makes = db.Get<Make>(),
                CreatedMake = new Make()
            };
            return View(viewModel);
        }

        public ActionResult CreateMake(Make make)
        {
            db.Insert(make);

            return RedirectToAction("Makes");
        }

        public ActionResult DeleteMake(int id)
        {
            Make make = db.Get<Make>().First(m => m.ID == id);
            db.Delete(make);

            return RedirectToAction("Makes");
        }

        //models
        public ActionResult Models()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            ModelsViewModel viewModel = new ModelsViewModel
            {
                Models = db.Get<Model>(),
                CreatedModel = new Model() { Makes = db.Get<Make>() }
            };
            return View(viewModel);
        }

        public ActionResult CreateModel(Model model)
        {
            try
            {
                model.ID = db.Get<Model>().Last().ID + 1;
            }
            catch
            {
                model.ID = 1;
            }
            db.Insert(model);

            return RedirectToAction("Models");
        }

        public ActionResult DeleteModel(int id)
        {
            Model model = db.Get<Model>().First(m => m.ID == id);
            db.Delete(model);

            return RedirectToAction("Models");
        }

        //model years
        public ActionResult ModelYears()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            ModelYearsViewModel viewModel = new ModelYearsViewModel
            {
                ModelYears = db.Get<ModelYear>(),
                CreatedModelYear = new ModelYear() { Models = db.Get<Model>() }
            };
            return View(viewModel);
        }

        public ActionResult CreateModelYear(ModelYear modelYear)
        {
            try
            {
                modelYear.ID = db.Get<Model>().Last().ID + 1;
            }
            catch
            {
                modelYear.ID = 1;
            }
            db.Insert(modelYear);

            return RedirectToAction("ModelYears");
        }

        public ActionResult DeleteModelYear(int id)
        {
            ModelYear model = db.Get<ModelYear>().First(m => m.ID == id);
            db.Delete(model);

            return RedirectToAction("ModelYears");
        }

        //vins
        public ActionResult Vins()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            VinsViewModel viewModel = new VinsViewModel
            {
                Vins = db.Get<Vin>(),
                CreatedVin = new Vin() { ModelYears = db.Get<ModelYear>() }
            };
            return View(viewModel);
        }

        public ActionResult CreateVin(Vin vin)
        {
            try
            {
                vin.ID = db.Get<Vin>().Last().ID + 1;
            }
            catch
            {
                vin.ID = 1;
            }
            db.Insert(vin);

            return RedirectToAction("Vins");
        }

        public ActionResult DeleteVin(int id)
        {
            Vin vin = db.Get<Vin>().First(m => m.ID == id);
            db.Delete(vin);

            return RedirectToAction("Vins");
        }

        //customer
        public ActionResult Customers()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            CustomersViewModel viewModel = new CustomersViewModel
            {
                Customers = db.Get<Customer>(),
                CreatedCustomer = new Customer() { }
            };
            return View(viewModel);
        }

        public ActionResult CreateCustomer(Customer customer)
        {
            db.Insert(customer);

            return RedirectToAction("Customers");
        }

        public ActionResult DeleteCustomer(int id)
        {
            Customer customer = db.Get<Customer>().First(m => m.Id == id);
            db.Delete(customer);

            return RedirectToAction("Customers");
        }

        //order
        public ActionResult Orders()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            OrdersViewModel viewModel = new OrdersViewModel
            {
                Orders = db.Get<Order>().FindAll(o => o.OrderStatusID != 3),
                CreatedOrder = new Order()
                {
                    OrderStatuses = db.Get<OrderStatus>(true),
                    ModelYears = db.Get<ModelYear>(true),
                    Customers = db.Get<Customer>(true),
                }
            };
            return View(viewModel);
        }
        public ActionResult Archieve()
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            OrdersViewModel viewModel = new OrdersViewModel
            {
                Orders = db.Get<Order>().FindAll(o => o.OrderStatusID == 3),
            };
            return View(viewModel);
        }

        public ActionResult CreateOrder(Order order)
        {
            try
            {
                order.ID = db.Get<Order>().Last().ID + 1;
            }
            catch
            {
                order.ID = 1;
            }
            db.Insert(order);

            return RedirectToAction("Orders");
        }

        public ActionResult DeleteOrder(int id)
        {
            Order order = db.Get<Order>().First(m => m.ID == id);
            db.Delete(order);

            return RedirectToAction("Orders");
        }

        public ActionResult PaidOrder(int id)
        {
            Order order = db.Get<Order>().First(m => m.ID == id);
            order.OrderStatusID = 2;
            db.Update(order);

            return RedirectToAction("Orders");
        }

        public ActionResult ArchieveOrder(int id)
        {
            Order order = db.Get<Order>().First(m => m.ID == id);
            order.OrderStatusID = 3;
            db.Update(order);

            return RedirectToAction("Orders");
        }


        //spares
        public ActionResult Spares(int orderId)
        {
            if (LoginData.Login == null)
            {
                return RedirectToAction("Index", "Auth");
            }

            SparesViewModel viewModel = new SparesViewModel
            {
                Spares = db.Get<Spare>().FindAll(o => o.OrderId == orderId),
                CreatedSpare = new Spare()
                {
                    OrderId = orderId,
                     Services = db.Get<Service>(),
                      Applications = db.Get<Application>()
                }
            };
            return View(viewModel);
        }

        public ActionResult CreateSpare(Spare spare)
        {
            try
            {
                spare.Id = db.Get<Order>().Last().ID + 1;
            }
            catch
            {
                spare.Id = 1;
            }
            db.Insert(spare);

            return RedirectToAction("Spares", new { orderId = spare.OrderId });
        }

        public ActionResult DeleteSpare(int id)
        {
            Spare spare = db.Get<Spare>().First(m => m.Id == id);
            db.Delete(spare);

            return RedirectToAction("Spares", new { orderId = spare.OrderId });
        }

        //md5
        private string CreateMD5(string input)
        {
            using (System.Security.Cryptography.MD5 md5 = System.Security.Cryptography.MD5.Create())
            {
                byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
                byte[] hashBytes = md5.ComputeHash(inputBytes);

                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < hashBytes.Length; i++)
                {
                    sb.Append(hashBytes[i].ToString("X2"));
                }
                return sb.ToString();
            }
        }
    }
}