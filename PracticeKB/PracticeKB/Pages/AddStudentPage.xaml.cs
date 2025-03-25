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
    /// Логика взаимодействия для AddStudentPage.xaml
    /// </summary>
    public partial class AddStudentPage : Page
    {
        
        public AddStudentPage()
        {
            InitializeComponent();
            SpecializationCB.ItemsSource = Base.Bdclass.bd.Specialization.ToList();
        }

        private void Add_Click(object sender, RoutedEventArgs e)
        {
            string FIO = FioTB.Text.Trim();
            string Specializ = SpecializationCB.Text.Trim();
            string Groups = GroupTB.Text.Trim();

            if (string.IsNullOrEmpty(FIO))
            {
                MessageBox.Show("Заполните ФИО!");
                return;
            }
            if (string.IsNullOrEmpty(Specializ))
            {
                MessageBox.Show("Выберите специальность!");
                return;
            }
            if (string.IsNullOrEmpty(Groups))
            {
                MessageBox.Show("Заполните группу!");
                return;
            }
            Student student = new Student();
            student.FIO = FioTB.Text;
            var Specialization = SpecializationCB.SelectedItem as Specialization;
            student.Specialization_ID = Specialization.ID_Specialization;
            student.Groups = GroupTB.Text;
            Base.Bdclass.bd.Student.Add(student);
            Base.Bdclass.bd.SaveChanges();
            MessageBox.Show("Студент успешно добавлен!");
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new GlavPage());
        }
    }
}
