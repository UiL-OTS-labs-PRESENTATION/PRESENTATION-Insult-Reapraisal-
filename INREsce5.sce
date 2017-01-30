# Dec 2014 This file is made/ adapted by Marijn Struiksma. For questions m.struiksma@uu.nl

# LET op, buttonbox inputport toevoegen voor het EEG testen!!!

pcl_file = "INREpcl5.pcl"; 					# pcl file name geven
scenario = "INREsce5.sce"; 						# for log-file
default_font_size = 35;                      # size of the letters
default_font = "Calibri";
default_background_color = 0, 0, 0;    		# use black
default_text_color = 150, 150, 150;          # use light grey as default
write_codes = true; 								# presentation will write user defined codes to the output port when an event occurs
active_buttons = 8;									# 1 button active
button_codes = 11,12,13,14,15,16,17,255;						
response_port_output = true; 					# no output at response events (in the pcl file teporarily restored, to avoid unwanted responses)
response_matching=simple_matching;
 
begin;													# start scenario

picture {} default; 									# default picture of emtpy screen

picture {text { caption = " "; } text1;	   # picture with text as in 'text1'
         x = 0; y = 0;} pict1;
picture {text { caption = "  ";}; 			   # picture with blank screen
			x = 0; y = 0;} pict2;

wavefile { filename = "beep.wav"; } beepwav; # filenaam van de wavfile geven en deze wavfile beepwav noemen								
#sound { wavefile beepwav; } sound1;			# geluid van wavfile beepwav is sound1
													# de trial heet beep


nothing { default_code = "space"; } stim; 	# empty stimulus

# Whatsapp pictures of Chantal
bitmap { filename = "Whatsapp_Chantal.bmp"; transparent_color = 216,216,216; } transparent;
bitmap { filename = "Whatsapp_Chantal_hoofd.bmp";} chantal_hoofd;

picture {bitmap { filename = "Whatsapp_Chantal_profile.bmp";};
		x = 0; y = 0;} profile;
		
#Whatsapp pictures of Imme
bitmap { filename = "Whatsapp_Imme.bmp"; transparent_color = 216,216,216; } transparent2;
bitmap { filename = "Whatsapp_Imme_hoofd.bmp";} imme_hoofd;

picture {bitmap { filename = "Whatsapp_Imme_profile.bmp";};
		x = 0; y = 0;} profile2;
			

######################################### default-trial
trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event; 										# het stimulus event heet event
} trial1;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {text { caption = " ";} text1new;	   # picture with text as in 'text1'
         x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict1new;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event1new; 										# het stimulus event heet event
} trial1new;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {text { caption = " ";} text1comp;	   # picture with text as in 'text1'
         x = 0; y = 0;
			bitmap transparent2;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict1comp;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event1comp; 										# het stimulus event heet event
} trial1comp;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {text { caption = " ";} text1prac;	   # picture with text as in 'text1'
         x = 0; y = 0;
			text { caption = " ";} text2prac;	   # picture with text as in 'text1'
         x = 0; y = -250;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict1prac;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event1prac; 										# het stimulus event heet event
} trial1prac;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {text { caption = " ";} text1mantra;	   # picture with text as in 'text1'
         x = 0; y = 0;
			text { caption = " ";} text2mantra;	   # picture with text as in 'text1'
         x = 0; y = -250;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict1mantra;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event1mantra; 										# het stimulus event heet event
} trial1mantra;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {text { caption = " ";} text3prac;	   # picture with text as in 'text1'
         x = 0; y = 0;
			#text_color = 50, 50,, 50;
			text { caption = " ";} text4prac;	   # picture with text as in 'text1'
         x = 0; y = -250;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict2prac;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event2prac; 										# het stimulus event heet event
} trial2prac;

trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict2new;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event2new; 										# het stimulus event heet event
} trial2new;
 
trial {   												# trial define
   all_responses = false;							# only responses that occur while some stimulus is active can affect the trial duration
		picture {
			bitmap transparent2;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} pict2comp;
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
 		} event2comp; 										# het stimulus event heet event
} trial2comp;
####################################### start-screen
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "In dit experiment zul je beledigingen te zien krijgen.
In totaal zijn er 4 blokken. 
Na elk blok zit een korte pauze.

Druk op de spatiebalk om door te gaan met de instructie.";											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
		port_code = 253;
	response_active = true;  						# responsen komen door
} start1; 												# deze trial heet oefen
 	
