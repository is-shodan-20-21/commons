USE shodan;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM users;
INSERT INTO users(user_name, user_password, user_email) VALUES 
	('admin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', "antonio@shodan.it"); /* Password: 123 in SHA256 */

DELETE FROM games;
INSERT INTO games(game_name, game_image, game_description, game_price, game_release) VALUES 
	('Doom', 'Doom.png', "Doom ha avuto numerosi adattamenti: realizzato originariamente per il sistema operativo DOS, è stato convertito per Windows 95 in occasione del lancio delle DirectX di Microsoft, oltre che sulla maggior parte delle console disponibili. Diversi sono anche i seguiti, a partire da Doom II: Hell on Earth del 1994, The Ultimate Doom (1995), riedizione comprendente i primi tre episodi originali, più un quarto inedito, Thy Flesh Consumed; Final Doom del 1996, due episodi separati (intitolati The Plutonia Experiment e TNT: Evilution) non sviluppati dalla id Software; Master Levels for Doom II (1995), una raccolta di livelli aggiuntivi, e Doom 64 (1997), un remake per Nintendo 64. Il capitolo successivo, Doom 3, è stato pubblicato nel 2004 e ha abbandonato l'ormai obsoleta tecnologia dei primi capitoli, pubblicati agli inizi degli anni novanta, per abbracciare quella delle nuove generazioni di PC e console; nel 2005 è stato pubblicato uno spin-off per telefoni cellulari intitolato Doom RPG, mentre uno per iPhone, dal titolo di Doom Resurrection, è stato pubblicato nel 2009.", 50, '1998-05-11'),
    ('Cuphead', 'Cuphead.png', "Cuphead è un videogioco run 'n' gun del 2017, sviluppato e pubblicato dai fratelli Chad e Jared Moldenhauer di StudioMDHR disponibile per Windows e Xbox One ed è uscito in tutto il mondo il 29 settembre 2017. Una conversione per macOS è stata distribuita il 19 ottobre 2018. Il 18 aprile 2019 il gioco è stato pubblicato anche per Nintendo Switch. Il giocatore comanda Cuphead o Mugman, che deve sconfiggere una serie di boss al fine di ripagare il suo debito con il Diavolo. Lo stile grafico del gioco è ispirato ai cartoni animati americani degli anni trenta, in particolare ai lavori dei fratelli Max e Dave Fleischer e alcuni di Walt Disney e Ub Iwerks. Anche la colonna sonora (composta da Kristofer Maddigan) è in tema: in essa abbondano infatti molti pezzi di genere ragtime e più in generale jazz, anche se non mancano altri generi, come il valzer di chiara ispirazione circense dell'Isola Calamaio 2, sia eseguiti solo al pianoforte e sia da tutta l'orchestra tipica jazzistica (con i temi musicali lasciati in prevalenza a tromba, sassofono e clarinetto, ma senza dimenticare altri strumenti come il vibrafono). Alcuni dei brani sono eseguiti in versioni diverse (solo piano o con orchestra) e vengono eseguiti dal gioco in momenti diversi in base all'ambientazione.", 55, '1999-10-20'),
    ('Dark Souls', 'DarkSouls.png', "Dark Souls è un videogioco action RPG con visuale in terza persona. Il giocatore deve esplorare varie ambientazioni in stile dark fantasy e utilizzare armi, magie e strategie per sopravvivere a trappole e nemici. All'inizio, durante la creazione dell'avatar, si possono selezionare alcune classi che si rifanno all'immaginario dei giochi di ruolo (guerriero, ladro chierico ecc); la differenza di ogni classe è in realtà solo l'equipaggiamento iniziale e la distribuzione delle statistiche (vita, forza, destrezza), fattori che lasciano piena libertà all'utente nell'utilizzo di qualunque oggetto o potere magico ottenibile in gioco a discapito della classe scelta. Il mondo di gioco non è diviso in livelli come nel precedente Demon Souls, ma è liberamente esplorabile: molte ambientazioni che lo compongono sono collegate tra loro e per la maggior parte accessibili sin dall'inizio, a rischio e pericolo del giocatore che può ritrovarsi di fronte nemici troppo potenti rispetto al suo equipaggiamento e livello di abilità. Nel corso del gioco verranno sbloccate alcune scorciatoie che permetteranno di spostarsi più velocemente tra le varie zone.", 65, '1995-03-20'),
    ('Final Fantasy VII', 'FF7.jpg', "Preceduto da un'ampia campagna pubblicitaria, Final Fantasy VII ha goduto di un enorme successo commerciale, di critica e di pubblico, arrivando a vendere più di 10 milioni di copie in tutto il mondo e diventando così il titolo della serie più venduto e uno dei giochi di ruolo più diffusi in assoluto. È stato elogiato ai tempi per la sua grafica, colonna sonora e storia, ma criticato principalmente per la scarsa localizzazione inglese e una modalità di gioco estremamente lineare e poco innovativa nel panorama della saga. È stato retrospettivamente riconosciuto come il gioco che ha reso popolare l'intero genere al di fuori del Giappone e del Nord America, ed è stato spesso inserito in classifiche riguardanti i migliori videogiochi di tutti i tempi. La popolarità del titolo ha portato Square Enix a produrre una serie di prequel e sequel sotto il nome collettivo di Compilation of Final Fantasy VII, che hanno però ricevuto recensioni generalmente miste e, in alcuni casi, persino negative.", 75, '1998-04-17'),
    ('Bioshock Infinite', 'BioShock.png', "BioShock è un videogioco sparatutto in prima persona, primo capitolo dell'omonima serie, sviluppato dalla 2K Boston (vedi Irrational Games) e pubblicato dalla 2K Games. Il gioco è stato distribuito per Microsoft Windows e Xbox 360 nell'agosto del 2007. Successivamente nell'ottobre 2008 è stato distribuito da Irrational Games, 2K Marin, 2K Australia e Digital Extremes un porting per PlayStation 3. Nell'ottobre 2009 è stato distribuito dalla Feral Interactive un porting per macOS. È stato definito dai suoi stessi sviluppatori come sequel 'spirituale' di un loro precedente titolo, System Shock 2, ed era già in sviluppo dal tardo 2004. Il 16 agosto del 2007 il gioco è stato definito dal sito IGN come uno dei migliori videogiochi di sempre.", 25, '1995-01-12'),
    ('System Shock', 'SystemShock.png', "System Shock combina un'interfaccia simile a quella di Ultima Underworld, e presenta caratteristiche tipiche di un gioco di ruolo; con un cursore libero da obblighi, in grado di manipolare oggetti ed utilizzare l'HUD di cui è provvisto il protagonista. Quest'interfaccia è utilizzata anche per saltare, attaccare, chinarsi, girare lo sguardo fluidamente a destra e a sinistra e per guardare su e giù. Il gioco contiene varie armi, che spaziano da una sbarra di ferro alle pistole laser, senza dimenticare le classiche armi da fuoco tradizionali. l giocatore può temporaneamente entrare in un Cyberspazio, utilizzando appositi terminali rintracciabili nel gioco, per raccogliere software di aggiornamento per la propria interfaccia neurale, e per disattivare i più complessi sistemi di sicurezza (nel gioco, normalmente, basta distruggere le telecamere per diminuire il livello di sicurezza)." , 35, '1990-12-30'),
    ('Crash Bandicoot', 'Crash.jpg', "Crash Bandicoot è un franchise appartenente ai generi platform, avventura dinamica, simulatore di guida e party. I primi videogiochi della serie uscirono per PlayStation e successivamente per varie console come PlayStation 2, GameCube, Xbox, Game Boy Advance e Wii, mentre nel 2017 venne sviluppato da Vicarious Vision, un remake per PlayStation 4 dei primi tre capitoli della serie, rilasciato un anno dopo anche per Xbox One, Nintendo Switch e Microsoft Windows. Nel tempo sono usciti numerosi spin-off di diverso genere. I primi quattro capitoli della serie (senza contare il remake) sono stati sviluppati dalla Naughty Dog.", 60, '2003-03-12');

