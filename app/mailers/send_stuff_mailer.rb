class SendStuffMailer < ApplicationMailer
  
  def self.send_email(email, name)
    @send_in_blue = SibApiV3Sdk::SMTPApi.new
    @email = SibApiV3Sdk::SendSmtpEmail.new
    @email.sender = {
      "name": "Pablo",
      "email": "pablocm90@gmail.com"
    }
    @email.to = [{"email": email}]
    @email.html_content = html("a")
    @email.subject = "TESTESTEST"
    @send_in_blue.send_transac_email(@email)
  end
  
  
  def html(t)
    "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'> <html xmlns:v='urn:schemas-microsoft-com:vml'> <head>     <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />   <meta content='telephone=no' name='format-detection' />   <meta content='width=mobile-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=no;' name='viewport' />   <meta content='IE=9; IE=8; IE=7; IE=EDGE;' http-equiv='X-UA-Compatible' />   <title>nada</title>   <style type='text/css'>          @import url('https://fonts.googleapis.com/css?family=Montserrat:300i,400,700|Open+Sans:400,700');   @import url(https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css);   /**This is to overwrite Outlook.com’s Embedded CSS************/   table {border-collapse:separate;}   a, a:link, a:visited {text-decoration:none; color: #488dc6}   h2,h2 a,h2 a:visited,h3,h3 a,h3 a:visited,h4,h5,h6,.t_cht {color:#333333 !important}   p {margin-bottom: 0}   .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td {line-height: 100%}   /**This is to center your email in Outlook.com************/   .ExternalClass {width: 100%;}      /* General Resets */   #outlook a {padding:0;}   body, #body-table {height:100% !important; width:100% !important; margin:0 auto; padding:0; line-height:100%; !important; font-family:Arial, Helvetica, sans-serif; font-size:13px;}   img, a img {border:0; outline:none; text-decoration:none;}   .image-fix {display:block;}   table, td {border-collapse:collapse;}      /* Client Specific Resets */   .ReadMsgBody {width:100%;} .ExternalClass{width:100%;}   .ExternalClass, .ExternalClass p, .ExternalClass span, .ExternalClass font, .ExternalClass td, .ExternalClass div {line-height:100% !important;}   .ExternalClass * {line-height: 100% !important;}   table, td {mso-table-lspace:0pt; mso-table-rspace:0pt;}   img {outline: none; border: none; text-decoration: none; -ms-interpolation-mode: bicubic;}   body, table, td, p, a, li, blockquote {-ms-text-size-adjust:100%; -webkit-text-size-adjust:100%;}   body.outlook img {width: auto !important;max-width: none !important;}      /* Start Template Styles */   /* Main */   body{ -webkit-text-size-adjust:100%; -ms-text-size-adjust:100%; margin:0; padding:0; -webkit-font-smoothing: antialiased;}   body, #body-table {background-color: #e8e8e8 margin:0 auto !important;; margin:0 auto !important; text-align:center !important;}   p {padding:0; margin: 0; line-height: 24px; font-family: Arial, Helvetica, sans-serif;}   a, a:link {color: #1c344d;text-decoration: none !important;}   .footer-link a, .nav-link a {color: #fff6e5;}      /* Yahoo Mail */   .thread-item.expanded .thread-body{background-color: #edf6ea !important;}   .thread-item.expanded .thread-body .body, .msg-body{display:block !important;}   #body-table .undoreset table {display: table !important;table-layout: fixed !important;}      /* Start Media Queries */   @media only screen and (max-width: 640px) {     a[href^='tel'], a[href^='sms'] {text-decoration: none;pointer-events: none;\tcursor: default;}     .mobile_link a[href^='tel'], .mobile_link a[href^='sms'] {text-decoration: default;\tpointer-events: auto;cursor: default;}     *[class].full-width {width: 100%!important;}     *[class].mobile-width {width: 440px !important; padding: 0 4px;}     *[class].content-width {width: 360px!important;}     *[class].content-width-menu {width: 360px!important;}     *[class].center {text-align:center !important; height:auto !important;}     *[class].center-stack {padding-bottom:20px !important; text-align:center !important; height:auto !important;}     *[class].stack {padding-bottom:20px !important; height: auto !important;}     *[class].gallery {padding-bottom: 20px!important;}     *[class].fluid-img {height:auto !important; max-width:600px !important; width: 100% !important;}     *[class].block {display: block!important;}     *[class].midaling { width:100% !important; border:none !important; }     *[class].emailImage{height:auto !important;max-width:600px !important;width: 100% !important;}   }   @media only screen and (max-width: 480px) {     *[class].full-width {width: 100%!important;}     *[class].mobile-width {width: 320px!important; padding: 0 4px;}     *[class].content-width {width: 240px!important;}     *[class].content-width-menu {width: 320px!important;}     *[class].navlink {font-size:13px !important;}     *[class].center {text-align:center !important; height:auto !important;}     *[class].center-stack {padding-bottom:20px !important; text-align:center !important; height:auto !important;}     *[class].stack {padding-bottom:20px !important; height: auto !important;}     *[class].gallery {padding-bottom: 20px!important;}     *[class].fluid-img {height:auto !important; max-width:600px !important; width: 100% !important; min-width:320px !important;}     *[class].midaling { width:100% !important; border:none !important; }     *[class].navlink{ width:600px !important; border:none !important; }     *[class].footer_link{display:block !important; margin-bottom:5px !important;}     *[class].hide{display:none !important;}   }   @media only screen and (max-width: 320px) {     *[class].full-width {width: 100%!important;}     *[class].mobile-width {width: 100%!important; padding: 0 4px;}     *[class].content-width {width: 240px!important;}     *[class].center {text-align:center !important; height:auto !important;}     *[class].center-stack {padding-bottom:30px !important; text-align:center !important; height:auto !important;}     *[class].stack {padding-bottom:30px !important; height: auto !important;}     *[class].gallery {padding-bottom: 20px!important;}     *[class].fluid-img {height:auto !important; max-width:600px !important; width: 100% !important; min-width:320px !important;}     *[class].midaling { width:100% !important; border:none !important;}   } </style>   <!--[if mso]>   <style>   .font_fix{font-family:Arial, Helvetica, sans-serif !important;} </style> <![endif]-->  </head> <body>      <td style='display:none !important;            visibility:hidden;            mso-hide:all;            font-size:1px;            color:#ffffff;            line-height:1px;            max-height:0px;            max-width:0px;            opacity:0;            overflow:hidden;'>   <p style='display:none !important;            visibility:hidden;            mso-hide:all;            font-size:1px;            color:#ffffff;            line-height:1px;            max-height:0px;            max-width:0px;            opacity:0;            overflow:hidden;'>Féliciations, vous avez un nouveau lead pour votre formation  INSA Lyon. Notre Advisor Séverine  a conseillé et orienté Laura vers votre programme INSA Lyon. Accédez à la fiche d’orientation de votre lead sur votre espace représentant Study Advisor </p>          </td>   <!-- Start of banner -->   <table id='body-table' align='center' width='100%' bgcolor='#e6e5e7' cellspacing='0' cellpadding='0' border='0' style='table-layout:fixed;'>     <tbody>       <tr>         <td valign='top' bgcolor='#e8e8e8' align='center'>           <table width='600' bgcolor='#ffffff' align='center' cellspacing='0' cellpadding='0' border='0' class='mobile-width'>             <tbody>               <tr>                 <td valign='top' bgcolor='#ffffff' align='center'>                   <table width='100%' align='center' cellspacing='0' cellpadding='0' border='0' class='content-width-menu' bgcolor='#EF6262'>   <tbody>     <tr>       <td height='25' valign='middle' align='left'>                  <!-- Start Logo -->         <table width='235' align='left' cellspacing='0' cellpadding='20' border='0' class='full-width'>           <tbody>             <tr>               <td height='34' valign='middle' align='center' class='center-stack' ><a href='https://www.studyadvisor.fr' target='_blank'><img src='https://www.studyadvisor.fr/img/logo_white.png' width='235' height='34' alt='Study Advisor' /></a></td>             </tr>           </tbody>         </table>         <!-- End Logo -->                  <!-- Start Social -->         <table align='right' cellspacing='0' cellpadding='20' border='0' class='content-width-menu'>           <tbody>             <tr>               <td height='34' valign='bottom' align='right' class='center'>                 <!-- facebook -->                 <a style='text-decoration: none; border:0' target='_blank' href='https://www.facebook.com/stuuudyadvisor/'><img src='https://www.studyadvisor.fr/img/facebook.png' style='border-radius:50%;' width='27' height='27' alt='Facebook' /></a>                 &nbsp;                 <!-- Instagram -->                 <a style='text-decoration: none; border:0' target='_blank' href='https://www.instagram.com/study__advisor/'><img src='https://www.studyadvisor.fr/img/instagram.png' style='border-radius:50%;' width='27' height='27' alt='instagram' /></a>                 &nbsp;                 <!-- twitter -->                 <a style='text-decoration: none; border:0' target='_blank' href='https://twitter.com/Study__Advisor'><img src='https://www.studyadvisor.fr/img/twitter.png' style='border-radius:50%;' width='27' height='27' alt='twitter' /></a>               </td>             </tr>           </tbody>         </table>         <!-- End Social -->       </td>     </tr>   </tbody> </table>                    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                    <table width='100%' align='center' cellspacing='0' cellpadding='0' border='0' class='full-width' >   <tbody>     <tr>       <td align='center'><div style='background-color: #EF6262; width:58px;height: 58px;border-radius: 50%;'>       <img width='58' height='58' src='http://localhost:3000/assets/icons/ecole-e0cbe23c68a329a00ac18c500a2923df5568a8d1d9d52e49cbb9a62b02c22eee.png' />     </tr>   </tbody> </table>                    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                    <table width='70%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #555555;         font-weight: normal;         font-style: normal;'         align='center'>         <p style='         font-size: 24px; line-height: 24px;         ;         ;         ;         font-family: montserat, sans-serif;         '>         Notre Advisor <span style='color:#ef6262;font-weight:bold;'>Séverine </span> a conseillé et orienté <span style='color:#ef6262;font-weight:bold;'>Laura</span> vers une formation de votre établissement.</p>       </td>     </tr>   </tbody> </table>                    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                      <table cellspacing='0' cellpadding='30' border='0' align='center'>     <tbody>       <tr>         <td align='center' style='border-radius:3px; color:#ffffff; display:block; font-family: Montserrat, sans-serif; font-size:12px; line-height:19px; text-align:center; text-decoration:none; padding-top: 10px; padding-bottom: 10px;         width:200px;         -webkit-text-size-adjust:none; background-color:#27B85A'>         <a style='color:#ffffff;font-family: Montserrat, sans-serif; font-size:14px; text-decoration:none !important; font-weight: bold;text-transform:uppercase;' target='_blank' href='http://localhost:3000/representatives/462/leads/87485/edit'>TRAITER LE LEAD</a>       </tr>     </tbody>   </table>                      <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tr>     <td height='3' align='center'><img src='https://www.studyadvisor.fr/img/grey_line.png' width='95%' height='1' alt='Image' /></td>   </tr> </table>                     <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                      <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>CONSEILLÉ PAR L&#39;ADVISOR :  </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>Séverine </p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100' height='height.to_s' align='center' cellspacing='0' cellpadding='0' border='0' class='content-width'>   <tbody>     <tr>       <td>         <img width='100' height='100' class='emailImage' border='0' style='border-radius: 50%' src='https://studyadv.s3.amazonaws.com/development/counselors/pictures/000/009/665/thumb/selfie1.jpg' />       </td>     </tr>   </tbody> </table>     <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='20px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>PRÉNOM DU CONTACT : </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>Laura</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>FORMATION CONSEILLÉE :  </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>INSA Lyon</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>DATE DU RENDEZ-VOUS : </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>le 15/12/2018 à 12:00</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>ÉTABLISSEMENT ACTUEL : </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>Lycée et gabriel</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>NIVEAU ACTUEL : </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>Terminale</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>MOYENNE GÉNÉRALE :  </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;           text-transform:uppercase           ; color:#555555;'>17</p>       </td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='10px'>&nbsp;</td>     </tr>   </tbody> </table>    <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:16px; color:#555555; font-family: 'Montserrat', sans-serif;' align='center'>         <p style='font-size: 14px;font-weight:thiner; text-transform:uppercase; line-height:16px; font-family: 'Montserrat', sans-serif; color:#787878'>COMMENTAIRE DESTINÉ AU REPONSABLE DE FORMATION : </p>           <p style='font-size: 14px;font-weight:bold; font-family: 'Montserrat', sans-serif; line-height:16px;                      ; color:#555555;'>Laura souhaite s&#39;orienter vers une école d&#39;ingénieur mais ne sais pas encore quelle spécialisation choisir une fois dans l&#39;école.</p>       </td>     </tr>   </tbody> </table>                     <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                      <table cellspacing='0' cellpadding='30' border='0' align='center'>     <tbody>       <tr>         <td align='center' style='border-radius:3px; color:#ffffff; display:block; font-family: Montserrat, sans-serif; font-size:12px; line-height:19px; text-align:center; text-decoration:none; padding-top: 10px; padding-bottom: 10px;         width:200px;         -webkit-text-size-adjust:none; background-color:#27B85A'>         <a style='color:#ffffff;font-family: Montserrat, sans-serif; font-size:14px; text-decoration:none !important; font-weight: bold;text-transform:uppercase;' target='_blank' href='http://localhost:3000/representatives/462/leads/87485/edit'>CONTACTER L&#39;ÉTUDIANT</a>       </tr>     </tbody>   </table>                      <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='35px'>&nbsp;</td>     </tr>   </tbody> </table>                    <table width='600' bgcolor='#ef6262' align='center' cellspacing='0' cellpadding='15' border='0' class='mobile-width'>   <tbody>     <tr>       <td valign='top' align='center'>                 <!-- Start Column 1 -->        <table width='270' align='right' cellspacing='0' cellpadding='0' border='0' class='full-width' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'>         <tbody>           <tr>             <td>               <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: bold;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Sara Antoun</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='5px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: thiner;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Directrice de Clientèle <br />Email : sara.antoun@studyadvisor.fr<br />Bureau : 01.76.54.62.13 <br />Tél : 06.65.28.95.33</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>              </td>           </tr>         </tbody>       </table>       <table width='270' align='center' cellspacing='0' cellpadding='0' border='0' class='full-width' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'>         <tbody>           <tr>             <td>               <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: bold;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Maxime Santilli</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='5px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: thiner;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Directeur de Clientèle <br />Email : maxime.santilli@studyadvisor.fr<br />Bureau : 01.76.54.62.13 <br /> Tél : 06.33.10.04.77</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>              </td>           </tr>         </tbody>       </table>       <table width='270' align='center' cellspacing='0' cellpadding='0' border='0' class='full-width' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'>         <tbody>           <tr>             <td>               <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: bold;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Callixte Pipon</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='5px'>&nbsp;</td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td class='font_fix' style='font-size:16px; mso-line-height-rule:exactly; line-height:20px;         color: #ffffff;         font-weight: thiner;         font-style: normal;'         align='left'>         <p style='         font-size: 13px; line-height: 13px;         ;         ;         ;         font-family: Montserrat, sans-serif;         '>         Customer Succes Manager <br />Email : callixte.pipon@studyadvisor.fr<br />Bureau : 01.76.54.62.13 <br /> Tél : 06.02.27.10.85</p>       </td>     </tr>   </tbody> </table>                <table width='100%' cellspacing='0' cellpadding='0' border='0' class='full-width'>   <tbody>     <tr>       <td height='30px'>&nbsp;</td>     </tr>   </tbody> </table>              </td>           </tr>         </tbody>       </table>     </td>   </tr> </tbody> </table> <!-- End Column 1 -->  <!-- End Block Content -->                    <table width='600' bgcolor='#464646' align='center' cellspacing='0' cellpadding='0' border='0' class='mobile-width'>   <tbody>     <tr>       <td align='center'>         <!-- Start Space -->         <table width='550' align='center' cellspacing='0' cellpadding='0' border='0' class='content-width'>           <tbody>             <tr>               <td  align='left' valign='middle' style='font-family: Arial, Helvetica, sans-serif;font-size:11px; font-weight:normal; color:#cccccc; padding-top:10px; padding-bottom:10px'><strong>Copyright © Study Advisor, 2018</strong>.</td>               </tr>             </tbody>           </table>           <!-- End Space -->         </td>       </tr>     </tbody>   </table>'                    </td>               </tr>             </tbody>           </table>         </td>       </tr>     </tbody>   </table> </body> </html>"
  end
end
