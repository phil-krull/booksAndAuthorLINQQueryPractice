using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Test_Project.Models
{
    [Table("publications")]
    public class Publication
    {
        [Key]
        [Column("publicationId")]
        public long PublicationId {get; set;}

        [Display(Name="Book Title:")]
        public long BookId {get; set;}
        public Book Book {get; set;}

        [Display(Name="Publisher Name:")]
        public long PublisherId {get; set;}
        public Publisher Publisher {get; set;}

    }
}