# NAME CHECK
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "In het volgende scherm komt jouw naam te staan.
Als dit NIET jouw naam is, waarschuw dan de proefleider.
Als dit wel jouw naam is, ga dan verder met het experiment.

Druk op de spatiebalk om jouw naam te zien.";											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	response_active = true;  						# responsen komen door
} ask_name; 												# deze trial heet oefen

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "naam";}name; 																# met de text 'naam'
		x = 0; y = 0;};								# in het midden van het scherm	
	port_code = 251;
	response_active = true;  						# responsen komen door
} check_name; 												# deze trial heet oefen

# INTRODUCTION CHANTAL
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Straks zie je uitspraken over jou
die afkomstig zijn van Chantal.
Chantal is net als jij een studente in Utrecht.
Ze gebruikt een soort WhatsApp om 
de uitspraken naar je door te sturen.
Probeer je zo goed mogelijk in deze
situatie in te leven.

Druk op de spatiebalk om het profiel van Chantal te zien.";
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};
		response_active = true;
} whatsapp_intro;							#introduceer Whatsapp

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { bitmap { filename = "Whatsapp_Chantal_profile.bmp";};
		x = 0; y = 0;};						# het object is een picture
		response_active = true;
} whatsapp_profile;							#introduceer Whatsapp

# INTRODUCTION IMME
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Nu krijg je uitspraken te zien van Imme.
Imme is ook een studente in Utrecht.
Ze stuurt op dezelfde manier uitspraken naar je.

Druk op de spatiebalk om het profiel van Imme te zien.";
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};
		response_active = true;
} whatsapp_intro2;							#introduceer Whatsapp

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { bitmap { filename = "Whatsapp_Imme_profile.bmp";};
		x = 0; y = 0;};						# het object is een picture
		response_active = true;
} whatsapp_profile2;							#introduceer Whatsapp

# FIXATION CROSS
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "De uitspraken die Chantal stuurt 
		komen woord voor woord in een tekstballon op het scherm.
		Na elke uitspraak zie je de profielfoto 
		van Chantal op het scherm.
		
		Blijf steeds naar de woorden kijken
		en probeer dan zo min mogelijk te knipperen.
		Als de tekstballon leeg is mag je even knipperen.

		Druk op de spatiebalk om verder te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	response_active = true;  						# responsen komen door
} fixation; 	

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Beantwoord eerst graag twee korte vragen.

		Druk op de spatiebalk om naar de eerste vraag te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	response_active = true;  						# responsen komen door
} voor_opinie; 												# deze trial heet oefen

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Beantwoord nog een keer de korte vragen.

		Druk op de spatiebalk om naar de eerste vraag te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	response_active = true;  						# responsen komen door
} voor_opinie2; 												# deze trial heet oefen

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Je mag nu eerst een paar keer oefenen 
met de beledigingen. 

N.B. Sommige uitspraken zijn erg grof.
Als je het erg onprettig vindt om deze beledigingen te lezen, 
dan kun je altijd besluiten om te stoppen.

Start de oefensessie door op de spatiebalk te drukken.
Succes!"; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "start_oefen1";										# in het middel van het scherm															
	response_active = true;  						# responsen komen door
} oefen1; 												# deze trial heet oefen

# VOOR DE INTRODUCTIESESSIES
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = 2000;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Oefensessie 1";											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm	
	port_code = 252;
	response_active = true;  						# responsen komen door
} pre_oefen1; 												# deze trial heet oefen

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = 2000;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Oefensessie 2";											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	port_code = 252;
	response_active = true;  						# responsen komen door
} pre_oefen2; 												# deze trial heet oefen

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = 2000;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Oefensessie 3";											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	port_code = 252;
	response_active = true;  						# responsen komen door
} pre_oefen3; 	

# LEARNING THE MANTRAS
trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Leer de volgende mantra uit je hoofd:

'Ach joh, dat ben je zelf, rot toch op met die onzin!'

Neem hier gerust even de tijd voor.

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "learn_mantra1";																				
	response_active = true;  						# responsen komen door
} mantra1; 												# deze trial heet mantra1

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Om je te helpen volgt hier nog een keer de mantra:

'Ach joh, dat ben je zelf, rot toch op met die onzin!'

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "repeat_mantra1";																				
	response_active = true;  						# responsen komen door
} repeatmantra1;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Leer de volgende mantra uit je hoofd:
		
'Ach joh, stom wijf, ga toch weg met je geklets!'

Neem hier gerust even de tijd voor.

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "learn_mantra2";																				
	response_active = true;  						# responsen komen door
} mantra2; 												# deze trial heet mantra2

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Om je te helpen volgt hier nog een keer de mantra:

