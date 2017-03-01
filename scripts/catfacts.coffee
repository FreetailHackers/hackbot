# Description:
#   Retrieves random cat facts.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot catfact - Reply back with random cat fact.
#
# Author:
#   scottmeyer

facts = [
	"The way you treat kittens in the early stages of it's life will render it's personality traits later in life.",
	"Ailurophile is the word cat lovers are officially called.",
	"A female Amur leopard gives birth to one to four cubs in each litter.",
	"Domestic cats purr both when inhaling and when exhaling.",
	"In one stride, a cheetah can cover 23 to 26 feet (7 to 8 meters).",
	"The silks created by weavers in Baghdad were inspired by the beautiful and varied colors and markings of cat coats. These fabrics were called \"tabby\" by European traders.",
	"Cats are now Britain's favourite pet: there are 7.7 million cats as opposed to 6.6 million dogs.",
	"Cats take between 20-40 breaths per minute.",
	"Has your cat ever brought its prey to your door? Cats do that because they regard their owners as their \"kittens.\" The cats are teaching their \"kittens\" how to hunt by bringing them food. Most people aren't too delighted when a pet brings in their kill. Instead of punishing your cat, praise it for its efforts, accept the prey, and then secretly throw it away.",
	"There are approximately 60,000 hairs per square inch on the back of a cat and about 120,000 per square inch on its underside.",
	"In an average year, cat owners in the United States spend over $2 billion on cat food.",
	"Cats do not think that they are little people. They think that they are big cats. This influences their behavior in many ways.",
	"The first breeding pair of Siamese cats arrived in England in 1884.",
	"Jaguars are the only big cats that don't roar.",
	"A cat can jump 5 times as high as it is tall.",
	"The cat's tail is used to maintain balance.",
	"Cats have 30 teeth (12 incisors, 10 premolars, 4 canines, and 4 molars), while dogs have 42. Kittens have baby teeth, which are replaced by permanent teeth around the age of 7 months.",
	"There is a species of cat smaller than the average housecat. It is native to Africa and it is the Black-footed cat (Felis nigripes). Its top weight is 5.5 pounds.",
	"British cat owners spend roughly 550 million pounds yearly on cat food.",
	"The largest breed of cat is the Ragdoll with males weighing in at 15 to 20 lbs. The heaviest domestic cat on record was a neutered male tabby named Himmy from Queensland, Australia who weighed 46 lbs. 1 5 oz.",
	"The cat's front paw has 5 toes and the back paws have 4. Cats born with 6 or 7 front toes and extra back toes are called polydactl.",
	"Studies now show that the allergen in cats is related to their scent glands. Cats have scent glands on their faces and at the base of their tails. Entire male cats generate the most scent. If this secretion from the scent glands is the allergen, allergic people should tolerate spayed female cats the best.",
	"The average cat sleeps between 12-14 hours a day.",
	"Cats have the largest eyes of any mammal.",
	"Cats, just like people, are subject to asthma. Dust, smoke, and other forms of air pullution in your cat's environment can be troublesome sources of irritation.",
	"A healthy cat has a temperature between 38 and 39 degrees Celcius.",
	"Cats with long, lean bodies are more likely to be outgoing, and more protective and vocal than those with a stocky build.",
	"A domestic cat can sprint at about 31 miles per hour.",
	"The Pilgrims were the first to introduce cats to North America.",
	"Cats eat grass to aid their digestion and to help them get rid of any fur in their stomachs.",
	"Some common houseplants poisonous to cats include: English Ivy, iris, mistletoe, philodendron, and yew.",
	"Mother cats teach their kittens to use the litter box.",
	"It is estimated that cats can make over 60 different sounds.",
	"In ancient Egypt, when a family cat died, all family members would shave their eyebrows as a sign of mourning.",
	"Abraham Lincoln loved cats. He had four of them while he lived in the White House.",
	"Lions are the only cats that live in groups, called prides. Every female within the pride is usually related.",
	"Phoenician cargo ships are thought to have brought the first domesticated cats to Europe in about 900 BC.",
	"Most cats killed on the road are un-neutered toms, as they are more likely to roam further afield and cross busy roads.",
	"Unlike other cats, lions have a tuft of hair at the end of their tails.",
	"In ancient Egypt, cats were mummified, and embalmed mice were placed with them in their tombs. In one ancient city, over 300,000 cat mummies were found.",
	"The cheetah is the world's fastest land mammal. It can run at speeds of up to 70 miles an hour (113 kilometers an hour).",
	"Long, muscular hind legs enable snow leopards to leap seven times their own body length in a single bound.",
	"The strongest climber among the big cats, a leopard can carry prey twice its weight up a tree.",
	"Cats lap liquid from the underside of their tongue, not from the top.",
	"All cats need taurine in their diet to avoid blindness. Cats must also have fat in their diet as they are unable to produce it on their own.",
	"Florence Nightingale owned more than 60 cats in her lifetime.",
	"Cat bites are more likely to become infected than dog bites.",
	"Cats walk on their toes.",
	"A cat's brain is more similar to a man's brain than that of a dog.",
	"The first formal cat show was held in England in 1871; in America, in 1895.",
	"Cats dislike citrus scent.",
	"The cat appears to be the only domestic companion animal not mentioned in the Bible.",
	"A cats field of vision is about 185 degrees.",
	"After humans, mountain lions have the largest range of any mammal in the Western Hemisphere.",
	"Cats lived with soldiers in trenches, where they killed mice during World War I.",
	"Cats, especially older cats, do get cancer. Many times this disease can be treated successfully.",
	"A tiger's stripes are like fingerprints, no two animals have the same pattern.",
	"When a cat drinks, its tongue - which has tiny barbs on it - scoops the liquid up backwards.",
	"Tests done by the Behavioral Department of the Musuem of Natural History conclude that while a dog's memory lasts about 5 minutes, a cat's recall can last as long as 16 hours.",
	"Cats see six times better in the dark and at night than humans.",
	"The chlorine in fresh tap water irritates sensitive parts of the cat's nose. Let tap water sit for 24 hours before giving it to a cat.",
	"Today there are about 100 distinct breeds of the domestic cat.",
	"Cat litter was \"invented\" in 1947 when Edward Lowe asked his neighbor to try a dried, granulated clay used to sop up grease spills in factories. (In 1990, Mr. Lowe sold his business for $200 million.)",
	"Tabby cats are thought to get their name from Attab, a district in Baghdad, now the capital of Iraq.",
	"On February 28, 1 980 a female cat climbed 70 feet up the sheer pebble-dash outside wall of a block of flats in Bradford, Yorkshire and took refuge in the roof space. She had been frightened by a dog.",
	"The domestic cat is the only species able to hold its tail vertically while walking. You can also learn about your cat's present state of mind by observing the posture of his tail.",
	"Cheetahs do not roar, as the other big cats do. Instead, they purr.",
	"Cats respond better to women than to men, probably due to the fact that women's voices have a higher pitch.",
	"Miacis, the primitive ancestor of cats, was a small, tree-living creature of the late Eocene period, some 45 to 50 million years ago.",
	"When a domestic cat goes after mice, about 1 pounce in 3 results in a catch.",
	"Cats come back to full alertness from the sleep state faster than any other creature.",
	"Cat families usually play best in even numbers. Cats and kittens should be aquired in pairs whenever possible.",
	"Contrary to popular belief, the cat is a social animal. A pet cat will respond and answer to speech , and seems to enjoy human companionship.",
	"A cat's whiskers are thought to be a kind of radar, which helps a cat gauge the space it intends to walk through.",
	"At 4 weeks, it is important to play with kittens so that they do not develope a fear of people.",
	"In multi-cat households, cats of the opposite sex usually get along better.",
	"If a cat is frightened, the hair stands up fairly evenly all over the body; when the cat is threatened or is ready to attack, the hair stands up only in a narrow band along the spine and tail.",
	"The mountain lion and the cheetah share an ancestor.",
	"A tomcat (male cat) can begin mating when he is between 7 and 10 months old.",
	"Cats often overract to unexpected stimuli because of their extremely sensitive nervous system.",
	"Female felines are \"superfecund,\" which means that each of the kittens in her litter can have a different father.",
	"A cat uses its whiskers for measuring distances.  The whiskers of a cat are capable of registering very small changes in air pressure."
]

module.exports = (robot) ->
	robot.respond /CATFACT$/i, (msg) ->
		randomIndex = Math.floor(Math.random() * facts.length);
    msg.send facts[randomIndex];
