-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 11:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(0, 'Uncategorized', 'Default category'),
(1, 'Food', 'This is the general recipe category.'),
(2, 'Southern', 'Recipes from the southern US'),
(3, 'Cuban', 'Recipes from Cuba'),
(4, 'Mexican', 'Recipes from Mexico'),
(5, 'German', 'Recipes from Germany'),
(6, 'Northern', 'Recipes from north US and Canada'),
(7, 'Europe', 'Recipes from Europe'),
(8, 'Asian', 'Recipes from Asia'),
(9, 'Brazilian', 'Recipes from Brazil'),
(10, 'Korean', 'Recipes from Korea');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(11, 'Mariquitas (Plus Cuban Tostones)', 'Chicharritas is the Cuban name given to green plantain chips, sliced round, fried and salted. Mariquitas is what Cubans call them when they are sliced the Nicaraguan way; slicing them lengthwise to create long, slender, wavy chips, fried and salted. They are really good brought to the table piping hot and sprinkled with mojo. 3 to 4 cups canola or peanut oil for frying 2 green plantains salt or garlic salt Pour the oil to a depth of 2 or 3 inches in a deep-fat fryer, a Dutch oven or heavy skillet. Heat to 350oF. Peel the plantains. Slice lengthwise for Mariquitas or in round chips for Chicharritas, as thinly as possible, using a mandolin if you have one, with the blade at its thinnest opening. Slide them into the hot fat in small batches. You don&#039;t want them to clump together. Fry until golden brown and crispy, about 1 to 2 minutes, turning with a metal skimmer. Drain on paper towels. Sprinkle with salt and/or mojo. Serve at once. Cuban Tostones Tostones are twice-fried plantain chips. When making Cuban tostones, first use green plantains (plantains with a black skin are ideal for platano maduro - the sweet and soft dessert version). Peel plantains, then slice into pieces, each piece about 2&quot; long (click here for an example).\r\nFry them using the same method as above until soft, and let them drain on paper towels. Next, take each piece and smash it in a tostonera - a tostones press available at most online Cuban stores. If you don&#039;t have a tostonera, you can simply place paper towels over a slice, and smash it into a flat round with a can of food. When your cooking oil is hot again, add all of your flat plantain pieces and fry them on each side until golden brown. Allow them to drain on paper towels, sprinkle them with mojo sauce (if you like) to taste, or put the mojo on the side to use as a dipping sauce.', '1753216061Mariquitas.jpg', '2025-07-22 20:27:41', 3, 1, 0),
(12, 'Cuban Chicken Soup - Sopa de Pollo', '1 3/4 quarts of water\r\n1/2 chicken cut in small pieces\r\n1 chicken liver\r\n1 large onion\r\n1 finely chopped green pepper\r\n2 minced garlic cloves\r\n1/4 cup tomato paste\r\n2 carrots \r\n1 tbsp green pepper \r\n1/4 tsp vinegar \r\n1 medium chopped onion \r\n1/2 cup tomato sauce \r\n1/2 tsp oregano \r\n1 tbsp tomato sauce \r\n2 tbsp olive oil \r\n1 potato peeled and diced \r\n1/2 cup curly pasta \r\nsalt, pepper and oregano to taste \r\n\r\nBoil chicken with liver, garlic, salt, oregano, pepper, onion and tomato sauce. Remove chicken from pot when it is tender and discard fat and skin. Add chicken, potatoes and carrots, cooking until vegetables are tender. Partially mash some but not all of the vegetables and add pasta, cooking until pasta is tender. Serves 8.', '1753216201cuban_soup.jpg', '2025-07-22 20:30:01', 3, 1, 0),
(13, 'Watergate Salad', 'There&rsquo;s nothing like a creamy, fruity salad with marshmallows. Is it a\r\nsalad? Is it fruit? Is it a side dish? Is it dessert? Whatever it is, it&rsquo;s\r\ndelicious. No potluck is complete without one. My version has fresh\r\nwhipped cream instead of whipped topping and fresh pineapple\r\ninstead of canned.\r\nMakes 8-10 servings\r\n1 (3.4 ounce) box pistachio pudding\r\n3 cups pineapple, pulsed in food processor until lightly crushed, or 2 8-\r\nounce cans crushed pineapple, undrained\r\n1/2 cup chopped pecans\r\n1 cup miniature marshmallows\r\n8 ounces heavy cream, whipped with 2 tablespoons powdered sugar, or\r\n1 small container whipped topping\r\n1. Combine the pineapple, pudding, pecans, and marshmallows in a\r\nlarge bowl.\r\n2. Fold the whipped cream or whipped topping into the pineapple\r\nmixture until completely combined. Refrigerate for at least one\r\nhour. Serve cold.', '1753216385watergate-salad-10.jpg', '2025-07-22 20:33:05', 1, 13, 0),
(14, 'pinto beans &amp; skillet cornbread', 'There&rsquo;s really no meal simpler than pinto beans and cornbread. I take the cheater way out and cook my beans in the slow cooker. However,\r\nif you are going to make this cornbread you MUST use a cast iron skillet-preferably a Lodge cast iron skillet! Some Southerners will argue\r\nthat cornbread should contain no flour, but this is the style of cornbread I grew up on. All Southerners agree, though, that true Southern\r\ncornbread is NEVER sweet!\r\nFor beans:\r\n1 pound dry pinto beans, picked through, rinsed, and soaked overnight\r\n1 ham hock\r\n6-8 cups water\r\nFor cornbread:\r\n1 cup cornmeal (NOT cornmeal mix)\r\n1/2 cup all-purpose flour\r\n1 teaspoon salt\r\n1 tablespoon baking powder\r\n1/2 teaspoon baking soda\r\n1 1/2 cup buttermilk\r\n1 large egg\r\n1/4 cup unsalted butter, melted and cooled slightly\r\n2 tablespoons bacon fat OR unsalted butter\r\n1. For beans: Place the soaked and drained beans in a 4 or 5-quart\r\nslow cooker along with the ham hock and 6-8 cups of water. Cover and cook on low for 8 hours, until beans are tender. Remove the\r\nham hock and either discard or shred the meat and place it back into the beans. Salt the beans to taste.\r\n2. For the cornbread: Preheat the oven to 450 degrees. In a medium mixing bowl, whisk together the cornmeal, flour, salt, baking powder,\r\nand baking soda. In another bowl, whisk together the buttermilk and the egg. Pour the buttermilk mixture over the cornmeal mixture\r\nthen add the butter. Stir to combine.\r\n3. Place the bacon fat or butter into a 10-inch cast iron skillet and place it into the preheated oven. When the fat has melted, remove the\r\npan from the oven and pour in the cornbread batter. Bake for 20-25 minutes, until golden brown. Invert onto a serving plate and serve\r\nimmediately.', '1753216476pintobeans.jpg', '2025-07-22 20:34:36', 1, 13, 0),
(15, 'hummingbird cake', '3 cups all-purpose flour\r\n1/2 teaspoon baking soda\r\n2 teaspoons baking powder\r\n1 teaspoon salt\r\n2 cups granulated sugar\r\n1 teaspoon ground cinnamon\r\n1/2 teaspoon ground nutmeg (I used 1 1/2 teaspoons\r\nAlchemy Spice Wake and Bake Blend in place of the\r\ncinnamon &amp; nutmeg)\r\n3 eggs\r\n1 cup canola or vegetable oil\r\n8-ounce can crushed pineapple (with juice)\r\n2 cups mashed ripe bananas (3-4)\r\n2 cups finely chopped pecans (can toast them lightly if\r\nyou wish)\r\n1 lb cream cheese (softened)\r\n1 cup unsalted butter-2 sticks (softened)\r\n2 lb powdered sugar\r\n2 teaspoons vanilla extract\r\n1. Preheat the oven to 350 degrees. Butter a half-sheet\r\npan or 3 9-inch round cake pans and line with\r\nparchment paper, then butter the parchment paper\r\n2. In a large mixing bowl, whisk together the flour, baking powder, baking soda, salt, and spices.\r\n3. In another medium to large bowl, whisk together the oil, eggs, and sugar. Stir in the mashed bananas, the pineapple, and one cup of the\r\npecans (I did all of the mixing for this cake by hand...do not use a mixer).\r\n4. Pour the wet ingredients over the dry ingredients and stir until just combined (it&#039;s fine if you have a couple of lumps of flour in your\r\nbatter). Pour into the prepared sheet pan or divide among the three round pans. Bake for 20-30 minutes, until a toothpick or cake tester\r\ninserted in the center comes out clean (the sheet pan may take slightly less time than the round pans). Cool briefly in pan then turn out\r\nonto a cooling rack and cool completely.\r\n5. If you baked the cake in a sheet pan, cut the sheet in half lengthwise then cut the halves in half crosswise so that you have four roughly\r\nequal rectangles. I put parchment between mine to help with transfer; a cake lifter sprayed with non-stick spray would also be helpful\r\nhere.\r\n6. Make the frosting: using a hand or stand mixer, beat together the cream cheese and the butter until well incorporated, then beat in the\r\npowdered sugar a little bit at a time, making sure that the previous addition is fully incorporated before adding more (going slowly\r\nwill keep you from making a gigantic mess...like I did). Beat in the vanilla.\r\n7. To assemble the cake. put a small dab of icing on a cake board to secure the bottom layer. If you baked in a sheet pan, use about 1/2 cup\r\nof icing between each layer; if you used round pans, use about 2/3 cup. Ice the outside of the cake then coat the sides with icing. I\r\nrefrigerated my cake prior to serving to firm up the icing.', '1753216577hummingbird.jpg', '2025-07-22 20:36:17', 1, 13, 0),
(16, 'FLAUTAS DE POLLO', 'Ingredients Amounts\r\nGarlic clove, peeled 2 ea.\r\nRoma tomatoes, quartered 6 ea.\r\nWhite onion, quartered 1 ea.\r\nChicken breast, poached, and shredded 2 ea.\r\nWhite corn tortillas 24 ea.\r\nWood toothpicks or skewers 48 ea.\r\nCanola oil 2 cup\r\nSalt to taste\r\nGarnish\r\nCrema mexicana 1 cup\r\nRomaine lettuce leaves, shredded 1 &frac12; cup\r\nSalsa Verde con Aguacate 1 cup\r\nQueso fresco, finely crumbled &frac12; cup\r\n\r\nMethod\r\n1. Transfer the garlic, onion, and tomatoes to a blender and puree.\r\n2. Heat 1 tablespoon of oil in a saut&eacute; pan and fry the tomato puree until it changes color and reduces slightly, about 10 minutes.\r\n3. Add the shredded chicken to the reduced puree and season with salt to taste.\r\n4. Heat 1 cup of oil in a skillet set over medium heat. Warm the tortillas by immersing briefly in hot oil to soften. Drain the tortillas on a wire rack.\r\n5. Assemble the flautas by placing 1-2 tablespoons of the chicken filling on the bottom half of each tortilla. Do not overstuff. Working from the bottom of the tortilla, tightly roll the flauta and secure the seams with 1-2 toothpicks. Line the flautas on their sides so the seams stay closed.\r\n6. Heat the oil in a deep skillet set over medium-high heat. Fry the flautas, turning frequently, to ensure even browning. The flautas should be lightly browned on all sides.\r\n7. Drain on a wire rack to remove excess grease.\r\n8. Arrange 3 tacos per person on a plate. Drizzle a small amount of crema mexicana on top of the flautas and garnish with lettuce and crumbled queso fresco.\r\n9. Serve immediately with the salsa verde con aguacate.', '1753216800flautas_pollo.jpg', '2025-07-22 20:40:00', 1, 13, 0),
(17, 'ENCHILADAS POTOSINAS', 'Ingredients Amounts\r\nAncho chiles, wiped clean, seeds and 4 ea.\r\nveins removed\r\nWhite corn masa, fresh 2 lb.\r\nAll purpose flour (optional) 2-4 Tbsp\r\nLard &frac12; lb.\r\nGarlic cloves, diced 3 ea.\r\nRoma tomatoes, not too ripe, diced 1 lb.\r\nSerrano chiles, finely diced 2 ea.\r\nOaxacan string cheese, chopped 12 oz.\r\nGarnish\r\nGreen onions, finely chopped 1 bu.\r\nHass avocados, halved, sliced 3 ea.\r\nQueso a&ntilde;ejo, crumbled 6 oz.\r\n\r\nMethod\r\n1. Gently toast the chiles on a comal over medium heat. Soak in hot water for 15 minutes. Drain and set aside.\r\n2. Transfer the chiles in a blender with enough water to make a puree.\r\n3. Place the masa in a bowl. Add the chile puree and season with salt to taste. Add the flour if the dough is too wet. Cover with a damp cloth and let rest for 20 minutes.\r\n4. In a saut&eacute; pan, heat 1 tablespoon of lard and saut&eacute; the garlic, tomatoes, and chiles.\r\n5. Reduce the heat to a slow simmer and when liquid is evaporated, remove from heat and add the string cheese. Stir to combine and set aside to cool.\r\n6. Cut two plastic rounds to fit the tortilla press from a light plastic supermarket bag.\r\n7. Place both rounds in the tortilla press and form 30 equal size balls.\r\n8. Heat a well seasoned comal over medium high heat.\r\n9. Place each ball between the two plastic rounds, press slightly, turn 180&ordm;, and press again.\r\n10. Take the tortilla between the plastic pieces and place it in your left hand (if you are right handed). Peel off the top plastic, transfer the tortilla to your right hand -fingers close together (not on your palm) and remove the other plastic round.\r\n11. Carefully slide the tortilla over the comal and cook for several seconds turn them and once they are half way cooked. Place 1 tablespoon of the filling on one end of the tortilla fold the enchiladas like turnovers, sealing the edge. Cook them for 5 more minutes and transfer to a cloth-lined bowl to keep warm.\r\n12. Before serving, heat the rest of the lard or oil in a deep skillet and fry the enchiladas. Drain on a wire rack to remove excess oil.\r\n13. Arrange the enchiladas on a serving plate and garnish with the green onions, avocado slices and queso a&ntilde;ejo. Serve immediately.', '1753216950enchiladas_potosinas.jpg', '2025-07-22 20:42:30', 1, 13, 0),
(18, 'CHILES JALAPE&Ntilde;OS EN ESCABECHE', 'Ingredients Amounts\r\nCanola oil &frac12; cup\r\nCarrots, peeled and sliced on the bias &frac12; lb.\r\nJalape&ntilde;o chiles, stems removed and 1 lb.\r\nquartered\r\nWhite onion, quartered and sliced 1 ea.\r\nGarlic cloves, unpeeled 30 ea.\r\nAllspice, whole 6 ea.\r\nBlack peppercorns, whole 10 ea.\r\nCloves, whole 4 ea.\r\nThyme, sprigs 3 ea\r\nMarjoram, sprigs 3 ea.\r\nWhite distilled vinegar 2 cup\r\nWater 1 cup\r\nSalt to taste\r\n\r\nMethod\r\n1. Heat the oil in a large non-reactive pot or Dutch oven. Add the carrots and saut&eacute; for 8 minutes or until soft. Add the sliced chiles and saut&eacute; for 3 minutes. Add the onion and saut&eacute; for 2 minutes. Add the remaining ingredients and bring to a simmer.\r\n2. Cook the escabeche on low heat for 10 minutes. Season with salt.\r\n3. Remove from the heat and cool.\r\n4. Place the escabeche in a sterilized glass container with a tight fitting lid and refrigerate.\r\n5. Marinate the escabeche for at least 24 hours prior to serving.', '1753217047pickled_peppers.jpg', '2025-07-22 20:44:07', 1, 13, 0),
(21, 'Fried Green Tomatoes with Alabama White Sauce', 'For sauce:\r\n1/2 cup mayonnaise\r\n1 &frac12; tablespoons water\r\n1 &frac12; tablespoons white wine vinegar\r\n&frac34; teaspoon black pepper\r\n1 teaspoon Dijon mustard (the original recipe calls for Creole mustard,\r\nwhich I did not have)\r\n&frac14; teaspoon salt\r\n&frac14; teaspoon sugar\r\n1 small clove garlic, minced\r\n1 teaspoon prepared horseradish\r\nFor tomatoes:\r\ncanola or vegetable oil\r\n2 medium green tomatoes\r\n1/2 cup flour\r\n1/2 cup cornmeal (NOT cornbread mix!)\r\n1 teaspoon salt\r\n1/2 teaspoon black pepper\r\n1/4-1/2 teaspoon cayenne pepper\r\n1 cup buttermilk\r\n1/4-1/2 cup cornstarch (start with smaller amount and add more if needed)\r\n1. Whisk all sauce ingredients together in a small bowl. Refrigerate until ready to use.\r\n2. Preheat about an inch of the oil over medium heat in a 9 or 10-inch skillet (I like cast iron).\r\n3. Whisk the flour, cornmeal, salt, pepper, and cayenne together in a medium bowl. Add the buttermilk and whisk until smooth.\r\n4. Place the cornstarch in a separate bowl. Working in 2-3 batches, dredge the tomato slices in cornstarch on both sides then dip into the\r\nbatter. Fry, flipping as needed, until golden on both sides. Drain on paper towels. Serve while hot.', '1753296723greenmaters.jpg', '2025-07-23 18:52:03', 2, 18, 0),
(22, 'Fried Okra', 'vegetable or canola oil\r\n1 large egg\r\n1/2 cup buttermilk\r\n1 cup cornmeal (not cornbread mix!)\r\n1 1/2 tablespoons all-purpose flour\r\n1 1/2 teaspoons salt\r\n1 1/2 teaspoons black pepper\r\n1/2 teaspoon cayenne pepper\r\n1 pound fresh okra\r\n1. Slice the okra into 1/2 inch thick slices, discarding the ends. Pour enough oil into a large skillet (I use a 10-inch Lodge cast iron skillet)\r\nabout 1/4 inch deep. Preheat over medium heat.\r\n2. Whisk the egg, buttermilk, 3/4 teaspoon salt, 3/4 teaspoon pepper, and 1/4 teaspoon cayenne together in a shallow bowl. In another\r\nshallow bowl, stir together the flour, cornmeal, and remaining salt, pepper, and cayenne.\r\n3. A handful at a time, dip the okra into the buttermilk mixture. Remove with a slotted spoon and allow the liquid to drain away.\r\nTransfer to the cornmeal mixture and toss until coated. Transfer to the skillet and repeat until the bottom of the skillet is about 3/4 fulldon&rsquo;t\r\ncrowd the pan. Cook, stirring occasionally, until golden brown. Remove to a paper towel lined plate or bowl. Repeat with\r\nremaining okra, adding more oil if needed. Serve while hot.', '1753296788okra.jpg', '2025-07-23 18:53:08', 2, 18, 0),
(23, 'CANTINA STYLE DRIED SHRIMP SOUP', 'Roma tomatoes 6 ea.\r\nMora chiles, wiped clean, deseeded and 4 ea.\r\ndeveined\r\nGarlic cloves, peeled 3 ea.\r\nCarrots, small, peeled, finely diced 10 ea.\r\nWhite onion, quartered 1 ea.\r\nWhite potatoes, skin on, finely diced 4 ea.\r\nDried shrimp, cleaned heads removed &frac12; lb.\r\nOregano, dried 1 tsp\r\nThyme, dried &frac12; tsp.\r\nSalt to taste\r\nGarnish\r\nSerrano chiles, finely diced 4 ea.\r\nLime wedges 6 ea.\r\nFreshly fried totopos 2 cup\r\nMethod\r\n1. Place the tomatoes in a small saucepan, barely cover with water and bring to a simmer. Cook the tomatoes with a lid until the tomatoes burst open, about 5 minutes.\r\n2. In a small saucepan bring 1 cup of water to a boil, add the mora chiles and cook them until soft, about 2-3 minutes. Drain and discard the water.\r\n3. Transfer the chiles, cooked tomatoes, garlic and &frac14; onion to a blender and puree.\r\n4. Finely slice the rest of the onion and set aside.\r\n5. Heat 3 tablespoons of oil in a saucepan. Saut&eacute; the onion until translucent, about 3 minutes. Add the reserved tomato chile mixture and once it reduces and changes color, about 5 minutes, add 1 &frac12; qt water, diced carrots, and potatoes.\r\n6. Add the shrimp, dried herbs, and season with salt to taste. Reduce the heat, and cook until the vegetables are cooked through, about 25 minutes.\r\n7. This soup is traditionally served in very small cups and garnished with diced Serrano chiles and lime wedges on the side.\r\n8. Accompany with freshly fried totopos.', '1753297086caldo_camaron.jpg', '2025-07-23 18:58:06', 4, 19, 0),
(24, 'SQUID CHORIZO', 'Giant squid, calamari 2 lb.\r\nSugar 2 &frac12; oz.\r\nChicken bouillon powder &frac12; oz.\r\nAncho chiles, wiped cleaned, seeds and 5 oz.\r\nveins removed\r\nPasilla chiles, wiped cleaned, seeds and 2 oz.\r\nVeins removed\r\nPork fat 3 oz.\r\nWhite onion, roughly chopped 1 ea.\r\nGarlic cloves, peeled, roughly chopped 3 ea.\r\nBay leaves 5 ea.\r\nBlack peppercorns 5 ea.\r\nCloves 3 ea.\r\nDried oregano 1 tsp.\r\nDistilled white vinegar &frac34; cup\r\nRice vinegar &frac14; cup\r\n\r\nMethod\r\n1. Immerse all grinding attachments in an ice bath for 30 minutes.\r\n2. Peel off the outer layer of skin from the squid and discard. Cut the squid into cubes.\r\n3. Place in a saucepan, cover with water, and bring to a boil. Cook for 5 minutes.\r\n4. Once cooked, add the sugar and the chicken bouillon, stir to dissolve. Let the mixture rest for 5 minutes. Remove the cooked squid with a slotted spoon, set aside and cool.\r\n5. Gently toast the chiles on a comal over medium heat. Soak in hot water for 15 minutes. Drain and set aside.\r\n6. Transfer the chiles to a blender and puree with water as needed to form a smooth puree. Pass the chile puree through a fine mesh sieve. Add the onion, garlic, spices and vinegars to the blender and puree along with the chile puree.\r\n7. Assemble the meat grinder and set the machine to the smallest setting and finely grind the pork fat and the squid to a medium fine grind. Transfer to a non-reactive bowl, add the chile paste and mix until incorporated. Cover and refrigerate for 24 hours.\r\n8. Heat the oil in a skillet and saut&eacute; the chorizo in a skillet over medium heat until cooked through, about 15 minutes.', '1753297185squid_chorizo_stew_06758_16x9.jpg', '2025-07-23 18:59:45', 4, 19, 1),
(25, 'fluffy banana pudding', '3/4 cup plus 3 tablespoons sugar\r\n3 tablespoons cornstarch\r\n1/4 teaspoon kosher salt\r\n2 large eggs\r\n1 large egg yolk\r\n2 cups whole milk\r\n3 tablespoons unsalted butter, cut into 6 pieces and chilled\r\n1/2 teaspoon vanilla extract\r\n1 box vanilla wafers\r\n4-6 just ripe bananas (yellow, not brown!)\r\n1 tablespoon lemon juice\r\n1 1/2 cups heavy whipping cream\r\n\r\n1. Combine 3/4 cup sugar, cornstarch, and kosher salt in a medium saucepan. Add\r\nthe eggs and egg yolk and whisk until well combined. Slowly whisk in the milk\r\nuntil well combined. Cook over medium-low heat until thickened and about 175\r\ndegrees. Remove from heat and whisk in the butter, one piece at a time. Add\r\nvanilla and whisk to combine. Use a spatula to scrape into a bowl. Press wax or\r\nparchment paper down over the surface and refrigerate until completely chilled.\r\n2. Slice the bananas into 1/4 inch slices. Toss with the lemon juice in a small bowl\r\nand set aside.\r\n3. Using an electric mixer, whip the cream with the remaining sugar until it\r\nreaches soft peaks. Carefully fold 2/3 of the whipped cream into the chilled\r\npudding until light and fluffy.\r\n4. Place a small amount of the pudding into the bottom of a medium bowl. Follow\r\nwith a layer of vanilla wafers and a layer of banana. Top with 1/3 of the\r\npudding. Repeat twice, finishing with a layer of pudding. Top with remaining\r\nwhipped cream. Refrigerate until ready to serve.', '1753297351BEST-EVER-BANANA-PUDDING-500x500.jpg', '2025-07-23 19:02:31', 2, 15, 0),
(26, 'Canadian Nanaimo Bars', 'Nanaimo Base:\r\n&frac34; cup unsalted butter melted\r\n&frac14; cup sugar\r\n4 tablespoon water\r\n6 tablespoon cocoa powder\r\n1 cup shredded coconut\r\n2 cups graham wafer crumbs\r\n&frac14; cup ground almonds\r\nButtercream Filling:\r\n1 cup butter softened\r\n8 tablespoon 35% whipping cream\r\n4 tablespoon vanilla custard powder\r\n3.5 cups icing sugar\r\nChocolate Ganache:\r\n6 oz semi-sweet bakers chocolate\r\n4.5 tablespoon unsalted butter\r\nInstructions\r\n \r\nPrepare a deep cookie dish or casserole pan by lining it with parchment paper.\r\nMelt the butter, sugar, and cocoa powder in a double boiler. Once mixed together and liquid, add the almonds, graham crumbs, and coconut. If the base mixture seems too thick add some of the water to the mass to make it more pliable. You want the Nanaimo base to be mold-able yet hold together.\r\nChill the base in the fridge until firm, about 15 to 20 minutes.\r\nWhile the base chills, add the softened butter, icing sugar, and custard powder to an electric mixer. Beat the butter and sugar mix until creamy, fluffy and has the consistency of icing. Slowly add the 8 tablespoon of whipping cream and continue beating until the cream is incorporated and velvety.\r\nOnce the graham crust base is firm, use an offset spatula and spread the icing mixture evenly over the base layer. Return the dish to the fridge to let the icing set, about 10 minutes.\r\nMelt the remaining semi-sweet chocolate and butter over the double boiler on low heat. Once the icing has set in the fridge, pour the chocolate ganache over the Nanaimo Bars and using an offset spatula, spread the chocolate over the top.\r\nRefrigerate one last time for half an hour to ensure everything is nice and cold.\r\nCut the Nanaimo Bars into whichever shape or size you like!', '1753297610nanaimo_bars.jpg', '2025-07-23 19:06:50', 6, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'James', 'Doe', 'jdoe', 'jdoe@ft.com', '$2y$10$FabiK9DkdXx5kxTBd.UEn.fF6.JL4y5L.EB/cwKMfzgCKYbXL27Q6', '1753278667avatar1.jpg', 1),
(13, 'tim', 'mann', 'tmann', 'tmann@rug.edu', '$2y$10$A5cvLv.CEO8RhTIdFs3mcuwo/NlGo838U1gPSDOo15t7QNCwx2NbS', 'dog.jpg', 0),
(14, 'Dylan', 'Meeks', 'dmeeks', 'dmeeks@aum.edu', '$2y$10$k94wBau4eEasmHhNylYA2OtNdzeSM2y8d1XjmOFRxilNXgqzeeDwe', '1753278319dylan.jpg', 0),
(15, 't', 'doe', 'tdoe', 'tdoe@aum.edu', '$2y$10$Gel.HGcGtAV5o4srMCt.O.vqcgEZHGtPAAgSbA9Ql4eRWHt.yigiW', 'anon.jpg', 0),
(17, 'w', 'red', 'wred', 'wred@aum.edu', '$2y$10$hq5o3.WsZOCLZNdLPlYctuNvZFc70V.LE8kDuotBBPoPrKiRoh1De', 'red.jpg', 0),
(18, 'r', 'put', 'rput', 'rput@aum.edu', '$2y$10$1694zs/8l3MLLZ2efcyeweeXiBYVsM0qCG.0S/NPIKVmIQFFzm9jq', 'blueman.jpg', 0),
(19, 'g', 'money', 'gmoney', 'gmoney@aum.eud', '$2y$10$Mjx5LXL5AaYFCjkX4aYde.TyuhiIPuZXyZlj2KS1T17vgED8PX4pG', 'gmoney.jpg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
