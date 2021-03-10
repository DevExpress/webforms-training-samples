using System;
using System.ComponentModel.DataAnnotations;

namespace sample_5_7 {
  public class EventRequestSubmission {
    [DisplayFormat(NullDisplayText = "Event Name")]
    [Required(ErrorMessage = "The Event Name is required")]
    [Display(Name = "Name")]
    public string EventName { get; set; }

    [DisplayFormat(NullDisplayText = "Describe the event")]
    public string Description { get; set; }

    [Required]
    [Display(Name = "Starts On")]
    public DateTime StartDate { get; set; }

    [Required]
    [Display(Name = "Ends On")]
    public DateTime EndDate { get; set; }

    [Range(10, 300)]
    [DisplayFormat(NullDisplayText = "Required Capacity")]
    [Display(Name = "Capacity")]
    public int TargetCapacity { get; set; }
  }
}
