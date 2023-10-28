using MongoDB.Bson;
using MongoDB.Driver;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssertProj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            var connectionString = "mongodb://localhost:27017";
            var client = new MongoClient(connectionString);
            IMongoDatabase db = client.GetDatabase("PeopleDB");
            var collection = db.GetCollection<BsonDocument>("NumberOfPeople");
            var filter = new BsonDocument();

            
            var existingDocument = collection.Find(filter).FirstOrDefault();

            if (existingDocument != null)
            {
                
                existingDocument["Males"] = TextBox1.Text;
                existingDocument["Females"] = TextBox2.Text;
                existingDocument["Boys"] = TextBox3.Text;
                existingDocument["Girls"] = TextBox4.Text;

                
                collection.ReplaceOne(filter, existingDocument);
            }
            else
            {
                
                var insertData = new BsonDocument {
                { "Males", TextBox1.Text },
                { "Females", TextBox2.Text },
                { "Boys", TextBox3.Text },
                { "Girls", TextBox4.Text }
            };

                collection.InsertOne(insertData);
            }

            Response.Redirect("People.aspx");
        }
    }
}