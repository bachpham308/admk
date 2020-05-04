using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using WebApplication22.Models;

namespace WebApplication22.Controllers
{
    public class AuthController : Controller
    {
        CarDbContext db = new CarDbContext("Server=localhost; Port=3306;  uid=root; Pwd=12345; Database=mydb; charset=utf8;");

        // GET: Auth
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login(User user)
        {
            user.Password = CreateMD5(user.Password);

            User lUser = db.Get<User>().FirstOrDefault(u => u.Name == user.Name && u.Password == user.Password);
            if(lUser != null)
            {
                LoginData.Login = lUser;
                return RedirectToAction("Users", "Admin");
            }
            else
            {
                return RedirectToAction("Index");
            }
        }

        public ActionResult Logout()
        {
            LoginData.Login = null;
            return RedirectToAction("Index");
        }

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