DELETE FROM has_game;
INSERT INTO has_game VALUES 
	(1, 1),
    (1, 2),
    (1, 3);

DELETE FROM blog;
INSERT INTO blog(blog_title, blog_short_title, blog_html) VALUES
	("Saldi estivi", "Sono in arrivo i saldi estivi su Shodan!", "I saldi estivi sono finalmente in arrivo su <b>Shodan</b>. System Shock, Crash Bandicoot e tanti altri titoli saranno scontati a prezzi imperdibili, per tutta la durata della stagione estiva!"),
    ("In arrivo Super Mario", "Direttamente dal Giappone, Super Mario compare su Shodan!", "Il franchise-cult giapponese che ha fatto innamorare tanti videogiocatori da tutto il mondo sta finalmente per arrivare su Shodan. Dai primissimi titoli degli anni 80, fino ai più recenti: l'intero franchise sarà disponibile sulla piattaforma entro la fine dell'anno!");

DELETE FROM has_role;
INSERT INTO has_role(user_id, role) VALUES
	(1, "USER"), /* admin -> user role */
    (1, "WRITER"); /* admin -> writer role */

DELETE FROM views;
INSERT INTO views VALUES 
	('GUEST','MAIN','Dashboard.jsp'),
	('GUEST','NAV','Nav/NavGuest.jsp'),
	('STOREMAN','MAIN','Storeman.jsp'),
	('STOREMAN','NAV','Nav/NavStoreman.jsp'),
	('USER','MAIN','Dashboard.jsp'),
	('USER','NAV','Nav/NavUser.jsp'),
	('WRITER','MAIN','Writer.jsp'),
	('WRITER','NAV','Nav/NavWriter.jsp');