-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2024 at 11:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `cover` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `title`, `thumbnail`, `cover`, `content`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Tempora qui quisquam voluptas ut qui praesentium quae delectus.', 'https://via.placeholder.com/640x480.png/0099ff?text=provident', 'https://via.placeholder.com/640x480.png/007799?text=omnis', 'Quis quia aliquam praesentium. Tempore sint provident cum inventore doloremque dolor.', 13, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(2, 'Eum et aut consectetur quis temporibus.', 'https://via.placeholder.com/640x480.png/004411?text=nihil', 'https://via.placeholder.com/640x480.png/00bb77?text=officia', 'Vitae accusantium et pariatur fugit voluptas illo quasi sit. Qui aut corrupti voluptatem. Veritatis laboriosam pariatur id dolorem.', 14, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(3, 'Sunt facilis a et repellendus molestias.', 'https://via.placeholder.com/640x480.png/003300?text=asperiores', 'https://via.placeholder.com/640x480.png/00bb33?text=totam', 'Quam illum enim voluptas placeat pariatur numquam. Cumque placeat sit corrupti eos est. Ipsum quidem totam assumenda eligendi.', 15, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(4, 'Ut aliquam sunt dolorum recusandae facilis.', 'https://via.placeholder.com/640x480.png/0011cc?text=omnis', 'https://via.placeholder.com/640x480.png/00bb99?text=facere', 'Commodi explicabo minima et optio non. Vitae possimus ut reiciendis. Dolores quidem quae ea eligendi.', 16, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(5, 'Cumque nostrum quisquam sit quia.', 'https://via.placeholder.com/640x480.png/00bb33?text=inventore', 'https://via.placeholder.com/640x480.png/0000cc?text=quis', 'Ducimus suscipit sit minima perferendis eos sapiente labore. Vel ut nihil voluptatem nesciunt ut similique quis. Odit autem fuga non nisi aut et. Dolores non consectetur suscipit ad dolor.', 17, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(6, 'Eveniet eum doloribus reiciendis ut.', 'https://via.placeholder.com/640x480.png/001166?text=cupiditate', 'https://via.placeholder.com/640x480.png/00aa55?text=impedit', 'Illo illum eaque consequatur. Non quis ut deleniti asperiores magni. Modi sunt perspiciatis ab quam molestias et. Quo et dolorem commodi error nihil quia.', 18, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(7, 'Quas inventore delectus quam ipsam repellat.', 'https://via.placeholder.com/640x480.png/006677?text=libero', 'https://via.placeholder.com/640x480.png/007788?text=magnam', 'Iure nostrum voluptas ad facere eius et. Quasi assumenda totam ut consequatur consequuntur est. Dolore ipsum delectus aut debitis deleniti rem aut ut. At voluptas ut minima iusto.', 19, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(8, 'Quis omnis ipsa quasi id laboriosam.', 'https://via.placeholder.com/640x480.png/003322?text=voluptate', 'https://via.placeholder.com/640x480.png/0088bb?text=architecto', 'Aut earum ea quibusdam in tenetur sit. Est nihil qui minima consequuntur. Aut nihil qui non hic corrupti. Eos quae qui voluptatem molestiae consequatur facere. Eum aliquid expedita blanditiis eaque saepe rerum quasi.', 20, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(9, 'At facere iusto voluptas veritatis vero ullam.', 'https://via.placeholder.com/640x480.png/00ff77?text=exercitationem', 'https://via.placeholder.com/640x480.png/00ee33?text=dicta', 'Consequuntur aut ea qui labore voluptatem. Quam et molestiae rerum et est aspernatur. Esse asperiores sed adipisci. Aut molestiae alias fuga velit saepe unde velit. Corrupti itaque aspernatur at sit qui ex necessitatibus.', 21, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(10, 'Ipsam voluptatibus quis ut id blanditiis eum.', 'https://via.placeholder.com/640x480.png/007744?text=consequatur', 'https://via.placeholder.com/640x480.png/00bb22?text=quia', 'At officiis voluptas laboriosam qui sequi. Sunt sit molestiae illum atque corporis omnis. Asperiores temporibus consequatur provident et. Magnam sit magnam modi et necessitatibus quia.', 22, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(11, 'Rem ab non fugit vel distinctio ea id.', 'https://via.placeholder.com/640x480.png/000066?text=sint', 'https://via.placeholder.com/640x480.png/00ee66?text=magni', 'Ducimus hic in nisi accusantium. Expedita assumenda ea et dicta. Est voluptatibus et enim.', 23, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(12, 'A voluptatem fugit aut consequatur quo nesciunt ad aliquam.', 'https://via.placeholder.com/640x480.png/000066?text=dolores', 'https://via.placeholder.com/640x480.png/003333?text=culpa', 'Nisi dolorum atque et laudantium aut. Voluptatem id dolore libero harum earum commodi et. Quod doloremque dolores consequatur fuga.', 24, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(13, 'Quisquam quod qui ratione consequuntur tempore et minus.', 'https://via.placeholder.com/640x480.png/007744?text=non', 'https://via.placeholder.com/640x480.png/00ff22?text=quis', 'Est possimus et fugiat voluptas ipsam commodi. Eos sunt ex non dignissimos illum nesciunt ut. Est fugiat molestiae non qui porro quia velit. Optio autem iste repellat quia nulla dolores aliquam. Amet enim inventore aut alias praesentium adipisci eaque.', 25, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(14, 'Veritatis odit alias culpa nemo alias adipisci.', 'https://via.placeholder.com/640x480.png/00cc66?text=excepturi', 'https://via.placeholder.com/640x480.png/00bb77?text=perspiciatis', 'Quia velit at est ea. In voluptate eligendi ut. Voluptatibus temporibus aperiam molestias. Iusto et aut id fugit aliquid accusamus.', 26, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(15, 'Aut amet praesentium minus et impedit ab.', 'https://via.placeholder.com/640x480.png/00ff33?text=in', 'https://via.placeholder.com/640x480.png/0044bb?text=dolor', 'Voluptas sed voluptatem explicabo veritatis corporis soluta et. Alias aliquam laborum ut est est quidem. Iusto qui expedita deleniti hic.', 27, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(16, 'Veritatis omnis praesentium qui fugit eaque quo magni soluta.', 'https://via.placeholder.com/640x480.png/00ff22?text=iure', 'https://via.placeholder.com/640x480.png/0099ff?text=sapiente', 'Qui atque deserunt modi ea praesentium perferendis. Doloribus et voluptatibus quas quaerat ad quibusdam assumenda. Odio cupiditate quia ea occaecati nobis. Est magni et omnis enim voluptatem voluptas eveniet mollitia.', 28, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(17, 'Molestiae illum in modi sed quo eveniet similique.', 'https://via.placeholder.com/640x480.png/00bb00?text=quia', 'https://via.placeholder.com/640x480.png/0066cc?text=nam', 'Quos est ullam dolore ipsam. Iure et nemo aut ut. Quam accusantium rerum ducimus culpa rerum sint porro.', 29, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(18, 'Soluta aliquid ut tempora sit dicta est sapiente in.', 'https://via.placeholder.com/640x480.png/006688?text=saepe', 'https://via.placeholder.com/640x480.png/00aaff?text=quo', 'Molestiae non quod voluptas qui molestiae. Ab quo et delectus laudantium. Fugit eum quia aspernatur.', 30, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(19, 'Repudiandae harum non fugit aut sapiente.', 'https://via.placeholder.com/640x480.png/00dd11?text=distinctio', 'https://via.placeholder.com/640x480.png/005544?text=maxime', 'Excepturi voluptas perspiciatis nam pariatur numquam id porro. Aut sit nemo consequuntur. Totam saepe eaque aut eligendi laboriosam.', 31, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(20, 'Ut sint at optio et reiciendis et aspernatur.', 'https://via.placeholder.com/640x480.png/0033dd?text=autem', 'https://via.placeholder.com/640x480.png/0044ee?text=atque', 'Assumenda omnis occaecati ut mollitia quis velit omnis. Ut debitis et fugit voluptas tenetur qui qui. Maxime et possimus inventore distinctio.', 32, '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(21, 'Maiores adipisci ratione quidem et modi voluptatem voluptatum.', 'https://via.placeholder.com/640x480.png/00dd66?text=fugiat', 'https://via.placeholder.com/640x480.png/001177?text=delectus', 'Doloremque facere sed itaque sequi dolorem sit. Ea earum qui aut possimus necessitatibus quod. Et qui deserunt qui odit et facilis.', 34, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(22, 'Consequuntur tempore dolor repellat aut doloribus.', 'https://via.placeholder.com/640x480.png/0077cc?text=quia', 'https://via.placeholder.com/640x480.png/003344?text=occaecati', 'Voluptas non aut ad omnis nihil perferendis aut. Sit eius tenetur reiciendis quae et et. Quos impedit id ipsa enim quo temporibus veniam dolores.', 36, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(23, 'Nobis voluptatem deserunt qui.', 'https://via.placeholder.com/640x480.png/007788?text=qui', 'https://via.placeholder.com/640x480.png/0077dd?text=alias', 'Tempore numquam soluta quia vero ut at qui voluptas. Quo omnis nisi non sapiente optio ut culpa. Officia ut eligendi in vel debitis iusto nulla.', 38, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(24, 'Magni autem quod vitae a dolorem enim quia.', 'https://via.placeholder.com/640x480.png/002266?text=dolor', 'https://via.placeholder.com/640x480.png/00ccee?text=reprehenderit', 'Est inventore quae facilis enim. Corrupti harum voluptas voluptatem.', 40, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(25, 'Quibusdam libero perferendis rerum in quia animi ea facere.', 'https://via.placeholder.com/640x480.png/005511?text=non', 'https://via.placeholder.com/640x480.png/00cc11?text=nesciunt', 'Nemo sint fuga labore deleniti laudantium. Et natus vitae nihil quis ducimus. Tenetur quasi rem autem et occaecati consectetur.', 42, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(26, 'Doloremque harum aperiam officia consectetur et.', 'https://via.placeholder.com/640x480.png/0055aa?text=natus', 'https://via.placeholder.com/640x480.png/0088aa?text=provident', 'Similique voluptas suscipit animi voluptatum. Ipsam corporis eveniet porro consequuntur. Velit veniam et quia eveniet quis repellat ea. Qui est perspiciatis pariatur asperiores quia explicabo vitae.', 44, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(27, 'Maiores enim repudiandae quis modi.', 'https://via.placeholder.com/640x480.png/0033bb?text=est', 'https://via.placeholder.com/640x480.png/00aadd?text=omnis', 'Dolorem animi recusandae minus minus non. Non corrupti qui quasi commodi voluptas occaecati. Voluptas aliquam non necessitatibus et omnis necessitatibus. Veritatis illum et voluptas.', 46, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(28, 'Natus harum et doloribus ut.', 'https://via.placeholder.com/640x480.png/00dd66?text=illo', 'https://via.placeholder.com/640x480.png/00ddff?text=occaecati', 'Voluptas deleniti ipsa accusamus dolores cupiditate. Non esse ipsa similique. Fugit qui sequi in accusantium. Magni saepe ducimus omnis sequi officiis officia repellendus.', 48, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(29, 'Facilis temporibus veniam mollitia veniam est enim.', 'https://via.placeholder.com/640x480.png/008822?text=officia', 'https://via.placeholder.com/640x480.png/00cc33?text=voluptates', 'Voluptatem ut ipsam natus sequi. Autem qui cum fuga neque laborum doloribus. Et voluptatem inventore error ducimus tempore et.', 50, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(30, 'Repudiandae odio sapiente deleniti numquam.', 'https://via.placeholder.com/640x480.png/00cc11?text=laborum', 'https://via.placeholder.com/640x480.png/00ffdd?text=iusto', 'Tempora minus officiis tempora ut cupiditate culpa optio. Molestiae assumenda repudiandae sunt ducimus maiores repudiandae. Nostrum qui explicabo omnis in mollitia.', 52, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(31, 'Consequatur dicta et omnis magnam commodi.', 'https://via.placeholder.com/640x480.png/0099cc?text=enim', 'https://via.placeholder.com/640x480.png/0033aa?text=sunt', 'Nam vel adipisci reiciendis at. Quas et earum quia aut qui voluptas possimus dignissimos. Est possimus eos quae cumque dolore et est qui. Eius voluptate maiores tempora et laboriosam officiis qui.', 54, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(32, 'Tempora ipsam non libero dolorum eos pariatur reprehenderit.', 'https://via.placeholder.com/640x480.png/0044ee?text=sunt', 'https://via.placeholder.com/640x480.png/0077dd?text=aut', 'Quis quidem a molestiae eveniet eius aliquid. Ducimus harum perferendis voluptatum consequatur unde non aspernatur. Saepe et perferendis corrupti possimus consequatur.', 56, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(33, 'Voluptate est rerum odio et.', 'https://via.placeholder.com/640x480.png/000022?text=impedit', 'https://via.placeholder.com/640x480.png/0022bb?text=reprehenderit', 'Et laudantium cum sunt dolorum error accusamus. Quaerat nobis esse nesciunt dolorem id. Iure aut magnam exercitationem culpa. Est eum molestiae magni qui accusantium.', 58, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(34, 'Blanditiis dolor fuga eum molestias cumque dolor et.', 'https://via.placeholder.com/640x480.png/00dd44?text=qui', 'https://via.placeholder.com/640x480.png/000055?text=inventore', 'Officia aut nam quia odio consequatur. Id mollitia libero nostrum reprehenderit recusandae illum dolor. Laborum magnam quo provident inventore libero odio velit. Magnam labore veritatis totam voluptatem laudantium veritatis ipsam repudiandae.', 60, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(35, 'Voluptatem corrupti fugiat nulla ipsa quibusdam sunt.', 'https://via.placeholder.com/640x480.png/009955?text=consequuntur', 'https://via.placeholder.com/640x480.png/003300?text=minima', 'Aut aut id et laudantium illo voluptatibus nihil. Non in accusantium sit nostrum perspiciatis.', 62, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(36, 'Et placeat officiis recusandae nisi.', 'https://via.placeholder.com/640x480.png/00aaaa?text=facere', 'https://via.placeholder.com/640x480.png/001144?text=deleniti', 'A dignissimos voluptatem maxime ut ducimus fuga non. Unde nam reiciendis mollitia laudantium est. Earum sint laboriosam nostrum saepe nihil vero nulla tenetur. Cupiditate nam culpa soluta voluptatem.', 64, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(37, 'Beatae saepe cum quaerat corrupti ullam modi nihil.', 'https://via.placeholder.com/640x480.png/007755?text=veritatis', 'https://via.placeholder.com/640x480.png/005555?text=aliquid', 'Et sed esse autem aliquam vel consequatur. Quisquam rem consequatur quos eos sed sit sunt est. Ad dignissimos et eligendi libero.', 66, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(38, 'Et natus illo nobis accusantium fuga.fsdfsfsfsd', '1714762886_blog-slider1.jpeg', 'https://via.placeholder.com/640x480.png/006633?text=est', '<p>Nulla consequuntur provident sapiente est. Est quasi suscipit quisquam neque sunt dolores minus. Qui nulla velit dolorem dolorum.</p>', 93, '2024-05-03 02:46:54', '2024-05-03 13:01:26'),
(39, 'Dignissimos cumque ut aut adipisci cum exercitationem natus quia.', 'https://via.placeholder.com/640x480.png/00cc33?text=ab', 'https://via.placeholder.com/640x480.png/006644?text=possimus', 'Aliquam consequatur error quo voluptatem exercitationem. Molestias minima dignissimos quo id natus tenetur sunt. Suscipit possimus facere quo id possimus nemo. Quas voluptas minima eligendi veritatis incidunt cupiditate ad consequatur.', 70, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(40, 'Illo quidem nulla ex labore.', 'https://via.placeholder.com/640x480.png/001100?text=id', 'https://via.placeholder.com/640x480.png/0022aa?text=consectetur', 'Qui labore aut sit cupiditate iusto eos distinctio. Sequi iusto voluptas consequatur libero harum iusto quis aut. Harum accusamus nihil laboriosam corrupti assumenda quibusdam fuga.', 72, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(41, 'Maxime fugit quia omnis corporis.', 'https://via.placeholder.com/640x480.png/005544?text=voluptate', 'https://via.placeholder.com/640x480.png/00ee99?text=voluptatum', 'Ea facilis sit voluptatem iure voluptatum. Fuga et minus culpa amet voluptas. Quibusdam adipisci ea consequatur rem doloribus quibusdam iure qui.', 74, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(42, 'Molestiae qui sed sit pariatur exercitationem quis.', 'https://via.placeholder.com/640x480.png/0066cc?text=rerum', 'https://via.placeholder.com/640x480.png/00ff00?text=illum', 'Dolorum atque asperiores veritatis laboriosam corrupti molestiae magni harum. Non quia qui omnis rerum illum quis. Voluptatum ipsum et assumenda beatae repudiandae recusandae iure. Libero nihil suscipit illum laudantium.', 76, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(43, 'Nihil dolore odio voluptate quae delectus et.', 'https://via.placeholder.com/640x480.png/007788?text=soluta', 'https://via.placeholder.com/640x480.png/003355?text=voluptas', 'Nihil quia et consequatur suscipit voluptate et. Tenetur laudantium eveniet esse iure. Neque vel repellendus consequatur corrupti eum atque. Eum voluptatem id corrupti totam id ullam quibusdam.', 78, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(44, 'Id et fugiat velit doloremque eligendi est eveniet consequatur.', 'https://via.placeholder.com/640x480.png/003311?text=reiciendis', 'https://via.placeholder.com/640x480.png/0011ff?text=fugiat', 'Non sed in impedit aut hic magni perspiciatis. Consectetur fuga sit voluptas sequi impedit. Quod consequuntur vel recusandae. Porro iste qui placeat in nihil officia.', 80, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(45, 'Suscipit cum harum soluta ratione cum dolores dolor velit.', 'https://via.placeholder.com/640x480.png/006611?text=vitae', 'https://via.placeholder.com/640x480.png/00eedd?text=dolorum', 'Fugiat et facere et tenetur ut. Sit reiciendis omnis qui aperiam facere. Quibusdam accusantium blanditiis eaque aperiam ut. Et illum exercitationem libero et hic voluptatibus labore. Asperiores expedita sit et nisi voluptate.', 82, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(46, 'Aut voluptatem et consectetur quidem.', 'https://via.placeholder.com/640x480.png/0077ff?text=deleniti', 'https://via.placeholder.com/640x480.png/00ee77?text=non', 'Unde corrupti ex et nulla et esse. Libero cum voluptatum temporibus repudiandae qui nesciunt. Officia itaque et nisi accusamus.', 84, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(47, 'Facilis earum eaque tempore sunt ut id.', 'https://via.placeholder.com/640x480.png/00aacc?text=quia', 'https://via.placeholder.com/640x480.png/007722?text=id', 'Non qui provident quis quia corrupti. Deserunt id nostrum mollitia aliquid. Sequi a reprehenderit enim quia fuga. Veniam suscipit possimus exercitationem sapiente aliquid sed numquam quis. Impedit tempore dolores sint id et.', 86, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(48, 'Sint labore optio natus incidunt ducimus doloribus odit.', 'https://via.placeholder.com/640x480.png/00cc66?text=consequatur', 'https://via.placeholder.com/640x480.png/006622?text=et', 'Eligendi aut et voluptatem dolores tenetur velit. Quia est necessitatibus accusantium quibusdam sint et incidunt. Eum molestias suscipit impedit. Harum atque aliquid illo ut aut et minus.', 88, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(49, 'Consequatur assumenda aliquam beatae ad similique a doloribus.', '1714764056_blog-slider1.jpeg', '1714764400_blog-sllider5.jpeg', '<p>Adipisci a et fugiat eos. Qui esse consequatur ut corporis explicabo. Soluta ipsa vitae aliquam tenetur iusto.</p>', 93, '2024-05-03 02:46:54', '2024-05-03 13:26:40'),
(51, 'fdgdgrttgre', '1714771907_nb_ist_cover.jpg', '1714759041_blog-slider3.jpg', '<p>sdfsdfsdfsdf</p>', 93, '2024-05-03 11:57:21', '2024-05-03 15:31:47'),
(52, 'test another post', '1714771266_blog-sllider5.jpeg', '1714771266_love-add.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum mollis pellentesque orci, ut molestie enim. Sed placerat faucibus metus, ut convallis ligula varius non. Pellentesque sit amet urna ligula. Vivamus ac luctus sem. Cras nec gravida nisi. Duis eleifend est ac augue pulvinar, pulvinar consectetur urna laoreet. Quisque dignissim laoreet diam, id scelerisque nulla eleifend in. Nullam a hendrerit mauris, ac mollis dolor. Morbi condimentum nisl dolor, vitae ultricies dui ullamcorper et. Quisque faucibus mollis nulla sed dignissim. Maecenas lobortis justo quam, eu tempor ligula malesuada a. Maecenas ut libero gravida, varius nunc quis, consequat mauris.</p>', 93, '2024-05-03 15:21:06', '2024-05-03 15:21:06');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `text` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `blog_post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `text`, `user_id`, `blog_post_id`, `created_at`, `updated_at`) VALUES
(1, 'Tempora aut ut numquam vero totam. Incidunt sed reprehenderit laborum aliquam. Aut illo architecto ipsa labore.', 33, 21, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(2, 'Vero debitis odit voluptatem est. Harum inventore fuga deleniti. Voluptas quibusdam dolor explicabo a. Corrupti modi deserunt consequatur.', 35, 22, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(3, 'Repellendus voluptatibus praesentium iusto tempore asperiores aut sunt. Ut non ipsa laborum tempora aliquid inventore. Quibusdam vitae qui reprehenderit est. Nesciunt quis minus recusandae nemo rerum iusto.', 37, 23, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(4, 'Quasi velit voluptatem delectus est. Et explicabo ut rerum praesentium ad. Et excepturi incidunt et quae dolorum.', 39, 24, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(5, 'Tempora molestias et quasi quia enim. Et aut expedita eum vero dolore doloremque. Amet libero reprehenderit esse illum nisi est dicta. Voluptatum eius veritatis facilis.', 41, 25, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(6, 'Dolorem consequatur rerum nihil quam et eum. Omnis iure atque reprehenderit. Sunt quo aut nesciunt illum aliquam eligendi id. Eveniet et sed velit temporibus et eum culpa odio.', 43, 26, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(7, 'Quisquam sed commodi doloremque facere labore. Alias vero tenetur ut itaque explicabo architecto. Fugit natus at est et illum.', 45, 27, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(8, 'A commodi autem placeat iusto. Voluptate quis voluptatem consequatur at. Assumenda suscipit enim unde sit tenetur est incidunt. In ducimus perferendis aut eaque quisquam.', 47, 28, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(9, 'Inventore nobis minus quia pariatur saepe. Et velit minima qui accusantium veniam. Eos facilis ut aut et quisquam.', 49, 29, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(10, 'Sint maiores quo ut illum assumenda rerum sequi. Eum occaecati sequi dignissimos est.', 51, 30, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(11, 'Consectetur doloribus error suscipit sint. Optio minima et sequi sint iste. Quas non corporis voluptatum eaque voluptatibus excepturi quisquam.', 53, 31, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(12, 'Necessitatibus ipsa aut provident eius officia. Doloremque ducimus non maiores iste possimus ea. Rerum recusandae alias et nam. Quasi soluta necessitatibus alias illo sit.', 55, 32, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(13, 'Dolore autem eaque qui hic itaque. Et impedit quia ipsa voluptates alias sed. Autem fugiat iure maiores ipsam.', 57, 33, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(14, 'Qui saepe quia aut necessitatibus animi molestias iusto. Aperiam quia enim maiores ipsum nulla saepe deleniti. Consequuntur consectetur reprehenderit dolores tempora. Eos omnis enim laborum est et eius veritatis.', 59, 34, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(15, 'Consequatur tempora soluta dolor nemo. Quaerat ut minus sapiente tempora cum nisi. Sit nihil dolorem veniam doloremque sit. Officiis accusantium sed voluptatem perspiciatis enim quae odio eius.', 61, 35, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(16, 'Quia earum vero quia fugit. Aut voluptates fugiat temporibus ad. Explicabo dolor et quia esse sequi vero. Laudantium ratione eius est ut dolor. Ad voluptatem voluptas deserunt facere similique enim.', 63, 36, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(17, 'Adipisci maiores rem est officiis vel aperiam. Dolore repellat voluptatum et porro voluptatem impedit fugit iusto. Quas non officiis cupiditate eum autem consequatur nihil.', 65, 37, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(18, 'Asperiores est cum quam numquam iste occaecati. Ea ipsa quasi eum velit. Quis adipisci et ab porro non quidem tempore.', 67, 38, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(19, 'Qui perferendis est provident rerum doloribus laborum. Dignissimos placeat quia quia et animi architecto. Et voluptatem dolor deserunt veritatis aut consequuntur dolorum. Velit dignissimos et quo.', 69, 39, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(20, 'Et beatae asperiores cumque sit et. Repellat suscipit quidem suscipit aut. Ut occaecati enim officiis et sequi illo corporis.', 71, 40, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(21, 'Repellendus et a commodi eos provident accusamus est. Modi qui accusantium minus alias sit adipisci nisi expedita. Omnis voluptatibus placeat beatae esse et quas nulla. Voluptas illum asperiores aliquam debitis eos voluptas.', 73, 41, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(22, 'Corrupti officiis id qui. Explicabo dolor id eligendi fuga est id. Ullam fugiat atque est alias.', 75, 42, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(23, 'Possimus aspernatur minus expedita ut beatae. Perferendis quia blanditiis est voluptatem quia ea. Tempore et voluptatum ipsum aliquid quis sit aliquid ipsa. Praesentium sint quia reiciendis voluptatem et natus impedit ipsam.', 77, 43, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(24, 'Excepturi nihil sit quas quia. Quo enim natus quidem error rerum. Dicta quo distinctio et facere dolorem maxime animi. Odit amet pariatur optio molestiae tenetur eaque minima.', 79, 44, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(25, 'Corporis voluptatibus deserunt asperiores et tempora fugit vel voluptas. Mollitia recusandae eaque voluptates similique deleniti repellat magni. Quidem harum pariatur libero et fugit.', 81, 45, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(26, 'Harum est sequi et omnis dicta sed dolorem. Quos voluptas quia aut nulla est eum quos. Et ullam omnis distinctio.', 83, 46, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(27, 'Harum aut veritatis quia veniam. Fugiat qui fuga perferendis exercitationem est. Eveniet delectus ad nisi sit. Ipsam quaerat consequatur et aut.', 85, 47, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(28, 'Deleniti ipsum esse ut distinctio non a et molestias. Est sint eum qui omnis. Beatae qui doloribus dolor praesentium eius.', 87, 48, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(29, 'Nemo laboriosam accusamus omnis repudiandae asperiores perspiciatis iste id. Ex consectetur ea quis omnis. Sint dicta earum ea.', 89, 49, '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(31, 'test comment123', 93, 31, '2024-05-03 05:51:37', '2024-05-03 07:52:58'),
(32, 'test commet 1', 93, 29, '2024-05-03 07:54:53', '2024-05-03 07:55:21'),
(33, 'helllo', 93, 32, '2024-05-03 07:55:37', '2024-05-03 07:55:37'),
(34, 'anther comment', 93, 28, '2024-05-03 07:57:40', '2024-05-03 07:57:40'),
(35, 'testdynamic', 93, 24, '2024-05-03 08:03:57', '2024-05-03 08:06:47'),
(36, 'text commet', 93, 23, '2024-05-03 08:07:25', '2024-05-03 08:07:25'),
(37, 'test', 93, 23, '2024-05-03 08:12:52', '2024-05-03 08:12:52'),
(38, 'test', 93, 26, '2024-05-03 08:16:48', '2024-05-03 08:16:48'),
(39, 'another', 93, 26, '2024-05-03 08:17:43', '2024-05-03 08:17:43'),
(40, 'test without resfes', 93, 24, '2024-05-03 08:23:37', '2024-05-03 08:26:58'),
(41, 'text anothoter', 93, 24, '2024-05-03 08:24:10', '2024-05-03 08:24:10'),
(42, 'text anoth', 93, 24, '2024-05-03 08:32:07', '2024-05-03 08:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(13, '2024_05_03_062032_create_blog_posts_table', 1),
(14, '2024_05_03_062055_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ollie Graham I', 'mozelle.sawayn@example.com', '2024-05-03 02:17:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YYzUcQ293W', '2024-05-03 02:17:31', '2024-05-03 02:17:31'),
(2, 'Alberta Schneider I', 'gulgowski.mozelle@example.net', '2024-05-03 02:17:31', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bh74qZ7BSw', '2024-05-03 02:17:31', '2024-05-03 02:17:31'),
(3, 'Vena Bosco DDS', 'rath.julius@example.com', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ewxImx5gYO', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(4, 'Prof. Rodger Homenick PhD', 'vbartoletti@example.org', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'xPnnrHqHwG', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(5, 'Justine Wunsch MD', 'fadel.idella@example.org', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'uhg4LV35ww', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(6, 'Dayana Spinka', 'rocio.casper@example.com', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'APlSQnHMqu', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(7, 'Miss Tanya Trantow', 'ynitzsche@example.com', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Pp6XXmXkIM', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(8, 'Dr. Randall Franecki Sr.', 'xreichel@example.net', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4hvDYbZb5J', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(9, 'Rey Beier', 'miles.pfannerstill@example.com', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bdCe7G0yWe', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(10, 'Emmy Legros', 'dschmitt@example.org', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'H7aNpf0H8p', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(11, 'Keshaun Sporer', 'cordie16@example.net', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'dkMJNykuet', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(12, 'Ms. Adell Prosacco', 'michael18@example.net', '2024-05-03 02:19:28', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'RVNKU8Fn3a', '2024-05-03 02:19:28', '2024-05-03 02:19:28'),
(13, 'Dexter Reilly III', 'vicenta70@example.com', '2024-05-03 02:36:52', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8CzWJ0q4Z4', '2024-05-03 02:36:52', '2024-05-03 02:36:52'),
(14, 'Vivien Koss', 'alia.price@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fTevMvmjO0', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(15, 'Bertha Bergstrom', 'kobe64@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sVXklwo6aR', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(16, 'Lexi Kunde', 'donnelly.elaina@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VyQ6IF4r8T', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(17, 'Hudson Reichel MD', 'kfranecki@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IiOg3VHHb8', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(18, 'Prof. Daphnee Schneider IV', 'mmarks@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vqGeGGacn0', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(19, 'Bud Lakin', 'jedediah99@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'obF3auYoGc', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(20, 'Luisa Cremin Sr.', 'gulgowski.tressa@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YCnQi8eYQh', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(21, 'Kiera Jacobs', 'zjohnson@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ghzhrhYArm', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(22, 'Crystel Luettgen', 'hyatt.pierce@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IR8yFWjZJJ', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(23, 'Jasmin Ryan', 'haskell90@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'g4Y5EkGcIs', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(24, 'Heber Murray', 'heathcote.roy@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0YWlGmUcll', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(25, 'Jermey Koch', 'walsh.evie@example.org', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NBikyPPElC', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(26, 'Corene Gutmann', 'kuvalis.franz@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'igyLJUzuzl', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(27, 'Rosina Blanda II', 'friesen.tito@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lsMBjI5MZq', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(28, 'Art Johnston', 'rosemarie.jerde@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'sPeCKeWeqV', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(29, 'Sanford Wehner Jr.', 'cronin.stephanie@example.com', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Wk5HVYKjH7', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(30, 'Coralie Erdman', 'qbins@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ojroh0gDVh', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(31, 'Mrs. Carlotta Jast', 'steuber.filiberto@example.net', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BDUSBD3ts3', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(32, 'Jettie Harber', 'ibarton@example.org', '2024-05-03 02:36:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y77QzU2ijr', '2024-05-03 02:36:53', '2024-05-03 02:36:53'),
(33, 'Prof. Nathaniel Rolfson', 'lhackett@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CgOsuc6iqH', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(34, 'Prof. Sonya Klocko IV', 'runte.jaylan@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vohAj1vL74', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(35, 'Dalton Swaniawski', 'nlarson@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '32KQbgqSTn', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(36, 'Yoshiko Kohler', 'cjohnston@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IRe51xogGJ', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(37, 'Theresa Stark', 'icassin@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '0NZlkl5fiQ', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(38, 'Talon Dare', 'ofisher@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7vysLEjQvc', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(39, 'Asha Schmeler III', 'diego39@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fxzDZvBKPv', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(40, 'Vicente Hessel', 'fveum@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4Hfc8Cdx5W', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(41, 'Jany Kuhn', 'xrohan@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BzmzTBRsFX', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(42, 'Justina Kemmer', 'bode.moses@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SVp1xVcFgO', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(43, 'Lavonne Flatley', 'wisozk.nova@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ZfrdeJsAEv', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(44, 'Glen Zemlak', 'ashtyn.howe@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm9Sf7wAej0', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(45, 'Miss Brandy Kohler PhD', 'lina.reichel@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6qhGbbJz3E', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(46, 'Pascale Roob', 'rlehner@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ukP9Us9Ssp', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(47, 'Vidal Zieme', 'heller.martine@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YgKVCyQIM2', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(48, 'Bud Feeney', 'leopoldo.strosin@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ucxB2k2QFH', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(49, 'Vicente Konopelski Jr.', 'riley50@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'aihKk3ay61', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(50, 'Arlene Kshlerin', 'xfritsch@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lw8tguGas1', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(51, 'Melany Rutherford', 'jvandervort@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IOOmwyeoUo', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(52, 'Emilie Schultz', 'conrad.schuster@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kiKznoKctW', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(53, 'Jamaal Weber Jr.', 'mayra.muller@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'odzXvnWPk5', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(54, 'Kristoffer Adams', 'mitchell.lamar@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2kDAWthCCw', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(55, 'Dr. Alessandro Schowalter', 'zkutch@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'PZeBzcB4YI', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(56, 'Rosemary Ryan', 'johnston.isabella@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vEr7iqA7A4', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(57, 'Eleonore Schumm', 'haley.edwardo@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'yxMrreJlT9', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(58, 'Josephine Howell', 'christophe.will@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V5lJT4rcCA', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(59, 'Miss Bridie Medhurst', 'kris.justus@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'iHwE7o7nGQ', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(60, 'Dr. Luis McCullough DDS', 'nelda.mraz@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'InAhQHoRRA', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(61, 'Kory Torphy Jr.', 'cathrine73@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kUVPMGyeQk', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(62, 'Virginie Eichmann', 'ekuhn@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '77qio4Oxtt', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(63, 'Thaddeus Stanton IV', 'wisoky.brisa@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ev4sbe0XjY', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(64, 'Vicky Considine', 'cristina70@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fJYcO322vM', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(65, 'Kamron Baumbach II', 'abshire.nicholaus@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3y2ztO1XfW', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(66, 'Anastasia Lind', 'qkoelpin@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1EOkP6Osu6', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(67, 'Tyshawn Smith DVM', 'plang@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'alLmol7jSP', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(68, 'Xander Sanford', 'willms.larissa@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'rYECyYsVji', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(69, 'Dr. Bessie Runolfsdottir', 'botsford.emmanuel@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AcQyq8iY5g', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(70, 'Thelma Towne', 'ewiegand@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MO0tBSdKFX', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(71, 'Ms. Fleta Ward', 'kosinski@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ccIc3fv2b9', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(72, 'Austin Haley', 'blanca.hegmann@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Fss3eTcF8H', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(73, 'Emery Shanahan', 'sheldon13@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'fjRmm7tP7j', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(74, 'Mr. Houston Schinner', 'vanessa.rowe@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'SS0MhGzjm6', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(75, 'Sadie Konopelski', 'josefa33@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 's1a6SFyDEG', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(76, 'Prof. Maurice Collier Sr.', 'haley.jaylen@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'i9Q7R1bQ9l', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(77, 'Ms. Amelie White I', 'claire18@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'S8PzOzukmi', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(78, 'Emmie Feil', 'igislason@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'n00zjS0NUi', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(79, 'Katelynn Terry', 'dkuvalis@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'ggn1GC8zE0', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(80, 'Virgil Parisian DDS', 'arunolfsdottir@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MU3UQpK23q', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(81, 'Dr. Willa Hackett', 'vleannon@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NIYQP8BuLh', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(82, 'Miss Jewell Mueller Jr.', 'guillermo.hessel@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'hpivWIZNj8', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(83, 'Anika Lakin Sr.', 'amy.kovacek@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'MJfpYPUxn3', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(84, 'Maudie Emmerich', 'lindsay.gottlieb@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'w7rnE9X9yh', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(85, 'Justen Moen', 'mkrajcik@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zUnDcaGQEQ', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(86, 'Malachi Hamill', 'lavonne.wuckert@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8XrRocimST', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(87, 'Kimberly Schuppe DVM', 'houston03@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NEU0zI63SO', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(88, 'Mr. Nikolas Stark DVM', 'qpredovic@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Ov6gzKCGvX', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(89, 'Darlene Gaylord', 'jaydon.hirthe@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zKuEsEJZkV', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(90, 'Anahi Dibbert IV', 'trevor00@example.org', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DpjulG4bce', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(91, 'Mr. Ray Swaniawski PhD', 'qcremin@example.com', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NOvtJkGiTv', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(92, 'Mr. Randal Weimann DVM', 'josie39@example.net', '2024-05-03 02:46:54', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cqpFxgVCBa', '2024-05-03 02:46:54', '2024-05-03 02:46:54'),
(93, 'Md Jalal S k', 'mdjalalsk02@gmail.com', NULL, '$2y$10$wavTr2AJtOxNTaJNOpv/q.bnOloOd4aUGoju9Gqdl6REqq9L0DA3i', NULL, '2024-05-03 03:34:26', '2024-05-03 03:34:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_post_id_foreign` (`blog_post_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD CONSTRAINT `blog_posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`blog_post_id`) REFERENCES `blog_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
