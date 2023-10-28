using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static MongoDB.Driver.WriteConcern;

namespace AssertProj
{
    public partial class People : System.Web.UI.Page
    {
        protected string males;
        protected string females;
        protected string boys;
        protected string girls;
        protected void Page_Load(object sender, EventArgs e)
        {
            var connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            var database = client.GetDatabase("PeopleDB");
            var collection = database.GetCollection<BsonDocument>("NumberOfPeople");
            var document = collection.Find(new BsonDocument()).FirstOrDefault();

            if (document != null)
            {
                
                males = document["Males"].AsString;
                females = document["Females"].AsString;
                boys = document["Boys"].AsString;
                girls = document["Girls"].AsString;

                
                Label5.Text = $"Males: {males}";
                Label6.Text = $" Females: {females}";
                Label7.Text = $" Boys: {boys}";
                Label8.Text = $" Girls: {girls}";

            }
            else
            {
                
                
            }
            









        }
    }
}