'Ach joh, stom wijf, ga toch weg met je geklets!'

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "repeat_mantra2";																				
	response_active = true;  						# responsen komen door
} repeatmantra2;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Leer de volgende mantra uit je hoofd:

'Ach joh, kijk naar jezelf, donder toch op met die flauwekul!'

Neem hier gerust even de tijd voor.

Klik met de rechthand op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "learn_mantra3";																				
	response_active = true;  						# responsen komen door
} mantra3; 												# deze trial heet mantra3

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Om je te helpen volgt hier nog een keer de mantra:

'Ach joh, kijk naar jezelf, donder toch op met die flauwekul!'

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "repeat_mantra3";																				
	response_active = true;  						# responsen komen door
} repeatmantra3;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Herhaal de mantra nu hardop."; 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "repeat_mantra";																				
	response_active = true;  						# responsen komen door
} mantra4;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Je krijgt zometeen een oefentrial.

Aan het eind van de uitspraak komt 
de tekst 'mantra hardop' in beeld.

Zodra deze tekst in beeld komt,
herhaal je de mantra hardop en probeer
je je in te leven in wat je zegt.

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie' 											# met de text 'oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "mantra_hardop";																				
	response_active = true;  						# responsen komen door
} mantra_hardop;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Er komt nu nog een oefentrial.
Aan het eind van de uitspraak komt 
de tekst 'mantra stil' in beeld.
Zodra deze tekst in beeld komt,
herhaal je de mantra in je hoofd.

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "mantra_stil";																				
	response_active = true;  						# responsen komen door
} mantra_stil;

trial {													# trial define
	trial_type = specific_response;
	terminator_button = 8;					# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Er komt nu een laatste oefentrial.
Er komt geen instructie meer in beeld.
Herhaal de mantra in je hoofd
op het juiste moment.

Klik op de spatiebalk om door te gaan."; 											# met de text 'oefensessie
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "mantra_stil";																				
	response_active = true;  						# responsen komen door
} no_mantra;

trial {													# trial define
	trial_duration=forever;	
	trial_type = specific_response;				# eerste response eindigt de trial				
	terminator_button = 8;
	picture { 											# object is een picture
		text { caption = "Einde van de oefensessie.

De proefleider komt zo even binnen.
Als je nog vragen hebt, dan kun je die nu
aan de proefleider stellen.

Start het experiment door op de spatiebalk te klikken. Succes!"; 		# met de text 'einde van de oefensessie'
		font_size = 35;
		font_color = 180, 180, 180;};
		x = 0; y = 0;};
	code = "start_experiment";										# in het middel van het scherm															
	response_active = true; 					   # responsen mogen nu doorkomen
} eindeoefen;											# deze trial heel eindeoefen


################################# end-screens
trial {													# trial define
	trial_duration = 5000;                 # trial duur oneindig  
	picture { text { caption = "Einde van dit deel van de taak.
Nu volgt het laatste deel.";
		font_color = 180, 180, 180;}; # picture met de text 'einde van het experiment'
		x = 0; y = 0;};								# in het midden van het scherm															# de correcte response is button 1
} einde_beledigingen;  												# de trial heet einde

trial {													# trial define
	trial_duration = 5000;                 # trial duur oneindig  
	picture { text { caption = "Einde van het experiment";
		font_color = 180, 180, 180;}; # picture met de text 'einde van het experiment'
		x = 0; y = 0;};								# in het midden van het scherm	
	port_code = 54;
} einde_complimenten;  												# de trial heet einde

################################# blank-screen
trial {													# trial define
		trial_duration = 1000; 						# trial duur 1000 ms
		picture { 										# het object is een picture
		text { caption = " ";}; 					# met een blanco scherm
		x = 0; y = 0;};
response_active = false;    						# in het midden van het scherm
} blank;  												# de trial heet blank

