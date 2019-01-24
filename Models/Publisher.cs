using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Collections.Generic;

namespace Test_Project.Models
{
    [Table("publishers")]
    public class Publisher
    {
        [Key]
        public long PublisherId {get; set;}

        [Display(Name="Publisher:")]
        [Required(ErrorMessage="A publisher must have a title")]
        public string Name {get; set;}

        public DateTime CreatedAt {get; set;}
        public DateTime UpdatedAt {get; set;}

        public List<Publication> Publication {get; set;}

        public Publisher() {
            CreatedAt = DateTime.Now;
            UpdatedAt = DateTime.Now;
        }
    }
}