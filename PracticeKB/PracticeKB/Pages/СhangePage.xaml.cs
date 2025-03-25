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
    /// Логика взаимодействия для СhangePage.xaml
    /// </summary>
    public partial class СhangePage : Page
    {
        private Student _currentStudent;
        public СhangePage(Student selectedStudent)
        {
            InitializeComponent();
            _currentStudent = selectedStudent;

            if (_currentStudent != null)
            {
                DataContext = _currentStudent; 
                FioTB.Text = _currentStudent.FIO; 
                GroupTB.Text = _currentStudent.Groups; 
                SpecializationCB.ItemsSource = Base.Bdclass.bd.Specialization.ToList();
                SpecializationCB.SelectedValue = _currentStudent.Specialization_ID; 
            }
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
            if (_currentStudent != null)
            {
                
                _currentStudent.FIO = FioTB.Text;
                var specialization = SpecializationCB.SelectedItem as Specialization;
                if (specialization != null)
                {
                    _currentStudent.Specialization_ID = specialization.ID_Specialization; 
                }
                _currentStudent.Groups = GroupTB.Text; 

                Base.Bdclass.bd.SaveChanges(); 
                MessageBox.Show("Данные студента успешно обновлены!"); 
            }
        }

        private void back_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new GlavPage());
        }
    }
}
