<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use App\Http\Requests\ContactFormRequest;
use App\Http\Requests\StudentFormRequest;
use App\Interface\ApiRepositoryInterface;
use App\Mail\MailContact;
use App\Mail\NewStudentRegistered;
use App\Models\NewsandBlogs;
use App\Models\Contact;
use App\Models\Student;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\Mail;

class ApiController extends Controller
{
    private ApiRepositoryInterface $apiRepositoryInterface;

    public function __construct(ApiRepositoryInterface $apiRepositoryInterface)
    {
        $this->apiRepositoryInterface = $apiRepositoryInterface;
    }

    public function aboutusDetails()
    {
        $data = $this->apiRepositoryInterface->aboutUs();

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function ourTeams()
    {
        $data = $this->apiRepositoryInterface->teams();

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        return response()->json(['teams_details' => $data, 'success' => true], 200);
    }

    public function homeSlider()
    {
        $data = $this->apiRepositoryInterface->home_slider();
        
        $base_url = "https://skillmerge.in/backend/storage/app/public/";

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        return response()->json(['data' => $data,'base_url' =>$base_url, 'success' => true], 200);
    }

   public function what_we_do()
    {
        $data = $this->apiRepositoryInterface->what_we_do();
        
        $base_url = "https://skillmerge.in/backend/storage/app/public/";

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        return response()->json(['data' => $data,'base_url'=>$base_url, 'success' => true], 200);
    }


    public function programs()
    {
        $data = $this->apiRepositoryInterface->programs();

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        return response()->json(['data' => $data, 'success' => true], 200);
    }

   public function why_choose_us()
    {
        $data = $this->apiRepositoryInterface->whyChooseUs();

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        $bg_image = url("https://skillmerge.in/backend/public/assets/images/why-bg.png");

        return response()->json(['data' => $data, 'bg_image' => $bg_image, 'success' => true], 200);
    }

    public function our_approach()
    {
        $data = $this->apiRepositoryInterface->ourApproach();

        if (is_null($data)) {
            return response()->json([
                'error' => 'No data available',
                'data' => []
            ], 404);
        }

        $bg_image = url("public/assets/images/why-bg.png");

        return response()->json(['data' => $data, 'bg_image' => $bg_image, 'success' => true], 200);
    }

    public function selection_process()
    {
        $data = $this->apiRepositoryInterface->selectionProcess();

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function student_registration(StudentFormRequest $request)
    {
        $validator = $request->validated();

        $student = Student::create($validator);

        if ($student) {
            $sender = $student->email;
             $to      = 'skillmergeleads@gmail.com';
             $subject = 'New Student Registration';
             //$message = "<b>A new student has registered<\b>:\n\nName: {$student->name}\nEmail: {$student->email}\nRegistration Date: {$student->created_at}";

             // use wordwrap() if lines are longer than 70 characters
            $message = ' <!DOCTYPE html>
                    <html>
                    <head>
                        <style>
                            .email-container {
                                font-family: Arial, sans-serif;
                                color: #333;
                                max-width: 600px;
                                margin: 0 auto;
                                padding: 20px;
                                border: 1px solid #ddd;
                                border-radius: 5px;
                                background-color: #f9f9f9;
                            }
                            .email-header {
                                background-color: #4CAF50;
                                color: white;
                                padding: 10px;
                                text-align: center;
                                border-radius: 5px 5px 0 0;
                            }
                            .email-body {
                                padding: 20px;
                                line-height: 1.6;
                            }
                            .email-footer {
                                margin-top: 20px;
                                text-align: center;
                                font-size: 12px;
                                color: #666;
                            }
                        </style>
                    </head>
                    <body>
                        <div class="email-container">
                            <div class="email-header">
                                <h2>New Student Registration</h2>
                            </div>
                            <div class="email-body">
                                <p>Hello Admin,</p>
                                <p>A new student has registered with the following details:</p>
                                <table>
                                    <tr>
                                        <td><strong>Name:</strong></td>
                                        <td>' . htmlspecialchars($student->name) . '</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Email:</strong></td>
                                        <td>' . htmlspecialchars($student->email) . '</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Phone Number:</strong></td>
                                        <td>' . htmlspecialchars($student->phone_number) . '</td>
                                    </tr>
                                     <tr>
                                        <td><strong>Course:</strong></td>
                                        <td>' . htmlspecialchars($student->course) . '</td>
                                    </tr>
                                     <tr>
                                        <td><strong>Mode:</strong></td>
                                        <td>' . htmlspecialchars($student->mode) . '</td>
                                    </tr>
                                    <tr>
                                        <td><strong>Registration Date:</strong></td>
                                        <td>' . htmlspecialchars($student->created_at) . '</td>
                                    </tr>
                                </table>
                               
                            </div>
                           
                        </div>
                    </body>
                    </html>';

// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-Type: text/html; charset=UTF-8" . "\r\n";

    if(mail($to, $subject,$message,$headers))
    {
        return response()->json(['success'=> true,'message' => 'Your Data Added Successfully', 'student' => $student], 201);
    }
    else{
        
        return response()->json(['success' => false,'message' => 'Failed to add data'], 500);
       
    }
        }
          
    }

    public function news_and_blogs()
    {
        $data = $this->apiRepositoryInterface->newandblogs();

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function latest_jobs()
    {
        $data = $this->apiRepositoryInterface->jobs();

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function hackverse()
    {
        $data = $this->apiRepositoryInterface->hackverse();

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function testimonials()
    {
        $data = $this->apiRepositoryInterface->testimonials();

        return response()->json(['data' => $data, 'success' => true], 200);
    }

    public function faq()
    {
        $data = $this->apiRepositoryInterface->faq();

        return response()->json(['data' => $data, 'success' => true], 200);
    }
    
     public function aminities()
    {
        $data = $this->apiRepositoryInterface->aminities();
        
        $base_url = "https://skillmerge.in/backend/storage/app/public/";

        return response()->json(['data' => $data,'base_url'=>$base_url, 'success' => true], 200);
    }

    public function global_certification_partners()
    {
        $data = $this->apiRepositoryInterface->certificationPartners();
        $base_url = "https://skillmerge.in/backend/storage/app/public/";

        return response()->json(['data' => $data,'base_url'=>$base_url, 'success' => true], 200);
    }

    public function placement_drives()
    {
        $data = $this->apiRepositoryInterface->placementDrives();
        $base_url = "https://skillmerge.in/backend/storage/app/public/";

        return response()->json(['data' => $data,'base_url'=>$base_url, 'success' => true], 200);
    }
    
     public function contactMail(ContactFormRequest $request)
    {
        $validator = $request->validated();

        $contact = Contact::create($validator);

        // if ($contact) {
        //     Mail::to('prezentyapp@gmail.com')->send(new MailContact($contact));

        //     return response()->json(['message' => 'Enquiry Sent Successfully'], 201);
        // }
        // return response()->json(['message' => 'Failed to add data'], 500);

        if ($contact) {
            $sender = $contact->email;
             $to      = 'skillmergeleads@gmail.com';
             $subject = 'Contact Enquiry';
             //$message = "<b>A new student has registered<\b>:\n\nName: {$student->name}\nEmail: {$student->email}\nRegistration Date: {$student->created_at}";

             // use wordwrap() if lines are longer than 70 characters
            $message = ' <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Email</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            line-height: 1.6;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 600px;
            margin: 20px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #333;
        }
        p {
            margin: 10px 0;
        }
        .info {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .info p {
            margin: 5px 0;
        }
        .footer {
            margin-top: 20px;
            color: #777;
            font-size: 12px;
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Contact Form Submission</h2>
        <p>You have received a new message from the contact form on your website.</p>
        
        <div class="info">
                    <p><strong>Name:</strong> ' . htmlspecialchars($contact->name) . '</p>
                    <p><strong>Email:</strong> ' . htmlspecialchars($contact->email) . '</p>
                </div>

                <p><strong>Message:</strong></p>
                <p>' . nl2br(htmlspecialchars($contact->message)) . '</p>

        <div class="footer">
            <p>This message was sent from your websites contact form.</p>
        </div>
    </div>
</body>
</html>';

// Always set content-type when sending HTML email
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-Type: text/html; charset=UTF-8" . "\r\n";

    if(mail($to, $subject,$message,$headers))
    {
        return response()->json(['success'=> true,'message' => 'Your Data Added Successfully'], 201);
    }
    else{
        
        return response()->json(['success' => false,'message' => 'Failed to add data'], 500);
       
    }
        }
}
public function blogView(NewsandBlogs $data)
    {
        return response()->json(['data' => $data, 'success' => true], 200);
    }
}
