#!bin/sh

# script for dynamic interactive creation of conf.json file

# If variable not set or null, set to some exemplary defaults.
theme="${1:-l2d-basic}"
fname="${5:-Jade}"
lname="${6:-Lau}"
job_title="${7:-Social Media Manager}"
email_address="${9:-jade@learntodiscover.ai}"

echo $theme

conf_file_path="./templates/$theme/conf.json"
touch $conf_file_path
echo {                                                                              >> $conf_file_path
echo    "\"id"\": "\"$theme"\",                                                     >> $conf_file_path
echo    "\"signature"\": "\"Best wishes,"\",                                        >> $conf_file_path
echo    "\"fname"\": "\"$fname"\",                                                  >> $conf_file_path
echo    "\"lname"\": "\"$lname"\",                                                  >> $conf_file_path
echo    "\"job_title"\": "\"$job_title"\",                                          >> $conf_file_path
echo    "\"profileImg"\": "\"/assets/$fname.jpg"\",                                >> $conf_file_path
echo    "\"email"\": "\"$email_address"\",                                          >> $conf_file_path
echo    "\"emailIcon"\": "\"/assets/email-icon-2x.png"\",                           >> $conf_file_path
echo    "\"logoImg"\": "\"/assets/logo_colour_full_lightbg_lilac.max-800x600.png"\",>> $conf_file_path
echo    "\"logoAlt"\": "\"L2D Logo"\",                                              >> $conf_file_path
echo    "\"website"\": "\"https://learntodiscover.ai"\",                            >> $conf_file_path
echo    "\"websiteIcon"\": "\"/assets/link-icon-2x.png"\",                          >> $conf_file_path
echo    "\"bgImage"\": "\"/assets/SignatureShort.max-800x600.png"\",                >> $conf_file_path
echo    "\"linkedInUrl"\": "\"https://www.linkedin.com/company/learntodiscover/"\", >> $conf_file_path
echo    "\"linkedInIcon"\": "\"/assets/LinkedIn_icon_circle.png"\",                 >> $conf_file_path
echo    "\"twitterUrl"\": "\"https://twitter.com/L2D_Team/"\",                      >> $conf_file_path
echo    "\"twitterIcon"\": "\"/assets/twitter-icon-2x.png"\"                        >> $conf_file_path
echo }                                                                              >> $conf_file_path
