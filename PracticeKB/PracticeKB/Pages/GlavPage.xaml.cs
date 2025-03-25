using PracticeKB.Base;
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

namespace PracticeKB.Pages
{
    /// <summary>
    /// Логика взаимодействия для GlavPage.xaml
    /// </summary>
    public partial class GlavPage : Page
    {

        public GlavPage()
        {
            InitializeComponent();

        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            StudentGrid.ItemsSource = Base.Bdclass.bd.Student.ToList();
        }

        private void StudentGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
           
        private void Back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AuthorizationPage());
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddStudentPage());
        }


        private void Remove_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы действительно хотите удалить студента", "уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                var RemoveStudents = StudentGrid.SelectedItem as Student;
                Base.Bdclass.bd.Student.Remove(RemoveStudents);

                Base.Bdclass.bd.SaveChanges();
                StudentGrid.ItemsSource = Base.Bdclass.bd.Student.ToList();
                MessageBox.Show("Успешно!");
            }
        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            var button = sender as Button;
            var selectedStudent = button.DataContext as Student; 

            if (selectedStudent != null)
            {
                NavigationService.Navigate(new СhangePage(selectedStudent)); 
            }
        }

        private void FilterComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedItem = FilterComboBox.SelectedItem as ComboBoxItem;

            if (selectedItem != null)
            {
                string selectedGroup = selectedItem.Content.ToString();

                // Фильтруем студентов
                if (selectedGroup == "Все")
                {
                    StudentGrid.ItemsSource = Base.Bdclass.bd.Student.ToList();
                }
                else
                {
                    StudentGrid.ItemsSource = Base.Bdclass.bd.Student
                        .Where(s => s.Groups == selectedGroup)
                        .ToList();
                }
            }
        }
    }
}
