using PracticeKB.Base;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
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

namespace PracticeKB.Pages
{
    /// <summary>
    /// Логика взаимодействия для AddUserPage.xaml
    /// </summary>
    public partial class AddUserPage : Page
    {
        public AddUserPage()
        {
            InitializeComponent();
            RoleCB.ItemsSource = Base.Bdclass.bd.Role.ToList();
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            string Login = LoginTB.Text.Trim();
            string Password = PasswordTB.Text.Trim();
            string Role = RoleCB.Text.Trim();

            if (string.IsNullOrEmpty(Login))
            {
                MessageBox.Show("Заполните логин!");
                return;
            }
            if (string.IsNullOrEmpty(Password))
            {
                MessageBox.Show("Заполните пароль!");
                return;
            }
            if (string.IsNullOrEmpty(Role))
            {
                MessageBox.Show("Выберите роль!");
                return;
            }
            User user = new User();
            user.Login = LoginTB.Text;
            user.Password = PasswordTB.Text;
            var role = RoleCB.SelectedItem as Base.Role;
            user.Role_ID = role.ID_Role;
            
            Base.Bdclass.bd.User.Add(user);
            Base.Bdclass.bd.SaveChanges();
            MessageBox.Show("Учётная запись успешно создана!");
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthorizationPage());
        }
    }
}
