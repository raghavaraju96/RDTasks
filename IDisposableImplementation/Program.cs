﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IDisposableImplementation
{
    class Program
    {
        static void Main(string[] args)
        {
            DatabaseClass databaseClass = new DatabaseClass();
            databaseClass.DisplayDetails(Properties.Settings.Default.ConnectionString);
            databaseClass.Dispose();
        }
    }
}
