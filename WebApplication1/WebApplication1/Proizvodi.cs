using System;
using System.Collections.Generic;

namespace WebApplication1
{
    public class Proizvod
    {

        public int id { get; set; }
        public String name { get; set; }
        public String description { get; set; }
        public String category { get; set; }
        public String factory { get; set; }
        public String retailer { get; set; }
        public int price { get; set; }

        public Proizvod()
        {
            //
            // TODO: Add constructor logic here
            //
        }
    }

    public class Proizvodi
    {
        public List<Proizvod> ListaProizvoda { get; set; }
    }
}



