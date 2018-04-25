import 'dart:math';

import 'package:quiz_app/util/question.dart';

class QuestionRepo {

  Random _random;

  QuestionRepo() {
    _random = new Random();
  }

  //region List of the questions.
  static List<Question> questions = [
    new Question(
      'Lightning never strikes in the same place twice.',
      false,
      'It strikes in the same place quite a lot. The Empire State Building gets struck over 100 times a year.',
    ),
    new Question(
      'If you cry in space the tears just stick to your face.',
      true,
      'You can watch a video of on board the International Space Station if you want.',
    ),
    new Question(
      'If you cut an earthworm in half, both halves can regrow their body.',
      false,
      "Only one half of an earthworm can regenerate when it's cut in half, not both halves.",
    ),
    new Question(
      'Humans can distinguish between over a trillion different smells.',
      true,
      "It's not as good as a dog's, but the human nose is still pretty incredible.",
    ),
    new Question(
      'Adults have fewer bones than babies do.',
      true,
      'Lots of bones (like the cranium) start out as several fragments at birth, then fuse together into a single bone later in life.',
    ),
    new Question(
      'Napoleon Bonaparte was extremely short.',
      false,
      "Even though he's widely believed to have been short, he was actually above average height for his time.",
    ),
    new Question(
      'Goldfish only have a memory of three seconds.',
      false,
      "Goldfishes' legendarily short memory is a common belief, but it's been debunked repeatedly. They can actually remember things for quite a long time.",
    ),
    new Question(
      'There are more cells of bacteria in your body than there are human cells.',
      true,
      'Your body has around ten times as many bacterial cells in it than your own cells.',
    ),
    new Question(
      'Your fingernails and hair keep growing after you die.',
      false,
      "They really don't.",
    ),
    new Question(
      'Birds are dinosaurs.',
      true,
      'Not all dinosaurs became extinct; some of them survived, and every bird alive today is descended from those survivors.',
    ),
    new Question(
      'It costs the U.S. Mint more to make pennies and nickels than the coins are actually worth.',
      true,
      'U.S. taxpayers lost over \$100 million in 2013 just through the coins being made.',
    ),
    new Question(
      'Water spirals down the plughole in opposite directions in the northern and southern hemispheres.',
      false,
      "It really doesn't (even though some people on the equator make a living fooling tourists into thinking it does...)",
    ),
    new Question(
      'Buzz Aldrin was the first man to urinate on the moon.',
      true,
      "The second man to stand on fthe moon was the first to pee there (into a special bag in his spacesuit) – shortly after he stepped off the ladder of Apollo 11's Lunar Module.",
    ),
    new Question(
      'Twinkies have an infinite shelf life.',
      false,
      'The official shelf life of a Twinkie is 45 days. People have kept them around for longer, but they become inedible.',
    ),
    new Question(
      "Humans can't breathe and swallow at the same time.",
      true,
      "It's because our voice box is lower in the throat than other primates (who can do both at once.) On the plus side, this means we can use language!",
    ),
    new Question(
      'The popular image of Santa Claus – chubby, bearded, in red and white clothes – was invented by Coca-Cola for an ad campaign.',
      false,
      'Santa was portrayed like that for decades before Coke got in on the act.',
    ),
    new Question(
      'The top of the Eiffel Tower leans away from the sun.',
      true,
      'The metal of the tower expands in the heat of the sun, so the sun-facing side is always slightly bigger than the one facing away – making it lean as much as seven inches away from the sun.',
    ),
    new Question(
      'Drinking alcohol kills brain cells.',
      false,
      "Drinking pretty much any non-fatal amount of alcohol won't add enough alcohol to your blood stream to destroy your neurons.",
    ),
    new Question(
      'The owner of the company that makes Segways died after accidentally driving his Segway off a cliff.',
      true,
      'Jimi Heselden died from his accident in 2010.',
    ),
    new Question(
      "Humans glow in the dark (but it's too faint to see).",
      true,
      "Humans give off a very small amount of light, but it's about 1,000 times dimmer than we're capable of seeing.",
    ),
    new Question(
      'There are more calories in a single peanut than in an 8OZ steak',
      false,
      'A single peanut has just 11 calories. An 8-ounce steak has 585 calories.',
    ),
    new Question(
      'Oxford University has been around for longer than the Aztec Empire',
      true,
      "Oxford became the university we know it as today in 1249 (though it's existed since 1096). The Aztec civilization didn't exist until 1325, with founding of the city of Tenochtitlán.",
    ),
    new Question(
      "U.S. presidents originally lived in the President's Palace, but the name was changed to avoid affectations of royalty.",
      true,
      "It was changed to Executive Mansion in 1810 for this reason; it officially became the 'White House' in 1902.",
    ),
    new Question(
      "When Mickey Mouse debuted on screen in 1928, it was in a silent film.",
      false,
      "Steamboat Willie was both Mickey's debut and the first megahit animated film with fully synchronized sound.",
    ),
    new Question(
      "Vampire bats feed on blood.",
      true,
      "Though they don't 'suck' blood, vampire bats do lap it up as it oozes from the sleeping prey they've bitten.",
    ),
    new Question(
      "Only Americans and Soviets have walked on the Moon.",
      false,
      "Twelve men have walked on the Moon (between 1969 and 1972), and all were Americans on Apollo missions.",
    ),
    new Question(
      "The Titanic had enough lifeboats to save almost everyone on board.",
      false,
      "Though complying with laws of the day, the ship carried lifeboats for only some 1,100 of the 2,224 passengers.",
    ),
    new Question(
      "The smallest country in the world is Monaco.",
      false,
      "The smallest country is the .2-square mile Vatican City; with a population of 800, the walled nation lies entirely within the city of Rome.",
    ),
    new Question(
      "The biggest muscle in the human body is the gluteus maximus (buttock muscle).",
      true,
      "The gluteal muscles are critical to weight balance and hip rotation in the act of walking.",
    ),
    new Question(
      "Bollywood is the nickname of Britain's movie industry.",
      false,
      "Bollywood is the name of India's thriving movie industry, which began in Bombay in the 1930s.",
    ),
    new Question(
      "A heptagon has six sides.",
      false,
      "A heptagon has seven sides.",
    ),
    new Question(
      "Lightning is seen before it's heard because light travels faster than sound.",
      true,
      "One's distance from lightning can be measured by the delay between its visible flash and audible thunder; each mile is equal to roughly five seconds.",
    ),
    new Question(
      "Run-D.M.C. was the first rap group to go 'gold' and be nominated for a Grammy.",
      true,
      "A member of the Rock and Roll Hall of Fame, this influential group legitimized hip-hop music in the 1980s.",
    ),
    new Question(
      "The blue whale, the world's largest animal, has teeth 12 inches long.",
      false,
      "The Blue Whale is a baleen (toothless) whale; it has bristles with which it captures and filters its food.",
    ),
    new Question(
      "The Statue of Liberty was a gift from France to America.",
      true,
      "It was a gift to America on the 100th anniversary of the Declaration of Independence.",
    ),
    new Question(
      "The main innovation that made cars widely available and affordable was the assembly line.",
      true,
      "Henry Ford's Model T (1908) was famous as the first car mass-produced with interchangeable parts on an assembly line.",
    ),
    new Question(
      "Ozone is 'good' in the upper atmosphere but 'bad' in the lower.",
      true,
      "Upper-level ozone (in the stratosphere) protects us from dangerous UV rays; lower-level ozone (in the troposphere) contributes to smog.",
    ),
    new Question(
      "No woman had won an Oscar for best director until 2008.",
      true,
      "Kathryn Bigelow won for her 2008 film The Hurt Locker, dealing with an American bomb disposal team in Iraq.",
    ),
    new Question(
      "The Apgar Score measures body fat.",
      false,
      "Invented by Dr. Virginia Apgar in 1952, it's the common way of ranking a newborn's health (by their 'A'ppearance, 'P'ulse, 'G'rimace, 'A'ctivity, and 'R'espiration).",
    ),
    new Question(
      "An obsession with actress Jodi Foster led to the shooting of President Ronald Reagan in 1981.",
      true,
      "The shooter, John Hinckley, Jr., was obsessed with Foster and her role in Taxi Driver (1976).",
    ),
    new Question(
      "Jackson Pollock revolutionized art with his Photo-realist paintings.",
      false,
      "Jackson Pollock, a leading Abstract Expressionist in the 1940s and 50s, was famous for his drip paintings.",
    ),
    new Question(
      "Kryptonite is the source of Superman's power.",
      false,
      "Kryptonite, the radioactive debris from the destruction of Krypton (his home planet), nullifies his powers.",
    ),
    new Question(
      "An acute angle is less than 90 degrees",
      true,
      "An obtuse angle is greater than 90 degrees.",
    ),
    new Question(
      "The highest-grossing film series in history is Star Wars.",
      false,
      "The Harry Potter series is first; the James Bond series, second; and Star Wars, third.",
    ),
    new Question(
      "The bear has caused more human deaths than any other mammal in history.",
      false,
      "The rat, a frequent carrier of disease, has been the deadliest mammal.",
    ),
    new Question(
      "Dubai is home to the tallest man-made structure ever built.",
      true,
      "The 162-floor skyscraper named Burj Khalifa opened in 2010 in Dubai, United Arab Emirates.",
    ),
    new Question(
      "'E Pluribus Unum,' on the seal of the United States, means 'one, out of many.'",
      true,
      "It's a motto that emphasizes national unity.",
    ),
    new Question(
      "Apartheid was the political system dismantled in South Africa at the end of the 20th century.",
      true,
      "Apartheid - the system of legal, racial segregation - governed South Africa from 1948-1994.",
    ),
    new Question(
      "Napoleon Bonaparte was killed at the Battle of Waterloo.",
      false,
      "Napoleon surrendered to the British after his defeat at Waterloo and died in exile on the island of St. Helena.",
    ),
    new Question(
      "In her novel The Fountainhead, Ayn Rand promoted the virtues of communal efforts over individualism.",
      false,
      "In her 1943 novel, which reflects Rand's anticommunist philosophy of 'objectivism', a genius architect battles conformist mediocrity.",
    ),
    new Question(
      "Oxygen makes up two-thirds of Earth and also two-thirds of the human body.",
      false,
      "Water is the most common substance at roughly these amounts.",
    ),
    new Question(
      "The sport saved from extinction by President Theodore Roosevelt was football.",
      true,
      "Until his 1905 call for regulation of the sport, football was dwindling in support due to its violence - 18 football players died that year.",
    ),
    new Question(
      "The 'funny bone' is really a bone.",
      false,
      "The 'funny bone' exists, but it's not a bone; it's part of the ulnar nerve in the back of the elbow.",
    ),
    new Question(
      "Carl Lewis holds the record for most individual gold medals at the Olympics.",
      false,
      "Swimmer Michael Phelps has won a record 14 gold medals, including a record 9 gold medals in individual events.",
    ),
    new Question(
      "The Academy Awards are annually the most-watched, single telecast in the United States.",
      false,
      "In recent decades, the most watched single telecast annually by Americans is the NFL's Super Bowl.",
    ),
    new Question(
      "The Enlightenment was an intellectual movement that celebrated religious faith over reason.",
      false,
      "The European Enlightenment of the 17th and 18th centuries celebrated reason over faith.",
    ),
    new Question(
      "Vincent van Gogh sold only one painting during his lifetime.",
      true,
      "The painting, The Red Vineyard, sold only a few months before his death in 1890.",
    ),
    new Question(
      "Russia has the largest area of any country in the world.",
      true,
      "By far the world's largest country, it covers nearly twice the territory of Canada, the second largest.",
    ),
    new Question(
      "The name 'Wall Street' stems from the row ('wall') of banks that greeted visitors to New York City's financial district in the 1800s.",
      false,
      "The name likely stems from a 17th-century wall erected by Dutch settlers to repel a British or Indian attack.",
    ),
    new Question(
      "The mosquito has caused more human deaths than any other creature in history.",
      true,
      "The mosquito, a bloodsucking creature, is a major transmitter of diseases such as yellow fever and malaria.",
    ),
    new Question(
      "Corn is the most produced crop in the world.",
      true,
      "Corn is first, wheat is second, rice is third.",
    ),
    new Question(
      "The African elephant is the largest carnivore on land.",
      false,
      "The elephant isn't a carnivore. The Kodiak bear is the largest carnivore on land.",
    ),
    new Question(
      "The modern Caesar salad is derived from a recipe dating back to ancient Rome.",
      false,
      "It was reportedly invented in Tijuana, Mexico, in the 1920s by Caesar Cardini, an Italian immigrant restaurateur.",
    ),
    new Question(
      "In the famous novel of the same name, Frankenstein is a monster constructed from body parts.",
      false,
      "A common mistake, 'Frankenstein' is the name of the doctor who creates the monster; the monster is unnamed.",
    ),
    new Question(
      "The Indy 500 car race is the largest single-day, spectator-attended sporting event.",
      false,
      "Some 400,000 people routinely attend the event in person. World Cup final matches are usually the largest watched (via television).",
    ),
    new Question(
      "Dracula was a real-life figure in history.",
      true,
      "Vlad III Dracula, the cruel 15th-century ruler from Transylvania nicknamed 'The Impaler', may have inspired Bram Stoker's fictional character of Dracula.",
    ),
    new Question(
      "'Give me your tired, your poor / Your huddled masses' reads the plaque at the base of the Statue of Liberty.",
      true,
      "The lines come from a poem that Emma Lazarus wrote to raise money for the statue's pedestal.",
    ),
    new Question(
      "Tug-of-war was once an Olympic sport.",
      true,
      "It was a team event in every Summer Olympics from 1900-1920.",
    ),
    new Question(
      "The deadliest weapon of World War I was the machine gun.",
      true,
      "The machine gun had a devastating effect against frontal attacks, and changed how wars were fought.",
    ),
    new Question(
      "The tiniest bones in the human body are found in the hand.",
      false,
      "The tiniest bones, by far, are found in the ear.",
    ),
    new Question(
      "Edward in the Twilight series is a 'vegetarian vampire', meaning he drinks only non-human, animal blood.",
      true,
      "This is the distinguishing feature of Edward's family in the Twilight series.",
    ),
    new Question(
      "Shark and dolphin skin are so similar they are hard to tell apart.",
      false,
      "The answer is FALSE. Sharkskin is covered in very hard scales, while dolphin skin is extremely smooth.",
    ),
    new Question(
      "Jaguars are much heavier than leopards, even though they are of similar sizes.",
      true,
      "Although they are approximately the same size, the jaguar is stockier, more muscled and more powerful than the leopard. A male jaguar can weigh up to 160 kg (350 lb), while its leopard counterpart weighs only 90 kg (200 lb).",
    ),
    new Question(
      "Boas are not poisonous, but pythons are.",
      false,
      "Neither boas nor pythons are poisonous. Both species capture their prey by trapping it in their jaws before coiling themselves around and suffocating it.",
    ),
    new Question(
      "The African elephant has larger ears than the Asian elephant.",
      true,
      "African elephants can be distinguished from their Asian cousins by their more imposing bodies and their larger ears. An African elephant’s skin is also more wrinkled than that of an Asian elephant.",
    ),
    new Question(
      "Rabbits and hares run at similar speeds.",
      false,
      "A hare’s legs are longer and more powerful than those of a rabbit, allowing them to run much faster.",
    ),
    new Question(
      "Jaguar rosettes often contain black spots, whereas those on leopards do not. ",
      true,
      "At first glance, the rosettes (or spots) on jaguars and leopards seem to be identical—however, they actually differ greatly. Jaguar rosettes are larger, often containing 1 or 2 black spots, whereas those on a leopard are empty.",
    ),
    new Question(
      "Grizzly bears and polar bears have a similar diet.",
      false,
      "At first glance, the rosettes (or spots) on jaguars and leopards seem to be identical—however, they actually differ greatly. Jaguar rosettes are larger, often containing 1 or 2 black spots, whereas those on a leopard are empty.",
    ),
    new Question(
      "Seals move more easily over land than sea lions.",
      false,
      "In fact, it is sea lions, not seals, that can move more easily over land. On beaches, sea lions can place their flippers on the ground, lift up their torso and advance by taking small jumps, while seals have to wriggle.",
    ),
    new Question(
      "African Wild dogs and hyenas are closely related to wolves.",
      false,
      "Although African wild dogs and hyenas are both pretty scary, genetically speaking they are 2 very different animals. While African wild dogs are part of the canine family, like wolves, hyenas are closer to felines.",
    ),
    new Question(
      "Dromedaries are smaller than Bactrian camels.",
      false,
      "While dromedaries can grow to heights of up to 2 m (6.5 ft.), camels generally grow no taller than 1.5 m (5 ft.). However, camels do tend to be heavier than dromedaries.",
    ),
    new Question(
      "On May 8, 1945, the Allies landed in Normandy.",
      false,
      "It was on June 6, 1944, that the Allied troops landed in Normandy. Germany surrendered on May 8, 1945, ending the war in Europe. Japan surrendered on September 2, 1945, ending the Second World War.",
    ),
    new Question(
      "On April 12, 1961, Russian cosmonaut Yuri Gagarin became the first human in space.",
      true,
      "On April 12, 1961, the Russian Yuri Gagarin became the first human in space when he completed one orbit around the Earth in his Vostok 1 spacecraft. The mission lasted a 108 minute. Gagarin died 7 years later when his MiG-15 fighter jet crashed during a training flight.",
    ),
    new Question(
      "On May 29, 1953, Edmund Hillary and Tenzing Norgay reached the summit of Mount Everest.",
      true,
      "On May 29, 1953, Edmund Hillary and Sherpa Tenzing Norgay reached the summit of Mount Everest. Since the first attempted ascension in 1921, no climbers had ever achieved this feat.",
    ),
    new Question(
      "On December 7, 1939, Japanese forces attacked Pearl Harbor.",
      false,
      "It was on December 7, 1941, that Japanese forces attacked the Pearl Harbor naval base on the island of Oahu, Hawaii. The attack prompted the United States to enter the Second World War.",
    ),
    new Question(
      "India became independent on the night of August 14–15, 1947.",
      true,
      "India and Pakistan became separate independent nations on the night of August 14–15, 1947. This event marked the end of British rule on the Indian subcontinent.",
    ),
    new Question(
      "The U.S. dropped an atomic bomb on Hiroshima on August 6, 1945.",
      true,
      "On August 6, 1945, Hiroshima, Japan became the first city to be destroyed by an atomic bomb. Three days later, on August 9, 1945, the U.S. dropped a second atomic bomb on the city of Nagasaki.",
    ),
    new Question(
      "On Friday, November 22, 1963, John F. Kennedy was assassinated in Dallas.",
      true,
      "On Friday, November 22, 1963, John F. Kennedy, the 35th president of the United States, was assassinated in Dallas, Texas. He is the 4th president to have been killed by gunshot.",
    ),
    new Question(
      "The end of the First World War and the attack on the World Trade Center both took place on September 11.",
      false,
      "The First World War officially ended on November 11, 1918, not on September 11. Every year, countries around the world commemorate this event on November 11, Remembrance Day.",
    ),
    new Question(
      "The assassination of Archduke Franz Ferdinand, an event that sparked the First World War, took place on June 28, 1918.",
      false,
      "The assassination of Archduke Franz Ferdinand, heir to the Austro-Hungarian empire, took place on Sunday, June 28, 1914. The incident sparked the First World War, which lasted from 1914 to 1918.",
    ),
    new Question(
      "On August 9, 1974, U.S. president Richard Nixon resigned.",
      true,
      "On August 9, 1974, U.S. president Richard Nixon resigned, facing the threat of impeachment for his role in the Watergate scandal.",
    ),
    new Question(
      "Jane Goodall has profoundly changed our understanding of the animal world.",
      true,
      "For 55 years, Jane Goodall has conducted studies on wild animals in their natural environment. Her findings on the behavior of chimpanzees have profoundly changed our understanding of the animal world.",
    ),
    new Question(
      "The Pakistani Malala Yousafzai is the youngest winner in the history of the Nobel Prize.",
      true,
      "At the age of 17, Malala Yousafzai, who survived an assassination attempt, became the youngest Nobel laureate, ever, for her fight for girls’ education. She was co-recipient of the award with the Indian founder of the Bachpan Bachao Andolan (Save Childhood Movement), Kailash Satyarthi.",
    ),
    new Question(
      "Pirate Mary Read disguised herself as a man and pretended to be called Willy Read.",
      true,
      "As a young pirate, to be able to join a ship, Mary Read disguised herself as a man and changed her name to Willy Read.",
    ),
    new Question(
      "German Chancellor Angela Merkel, also named the most powerful woman in the world, is an economist by training.",
      false,
      "Angela Merkel is Chancellor of Germany since 2005, a record of longevity among Western politicians. She is a physicist by training.",
    ),
    new Question(
      "In 2010, Kathryn Bigelow became the first woman to win the Oscar for best directing for The Hurt Locker.",
      true,
      "In 2010, Kathryn Bigelow became the first woman to win the Best Directing Oscar for The Hurt Locker. To date, she is still the only female winner in the Best Directing category.",
    ),
    new Question(
      "Ann Bancroft is the first woman to conquer both the North and South Poles.",
      true,
      "Ann Bancroft is the first woman to have conquered the two poles. In 1986, she was the first woman in a confirmed expedition to reach the North Pole without resupplying, on foot and by sleigh. Then in 2001, Ann Bancroft and Liv Arnesen became the first women to cross the 1675 mi. (2700 km) of the Antarctic land mass on skis.",
    ),
    new Question(
      "When she ran for the U.S. presidency, Victoria Woodhull did not have the right to vote.",
      true,
      "In 1872, Victoria Woodhull was the first woman to run for President of the United States. She was not able to vote for herself because American women did not have the right to vote until 1920.",
    ),
    new Question(
      "The female politicians Indira Gandhi (India) and Benazir Bhutto (Pakistan) were both assassinated.",
      true,
      "Indira Priyadarshini Gandhi was Prime Minister of India from 1966 to 1977, then from 1980 until her death in 1984. Benazir Bhutto was twice Prime Minister of Pakistan, in 1988–1990 and in 1993–1996. These two women were assassinated.",
    ),
    new Question(
      "For her discovery of X and Y chromosomes, Nettie Stevens won the Nobel Prize in Medicine.",
      true,
      "At the beginning of the 20th century, Nettie Stevens discovered that the sex of each individual is determined by chromosomes, named X and Y. However, this scientific advance did not let her win the Nobel Prize in Medicine.",
    ),
  ];
  //endregion

  Question get question => questions[_random.nextInt(questions.length - 1)];

  List<Question> get allQuestions => questions;
}