trial {													# trial define
		trial_duration = 1000; 						# trial duur 1000 ms
	picture {text { caption = " ";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		};
response_active = false;    						# in het midden van het scherm
} blankfix;

trial {													# trial define
		trial_duration = 1000; 						# trial duur 1000 ms
	picture {text { caption = " ";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent2;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		};
response_active = false;    						# in het midden van het scherm
} blankfixcomp;

trial {													# trial define
		trial_duration = 2000; 						# trial duur 1000 ms
	picture {text { caption = " ";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		};
	port_code = 243;
response_active = false;    						# in het midden van het scherm
} blankfixlong;

trial {													# trial define
		trial_duration = 2000; 						# trial duur 1000 ms
	picture {text { caption = " ";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		};
response_active = false;    						# in het midden van het scherm
} blankfixlongprac;

trial {													# trial define
		trial_duration = 2000; 						# trial duur 1000 ms
	picture {text { caption = " ";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent2;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		};
		port_code = 245;
	response_active = false;    						# in het midden van het scherm
} blankfixlongcomp;
################################# blank-kort-screen
trial {													# trial define
		trial_duration = 350; 						# trial duur 350 ms
		picture { 										# het object is een picture
		text { caption = " ";}; 					# met een blanco scherm
		x = 0; y = 0;};
response_active = true;    						# in het midden van het scherm
} blankkort;  		

################# beep en fix samen
trial {											# 
	trial_type = first_response;
	trial_duration = 4000;
	picture {text { caption = "_";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} fixt2;		
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
		code = "fix";
 		} eventfix; 
}fix1; 

trial {											# 
	trial_type = first_response;
	trial_duration = 4500;
	picture {
			bitmap chantal_hoofd;
			x = 0; y = 0; 			# put the head of Chantal on the screen
		} fix3;		
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
		code = "fix";
 		} eventfix2; 
}fix2;

trial {											# 
	trial_type = first_response;
	trial_duration = 4500;
	picture {
			bitmap imme_hoofd;
			x = 0; y = 0; 			# put the head of Imme on the screen
		} fix3comp;		
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
		code = "fixcomp";
 		} eventfix2comp; 
}fix2comp;

trial {											# 
	trial_type = first_response;
	trial_duration = 4500;
	picture {
			text { caption = " ";} textfix2prac;	   # picture with text as in 'text1'
         x = 0; y = -250;
			bitmap chantal_hoofd;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} fix3prac;		
	stimulus_event {									# define 1e stimulus event
		nothing stim;
		time = 0; 										# op t=0
		code = "fixprac";
 		} eventfix2prac; 
}fix2prac; 

trial {											# 
	trial_type = first_response;
	trial_duration = 1000;
	picture {text { caption = "+";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} fixbeep1;		
   time = 0;
   sound { wavefile beepwav; };
   time = 0;
	code = "fixbeep";
}fixbeep; 

trial {											# 
	trial_type = first_response;
	trial_duration = 1000;
	picture {text { caption = "+";};					# picture with fixation cross
			x = 0; y = 0;
			bitmap transparent2;
			x = 0; y = 0; 			# put the whatsapp picture as background, with the dialogue box transparent.
		} fixbeep1comp;		
   time = 0;
   sound { wavefile beepwav; };
   time = 0;
	code = "fixbeepcomp";
}fixbeepcomp; 
########################################
#################################### pauzes
trial {													# trial define
	trial_duration=4000;
	trial_type=fixed;
	picture { 											# het object is een picture
		text { caption = "Pauze";
		font_color = 255,90,255;}; 								# met de text 'druk op de knop om verder te gaan'
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "pauze";
	response_active = true;  						# responsen komen door
} breaks; 

trial {													# trial define
	trial_duration=20000;
	trial_type=fixed;
	picture { 											# het object is een picture
		text { caption = "Dit is een langere pauze.";
		font_color = 245,170,245;}; 								# met de text 'druk op de knop om verder te gaan'
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "pauzelang1";
	response_active = true;  						# responsen komen door
} breakslong1; 


trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Ga nu weer klaar zitten voor het volgende deel.

Klik op de spatiebalk als je klaar bent om verder te gaan.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;
		font_color = 180, 180, 180;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "endpauselang";
	response_active = true;  						# responsen komen door
} endpauselong; 

trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Klik op de spatiebalk als je klaar bent om verder te gaan.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;
		font_color = 180, 180, 180;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "endpause";
	response_active = true;  						# responsen komen door
} endpause; 

####################################  opinie-screen 
# PORT NUMMER ?????????????

trial {													# trial definieren
	trial_type = specific_response;
	terminator_button = 1, 2, 3, 4, 5, 6, 7;			
	trial_duration = forever;							# 
	stimulus_event{										# 
		picture {											# het object is een picture
			text {font_size = 35; caption = "Hoe negatief voel je je over jezelf?";}; x=0;y=150;			#antwoord scherm opbouwen

			text {font_size = 25; caption = "1
heel erg
negatief";}; x=-600;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "2
erg
negatief";}; x=-400;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "3
redelijk
negatief";}; x=-200;y=0;
			text {font_size = 25; caption = "4
enigszins
negatief";}; x=0;y=0;
			text {font_size = 25; caption = "5
een beetje
negatief";}; x=200;y=0;
			text {font_size = 25; caption = "6
niet
negatief";}; x=400;y=0;
			text {font_size = 25; caption = "7
helemaal niet
negatief";}; x=600;y=0;};

	code = "opinie1";
	port_code = 61;
	response_active = true;								# zorgt ervoor dat de responsen doorkomen tijdens deze trial, dit wordt zo gedefinieerd bij een response active non target
	} opiniescherm1;
} opinie1; 	

trial {													# trial definieren
	trial_type = specific_response;
	terminator_button = 1, 2, 3, 4, 5, 6, 7;			
	trial_duration = forever;							# 
	stimulus_event{										# 
		picture {											# het object is een picture
			text {font_size = 35; caption = "Hoe negatief voel je je ten opzichte van Chantal?";}; x=0;y=150;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "1
heel erg
negatief";}; x=-600;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "2
erg
negatief";}; x=-400;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "3
redelijk
negatief";}; x=-200;y=0;
			text {font_size = 25; caption = "4
enigszins
negatief";}; x=0;y=0;
			text {font_size = 25; caption = "5
een beetje
negatief";}; x=200;y=0;
			text {font_size = 25; caption = "6
niet
negatief";}; x=400;y=0;
			text {font_size = 25; caption = "7
helemaal niet
negatief";}; x=600;y=0;};

	code = "opinie2";
	port_code = 62;
	response_active = true;								# zorgt ervoor dat de responsen doorkomen tijdens deze trial, dit wordt zo gedefinieerd bij een response active non target
	} opiniescherm2;
} opinie2; 	

trial {													# trial definieren
	trial_type = specific_response;
	terminator_button = 1, 2, 3, 4, 5, 6, 7;			
	trial_duration = forever;							# 
	stimulus_event{										# 
		picture {											# het object is een picture
			text {font_size = 35; caption = "Hoeveel medelijden heb je met Chantal?";}; x=0;y=150;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "1
heel veel
medelijden";}; x=-600;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "2
veel
medelijden";}; x=-400;y=0;			#antwoord scherm opbouwen
			text {font_size = 25; caption = "3
redelijk veel
medelijden";}; x=-200;y=0;
			text {font_size = 25; caption = "4
wat 
medelijden";}; x=0;y=0;
			text {font_size = 25; caption = "5
een beetje
medelijden";}; x=200;y=0;
			text {font_size = 25; caption = "6
geen
medelijden";}; x=400;y=0;
			text {font_size = 25; caption = "7
helemaal geen
medelijden";}; x=600;y=0;};

	code = "opinie3";
	port_code = 69;  
	response_active = true;								# zorgt ervoor dat de responsen doorkomen tijdens deze trial, dit wordt zo gedefinieerd bij een response active non target
	} corrscherm3;
} opinie3; 	

#####################################  hoofdtaak
trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Nu komt het eerste blok.

Gebruik de strategie die je zojuist hebt geleerd.

Klik op de spatiebalk als je klaar bent om te beginnen.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "schelden1";
	port_code = 41;
	response_active = true;  						# responsen komen door
} blok1;

trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Nu komt het tweede blok.

Gebruik de strategie die je zojuist hebt geleerd.

Klik op de spatiebalk als je klaar bent om te beginnen.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "schelden2";
	port_code = 42;
	response_active = true;  						# responsen komen door
} blok2;

trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Nu komt het derde blok.

Gebruik de strategie die je zojuist hebt geleerd.

Klik op de spatiebalk als je klaar bent om te beginnen.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "schelden3";
	port_code = 43;
	response_active = true;  						# responsen komen door
} blok3;

trial {													# trial define
	trial_type = specific_response;
   terminator_button = 8;								# specifies what responses, if any, will cause the trial to end
	trial_duration = forever;                 # the length of the trial in milliseconds      
	picture { 											# het object is een picture
		text { caption = "Nu komt het laatste blok.

Lees de uitspraken aandachtig door.
Je hoeft verder geen strategie meer te gebruiken.

Klik op de spatiebalk als je klaar bent om te beginnen.";								# met de text 'druk op de knop om verder te gaan'
		font_size = 35;}; 
		x = 0; y = 0;};								# in het midden van het scherm														
	code = "complimenteren";
	port_code = 44;
	response_active = true;  						# responsen komen door
} blok4;