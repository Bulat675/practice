using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using PracticeKB.Pages;

namespace PracticeKB.Pages
{
    /// <summary>
    /// Логика взаимодействия для AuthorizationPage.xaml
    /// </summary>
    public partial class AuthorizationPage : Page
    {
        public AuthorizationPage()
        {
            InitializeComponent();
        }

        private void Auth_Click(object sender, RoutedEventArgs e)
        {
            string login = LoginTB.Text.Trim();
            string password = PasswordBx.Password.Trim();
            if (string.IsNullOrEmpty(login))
            {
                MessageBox.Show("Заполните логин!");
                return;
            }
            if (string.IsNullOrEmpty(password)) 
            {
                MessageBox.Show("Заполните пароль!");
                return;
            }
            var authorization = Base.Bdclass.bd.User.FirstOrDefault(u => u.Login == LoginTB.Text && u.Password == PasswordBx.Password);
            if (authorization != null)
            {
                if (authorization.Role_ID == 1)
                {
                    NavigationService.Navigate(new GlavPage());
                }
            }
            else
            {
                MessageBox.Show("Неправильный логин или пароль!");
            }
        }
    }
}
