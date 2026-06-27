-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2026 at 07:27 AM
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
-- Database: `mbti_schema`
--

-- --------------------------------------------------------

--
-- Table structure for table `majors`
--

CREATE TABLE `majors` (
  `major_id` int(10) UNSIGNED NOT NULL,
  `major_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `majors`
--

INSERT INTO `majors` (`major_id`, `major_name`, `description`) VALUES
(1, 'Kế toán - Kiểm toán', 'Ghi chép, phân tích, kiểm tra và lập báo cáo tài chính, kiểm soát chi phí.'),
(2, 'Tài chính - Ngân hàng - Bảo hiểm', 'Quản lý vốn, đầu tư, tín dụng, bảo hiểm và các dịch vụ tài chính.'),
(3, 'Kinh tế - Quản trị kinh doanh - Thương mại', 'Quản lý doanh nghiệp, lập chiến lược kinh doanh, thương mại hóa sản phẩm.'),
(4, 'Công nghệ thông tin', 'Thiết kế, xây dựng, quản trị hệ thống máy tính, phần mềm, dữ liệu.'),
(5, 'Báo chí - Marketing', 'Sản xuất nội dung truyền thông, PR, xây dựng thương hiệu, tiếp thị.'),
(6, 'Sư phạm', 'Đào tạo giáo viên, phát triển phương pháp giảng dạy và tâm lý học đường.'),
(7, 'Y - Dược', 'Đào tạo bác sĩ, dược sĩ, điều dưỡng, chăm sóc sức khỏe cộng đồng.'),
(8, 'Bác sĩ thú y', 'Chẩn đoán, điều trị bệnh động vật, kiểm soát dịch bệnh.'),
(9, 'Công an - Quân đội', 'Bảo vệ an ninh, trật tự xã hội, quốc phòng và tác chiến.'),
(10, 'Thiết kế đồ họa - Đa phương tiện', 'Sáng tạo hình ảnh, thiết kế kỹ thuật số, video, web, game.'),
(11, 'Xây dựng - Kiến trúc - Giao thông', 'Thiết kế, xây dựng công trình dân dụng, công nghiệp và giao thông.'),
(12, 'Ngoại giao - Ngoại ngữ', 'Giao tiếp quốc tế, phiên dịch, quan hệ hợp tác quốc tế.'),
(13, 'Ngoại thương - Xuất nhập khẩu - Kinh tế quốc tế', 'Thương mại toàn cầu, logistics, chính sách kinh tế đối ngoại.'),
(14, 'Du lịch - Khách sạn', 'Quản lý lữ hành, hướng dẫn, nhà hàng, khách sạn.'),
(15, 'Ô tô - Cơ khí - Chế tạo', 'Thiết kế, sản xuất, bảo dưỡng máy móc, ô tô.'),
(16, 'Điện lạnh - Điện tử - Điện - Tự động hóa', 'Thiết kế, vận hành, sửa chữa hệ thống điện và tự động hóa.'),
(17, 'Hàng hải - Thủy lợi - Thời tiết', 'Vận hành tàu, nghiên cứu tài nguyên nước, khí tượng.'),
(18, 'Hàng không - Vũ trụ - Hạt nhân', 'Kỹ thuật hàng không, máy bay, vệ tinh, năng lượng hạt nhân.'),
(19, 'Công nghệ vật liệu', 'Nghiên cứu và ứng dụng vật liệu mới như polymer, nano.'),
(20, 'Công nghệ chế biến thực phẩm', 'Sản xuất, bảo quản, kiểm nghiệm thực phẩm.'),
(21, 'Công nghệ In - Giấy', 'In ấn, sản xuất giấy, chế bản điện tử.'),
(22, 'Công nghệ sinh - Hóa', 'Ứng dụng sinh học và hóa học trong y học, môi trường.'),
(23, 'Luật - Tòa án', 'Pháp luật, tư pháp, xét xử, giải quyết tranh chấp.'),
(24, 'Mỏ - Địa chất', 'Thăm dò, khai thác khoáng sản, nghiên cứu địa chất.'),
(25, 'Mỹ thuật - Âm nhạc - Nghệ thuật', 'Sáng tác, biểu diễn nghệ thuật, thiết kế, trình diễn.'),
(26, 'Tài nguyên - Môi trường', 'Quản lý tài nguyên, bảo vệ môi trường, xử lý ô nhiễm.'),
(27, 'Tâm lý', 'Nghiên cứu hành vi, cảm xúc, tư vấn, trị liệu tâm lý.'),
(28, 'Thể dục - Thể thao', 'Huấn luyện viên, giáo viên thể chất, vận động viên.'),
(29, 'Thời trang - May mặc', 'Thiết kế, sản xuất và kinh doanh thời trang.'),
(30, 'Thủy sản - Lâm Nghiệp - Nông nghiệp', 'Sản xuất nông nghiệp, nuôi trồng thủy sản, phát triển rừng.'),
(31, 'Toán học và thống kê', 'Lý thuyết toán, mô hình hóa, phân tích dữ liệu.'),
(32, 'Nhân sự - Hành chính', 'Tuyển dụng, đào tạo, quản lý hồ sơ, hành chính.'),
(33, 'Văn hóa - Chính trị - Khoa học Xã hội', 'Nghiên cứu văn hóa, xã hội, chính trị, tôn giáo.'),
(34, 'Công nghiệp bán dẫn', 'Thiết kế, sản xuất chip, công nghệ nano điện tử.'),
(35, 'Khoa học tự nhiên', 'Nghiên cứu vật lý, hóa học, sinh học và tự nhiên.');

-- --------------------------------------------------------

--
-- Table structure for table `major_school`
--

CREATE TABLE `major_school` (
  `major_id` int(10) UNSIGNED NOT NULL,
  `school_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `major_school`
--

INSERT INTO `major_school` (`major_id`, `school_id`) VALUES
(1, 9),
(1, 13),
(2, 9),
(2, 13),
(2, 48),
(3, 9),
(3, 13),
(3, 25),
(4, 2),
(4, 3),
(4, 74),
(5, 4),
(5, 13),
(5, 23),
(6, 6),
(6, 47),
(6, 76),
(7, 19),
(7, 34),
(7, 45),
(8, 11),
(8, 56),
(8, 61),
(9, 36),
(9, 55),
(9, 63),
(10, 39),
(10, 40),
(10, 59),
(11, 2),
(11, 3),
(11, 10),
(12, 9),
(12, 33),
(12, 73),
(13, 4),
(13, 9),
(13, 13),
(14, 4),
(14, 13),
(14, 25),
(15, 2),
(15, 3),
(15, 15),
(16, 2),
(16, 3),
(16, 16),
(17, 8),
(17, 21),
(17, 24),
(18, 2),
(18, 3),
(18, 65),
(19, 2),
(19, 3),
(19, 14),
(20, 11),
(20, 37),
(20, 56),
(21, 2),
(21, 3),
(21, 15),
(22, 56),
(22, 66),
(22, 71),
(23, 36),
(23, 43),
(23, 77),
(24, 14),
(24, 46),
(24, 50),
(25, 57),
(25, 59),
(25, 72),
(26, 46),
(26, 50),
(26, 56),
(27, 27),
(27, 67),
(27, 72),
(28, 6),
(28, 47),
(28, 76),
(29, 22),
(29, 35),
(29, 38),
(30, 11),
(30, 56),
(30, 61),
(31, 2),
(31, 66),
(31, 71),
(32, 4),
(32, 13),
(32, 55),
(33, 57),
(33, 67),
(33, 72),
(34, 2),
(34, 3),
(34, 69),
(35, 58),
(35, 66),
(35, 71);

-- --------------------------------------------------------

--
-- Table structure for table `personality_major`
--

CREATE TABLE `personality_major` (
  `personality_type_id` char(4) NOT NULL,
  `major_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personality_major`
--

INSERT INTO `personality_major` (`personality_type_id`, `major_id`) VALUES
('ENFJ', 6),
('ENFJ', 7),
('ENFJ', 12),
('ENFJ', 14),
('ENFJ', 32),
('ENFP', 3),
('ENFP', 5),
('ENFP', 12),
('ENFP', 13),
('ENFP', 14),
('ENTJ', 2),
('ENTJ', 3),
('ENTJ', 11),
('ENTJ', 13),
('ENTJ', 18),
('ENTP', 2),
('ENTP', 3),
('ENTP', 4),
('ENTP', 5),
('ENTP', 13),
('ESFJ', 3),
('ESFJ', 6),
('ESFJ', 9),
('ESFJ', 12),
('ESFJ', 32),
('ESFP', 5),
('ESFP', 14),
('ESFP', 28),
('ESFP', 29),
('ESFP', 30),
('ESTJ', 1),
('ESTJ', 2),
('ESTJ', 3),
('ESTJ', 9),
('ESTJ', 13),
('ESTP', 9),
('ESTP', 15),
('ESTP', 16),
('ESTP', 24),
('ESTP', 28),
('INFJ', 3),
('INFJ', 23),
('INFJ', 26),
('INFJ', 27),
('INFJ', 33),
('INFP', 4),
('INFP', 8),
('INFP', 10),
('INFP', 25),
('INFP', 27),
('INTJ', 11),
('INTJ', 16),
('INTJ', 18),
('INTJ', 23),
('INTJ', 33),
('INTP', 4),
('INTP', 18),
('INTP', 19),
('INTP', 22),
('INTP', 31),
('ISFJ', 1),
('ISFJ', 6),
('ISFJ', 7),
('ISFJ', 8),
('ISFJ', 22),
('ISFP', 8),
('ISFP', 10),
('ISFP', 20),
('ISFP', 21),
('ISFP', 25),
('ISTJ', 1),
('ISTJ', 7),
('ISTJ', 9),
('ISTJ', 17),
('ISTJ', 19),
('ISTP', 4),
('ISTP', 11),
('ISTP', 15),
('ISTP', 16),
('ISTP', 21);

-- --------------------------------------------------------

--
-- Table structure for table `personality_types`
--

CREATE TABLE `personality_types` (
  `personality_type_id` char(4) NOT NULL,
  `type_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `strengths` text NOT NULL,
  `weaknesses` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `personality_types`
--

INSERT INTO `personality_types` (`personality_type_id`, `type_name`, `description`, `strengths`, `weaknesses`) VALUES
('ENFJ', 'Protagonist', 'Là một loại tính cách có các đặc điểm hướng ngoại , trực giác , cảm xúc và phán đoán . Những kiểu người ấm áp, thẳng thắn này thích giúp đỡ người khác và họ có xu hướng có những ý tưởng và giá trị mạnh mẽ. Họ ủng hộ quan điểm của mình bằng năng lượng sáng tạo để đạt được mục tiêu.', 'Tiếp thu – Những người có kiểu tính cách ENFJ (Nhân vật chính) có quan điểm mạnh mẽ, nhưng họ không hề khép kín. Họ nhận ra tầm quan trọng của việc cho phép người khác thể hiện bản thân một cách trọn vẹn. Ngay cả khi họ không đồng ý với ai đó, họ vẫn nhận ra quyền của người đó được nói lên sự thật của họ. \nĐáng tin cậy – Có rất ít điều khiến ENFJ bận tâm hơn là viễn cảnh làm thất vọng một người hoặc một mục tiêu mà họ tin tưởng. Những người có loại tính cách này có thể được tin tưởng là sẽ thực hiện lời hứa và trách nhiệm của mình – ngay cả khi điều đó rất khó thực hiện. \nĐam mê – Những người có tính cách ENFJ tràn đầy sở thích và họ rất thích theo đuổi sở thích của mình – dù là đi bộ đường dài, nấu ăn, khiêu vũ, trồng cây cảnh hay bất kỳ điều gì khác. Do đó, họ hiếm khi thấy mình không có điều gì thú vị để làm. \nVị tha – ENFJ được biết đến với mong muốn sâu sắc trở thành động lực cho sự thay đổi tích cực trong cả cuộc sống cá nhân và sự nghiệp của họ. Khuynh hướng kiên định của họ đối với sự công bằng thường thúc đẩy những người có loại tính cách này ủng hộ những người không thể tự mình làm như vậy. Niềm vui của họ nằm ở việc nhìn thấy những người xung quanh họ phát triển, khiến lòng vị tha của họ trở nên chân thành và sâu sắc. \nCó sức lôi cuốn – Quyết đoán và truyền cảm hứng, ENFJ thường tìm được cách để đảm nhiệm các vai trò lãnh đạo. Cho dù họ là đội trưởng đội bóng chày của mình hay là một nhà lãnh đạo trên trường quốc tế, họ đều xuất sắc trong việc tham gia vào cuộc trò chuyện, thu hút sự chú ý của mọi người và tập hợp mọi người lại với nhau vì một mục tiêu chung. Tính cách ENFJ cũng có khả năng đồng cảm sâu sắc, thường khiến những người họ gặp cảm thấy thực sự được nhìn nhận và coi trọng, từ đó củng cố thêm sức hấp dẫn tự nhiên của họ.', 'Không thực tế – Nhiều ENFJ tự gây áp lực cho bản thân để sửa chữa mọi sai lầm mà họ gặp phải. Nhưng dù những tính cách này có cố gắng đến đâu, họ cũng không thể giải quyết được mọi vấn đề của thế giới. Nếu họ không cẩn thận, họ có thể tự làm mình quá sức – và không thể giúp đỡ bất kỳ ai. \nQuá lý tưởng – Những người có tính cách ENFJ có xu hướng có những ý tưởng rõ ràng về điều gì đúng và điều gì sai. Họ thường nghĩ rằng mọi người đều chia sẻ những nguyên tắc cơ bản này – hoặc ít nhất là mọi người nên chia sẻ những nguyên tắc này. Vì vậy, ENFJ có thể thực sự bị sốc khi mọi người vi phạm các giá trị cốt lõi của họ, chẳng hạn như sự thật hoặc công lý. \nCondescending – Những người có kiểu tính cách này thích dạy người khác, đặc biệt là về các nguyên nhân và niềm tin mà họ rất coi trọng. Nhưng đôi khi, những nỗ lực “khai sáng” người khác của ENFJ có thể bị coi là hạ cố – ​​không may là đây không phải là chiến lược hiệu quả nhất để thuyết phục người khác. \nMạnh mẽ – Khi nói đến việc tự cải thiện, ENFJ hiếm khi thiếu năng lượng hoặc quyết tâm. Nhưng họ có thể không nhận ra rằng không phải ai cũng có những phẩm chất này. Đôi khi, những tính cách này có thể thúc đẩy người khác thực hiện những thay đổi mà họ chưa sẵn sàng – hoặc đơn giản là không muốn thực hiện ngay từ đầu. \nQuá đồng cảm – Lòng trắc ẩn là một trong những điểm mạnh nhất của loại tính cách này. Nhưng ENFJ có xu hướng coi vấn đề của người khác là của mình – một thói quen có thể khiến họ kiệt sức về mặt cảm xúc và thể chất.'),
('ENFP', 'Campaigner', 'Là một loại tính cách có các đặc điểm Hướng ngoại, Trực giác, Cảm xúc và Triển vọng. Những người này có xu hướng nắm bắt những ý tưởng và hành động lớn phản ánh cảm giác hy vọng và thiện chí của họ đối với người khác. Năng lượng sôi nổi của họ có thể chảy theo nhiều hướng.', 'Tò mò – Những người có kiểu tính cách ENFP (Người vận động) có thể tìm thấy vẻ đẹp và sự hấp dẫn ở hầu hết mọi thứ. Giàu trí tưởng tượng và cởi mở, những tính cách ENFP không ngại mạo hiểm vượt ra khỏi vùng an toàn của mình để tìm kiếm những ý tưởng, trải nghiệm và cuộc phiêu lưu mới. Hơn nữa, sự tò mò của họ không chỉ đơn thuần là tìm kiếm sự mới lạ. Họ cũng có mong muốn sâu sắc là hiểu cách mọi thứ vận hành và tại sao chúng lại như vậy. \nNhạy bén – Đối với những người có loại tính cách này, không ai là không quan trọng – điều này có thể giải thích tại sao họ có thể nhận ra ngay cả những thay đổi nhỏ nhất trong tâm trạng hoặc biểu cảm của người khác. Vì họ rất nhạy cảm với cảm xúc và nhu cầu của người khác, ENFP có thể tận dụng tối đa bản chất chu đáo, ân cần của mình. \nNhiệt tình – Khi có điều gì đó thu hút trí tưởng tượng và truyền cảm hứng cho họ, những người có tính cách ENFP muốn chia sẻ điều đó với bất kỳ ai chịu lắng nghe. Và họ cũng háo hức lắng nghe ý tưởng và quan điểm của người khác – ngay cả khi những suy nghĩ đó hoàn toàn khác biệt so với suy nghĩ của họ. \nNgười giao tiếp tuyệt vời – Những người có kiểu tính cách ENFP luôn có nhiều điều để nói, nhưng họ cũng có thể là người lắng nghe chu đáo. Điều này mang lại cho họ khả năng gần như vô song trong việc trò chuyện tích cực và thú vị với mọi loại người – ngay cả những người không đặc biệt hòa đồng hoặc dễ chịu. \nDễ tính – ENFP có thể sống vì những cuộc trò chuyện sâu sắc, có ý nghĩa, nhưng họ cũng có thể tự phát và vui vẻ. Những tính cách này biết cách tìm thấy niềm vui và sự thích thú trong khoảnh khắc hiện tại – và ít điều gì mang lại cho họ nhiều niềm vui hơn là chia sẻ niềm vui của mình với người khác. \nTốt bụng và tích cực – Tất cả những điểm mạnh này kết hợp lại tạo nên một người ấm áp và dễ gần, có tinh thần vị tha và tính tình thân thiện. ENFP cố gắng hòa đồng với hầu hết mọi người, và vòng tròn quen biết và bạn bè của họ thường trải dài khắp nơi.', 'Làm hài lòng mọi người – Hầu hết những người có kiểu tính cách ENFP đều không thoải mái với viễn cảnh bị ghét bỏ. Để duy trì hòa bình, họ có thể thỏa hiệp về những điều quan trọng với họ hoặc cho phép người khác đối xử tệ với họ. Và khi họ không thể thuyết phục được ai đó, họ có thể mất ngủ khi cố gắng tìm ra cách giải quyết.\nKhông tập trung – Sự phấn khích của một dự án mới – đặc biệt là dự án liên quan đến việc hợp tác với người khác – có thể phát huy tối đa những tính cách này. Nhưng ENFP được biết đến là có sở thích luôn thay đổi, nghĩa là họ có thể thấy khó khăn trong việc duy trì tính kỷ luật và sự tập trung trong thời gian dài.\nThiếu tổ chức – Sự tập trung của ENFP vào bức tranh toàn cảnh và tình yêu khám phá những ý tưởng và trải nghiệm mới đôi khi có thể làm lu mờ sự chú ý của họ vào các vấn đề thực tế hàng ngày. Cụ thể, những người có loại tính cách này có thể cố gắng tránh các công việc thường ngày mà họ coi là nhàm chán như công việc nhà, bảo trì cơ bản hoặc giấy tờ. Cảm giác thiếu tổ chức có thể trở thành nguồn căng thẳng chính trong cuộc sống của họ.\nQuá dễ dãi – Những người có tính cách ENFP cảm thấy được kêu gọi nâng đỡ người khác, và họ có thể thấy mình nói đồng ý bất cứ khi nào có ai đó yêu cầu họ hướng dẫn hoặc giúp đỡ. Nhưng trừ khi họ đặt ra ranh giới, ngay cả những người năng nổ nhất trong số họ cũng có thể trở nên quá cam kết, với quá ít thời gian và năng lượng để giải quyết những nhu cầu thiết yếu trong cuộc sống của chính họ.\nQuá lạc quan – Lạc quan có thể là một trong những điểm mạnh chính của loại tính cách này. Nhưng quan điểm lạc quan của ENFP có thể khiến họ đưa ra những quyết định có ý định tốt nhưng ngây thơ, chẳng hạn như tin tưởng những người không giành được lòng tin của họ. Đặc điểm này cũng có thể khiến những tính cách này khó chấp nhận những sự thật khó khăn nhưng cần thiết – và khó chia sẻ những sự thật đó với người khác.\nKhông ngừng nghỉ – Với thái độ tích cực, lạc quan, ENFP hiếm khi tỏ ra buồn bã hay không hài lòng ở bên ngoài. Nhưng chủ nghĩa lý tưởng bên trong của họ có thể khiến họ cảm thấy khó chịu rằng một số khía cạnh chính trong cuộc sống của họ không đủ tốt – cho dù đó là công việc, cuộc sống gia đình hay các mối quan hệ của họ.'),
('ENTJ', 'Commander', '(Chỉ huy) là một loại tính cách có các đặc điểm Hướng ngoại , Trực giác , Tư duy và Phán đoán . Họ là những người quyết đoán, thích động lực và thành tích. Họ thu thập thông tin để xây dựng tầm nhìn sáng tạo của mình nhưng hiếm khi do dự quá lâu trước khi hành động.', 'Hiệu quả – Những người có kiểu tính cách ENTJ (Người chỉ huy) coi sự kém hiệu quả không chỉ là một vấn đề riêng biệt mà còn là thứ lấy đi thời gian và năng lượng của họ khỏi mọi mục tiêu tương lai, một sự phá hoại tinh vi bao gồm sự phi lý và lười biếng. Họ sẽ loại bỏ tận gốc hành vi như vậy ở bất cứ nơi nào họ đến. \nNăng động – Những người có tính cách ENTJ tiếp cận trách nhiệm của mình với sự hăng hái và động lực. Đây không phải là kiểu người né tránh lịch trình bận rộn hoặc những thách thức phức tạp. Trên thực tế, họ càng hoàn thành được nhiều việc trong ngày thì họ càng cảm thấy tràn đầy năng lượng và họ sẽ vui vẻ chia sẻ sự nhiệt tình lan tỏa này đối với năng suất với những người xung quanh. \nTự tin – ENTJ thường bày tỏ quan điểm của mình, tin tưởng vào khả năng hoàn thành công việc và tin vào năng lực lãnh đạo của mình. Họ là kiểu tính cách có nhiều khả năng nói rằng họ cảm thấy tự tin khi đối mặt với những thách thức hàng ngày của cuộc sống. \nÝ chí mạnh mẽ – Những người có kiểu tính cách ENTJ không bỏ cuộc khi gặp khó khăn. Thay vào đó, họ không ngừng nỗ lực để đạt được mục tiêu của mình. Không gì thỏa mãn họ bằng việc hoàn thành điều họ đã đặt ra trong đầu. \nNhững người tư duy chiến lược – Những người có tính cách ENTJ là ví dụ điển hình cho sự khác biệt giữa việc quản lý khủng hoảng từng khoảnh khắc và việc điều hướng những thách thức và các bước của một kế hoạch lớn hơn. Họ được biết đến với việc xem xét mọi góc độ của một vấn đề và không chỉ giải quyết các vấn đề nhất thời mà còn thúc đẩy toàn bộ dự án tiến lên với các giải pháp của họ. \nCó sức lôi cuốn và truyền cảm hứng – Tất cả những điểm mạnh được liệt kê ở trên kết hợp lại để tạo nên những cá nhân có khả năng truyền cảm hứng và tiếp thêm sinh lực cho người khác, và điều này giúp ENTJ đạt được những mục tiêu đầy tham vọng nhất của họ, những mục tiêu mà họ không bao giờ có thể hoàn thành một mình.', 'Bướng bỉnh và thống trị – Đôi khi tất cả sự tự tin và ý chí này có thể đi quá xa. Tính cách ENTJ có khả năng bảo thủ, cố gắng giành chiến thắng trong mọi cuộc tranh luận và chỉ thúc đẩy tầm nhìn của mình mà không cân nhắc đến ý kiến ​​của người khác. \nKhông khoan dung – “Theo cách của tôi hoặc là đường cao tốc” – Những người có kiểu tính cách ENTJ nổi tiếng là không ủng hộ những ý tưởng làm sao lãng mục tiêu chính của họ và thậm chí còn không ủng hộ những ý tưởng dựa trên những cân nhắc về mặt cảm xúc. Họ sẽ không ngần ngại làm rõ sự thật đó với những người xung quanh. \nThiếu kiên nhẫn – Một số người cần nhiều thời gian để suy nghĩ hơn những người khác – một sự chậm trễ không thể chịu đựng được đối với những người có tính cách ENTJ suy nghĩ nhanh. Họ có thể hiểu sai sự suy ngẫm là sự ngu ngốc hoặc sự thờ ơ trong sự vội vã của họ – một sai lầm khủng khiếp. \nKiêu ngạo – ENTJ tôn trọng những suy nghĩ nhanh chóng và niềm tin vững chắc và có thể coi thường những người không phù hợp. Đây là một thách thức đối với hầu hết các loại tính cách khác, những người có lẽ không nhút nhát theo cách riêng của họ nhưng sẽ có vẻ như vậy bên cạnh loại đôi khi áp đặt này. \nXử lý cảm xúc kém – Đôi khi, tính cách ENTJ có thể xa cách với cách thể hiện cảm xúc của chính mình và đôi khi hoàn toàn coi thường người khác. Những người có kiểu tính cách này thường chà đạp cảm xúc của người khác, vô tình làm tổn thương đối tác và bạn bè của họ, đặc biệt là trong những tình huống căng thẳng về mặt cảm xúc. \nLạnh lùng và tàn nhẫn – Sự ám ảnh về hiệu quả và niềm tin không lay chuyển vào giá trị của chủ nghĩa duy lý, đặc biệt là trong công việc, khiến ENTJ khá vô cảm khi theo đuổi mục tiêu của mình, coi nhẹ hoàn cảnh cá nhân, sự nhạy cảm và sở thích là phi lý hoặc không liên quan.'),
('ENTP', 'Debater', 'Là một loại tính cách có các đặc điểm hướng ngoại , trực giác , tư duy và triển vọng . Họ có xu hướng táo bạo và sáng tạo, phân tích và xây dựng lại các ý tưởng với sự nhanh nhẹn về mặt tinh thần. Họ theo đuổi mục tiêu của mình một cách mạnh mẽ bất chấp mọi sự kháng cự mà họ có thể gặp phải.', 'Có hiểu biết – Những người có kiểu tính cách ENTP (Người tranh luận) hiếm khi bỏ lỡ cơ hội tốt để học một cái gì đó mới, đặc biệt là các khái niệm trừu tượng. Thông tin này thường không được tiếp thu cho bất kỳ mục đích có kế hoạch nào như khi học tập chuyên sâu – họ chỉ thấy nó hấp dẫn. \nNgười suy nghĩ nhanh – Những người có tính cách ENTP có đầu óc cực kỳ linh hoạt và có thể chuyển từ ý tưởng này sang ý tưởng khác mà không tốn nhiều công sức, sử dụng kiến ​​thức tích lũy được để chứng minh quan điểm của mình hoặc của đối thủ, tùy theo họ thấy phù hợp. Trên thực tế, ENTP là kiểu tính cách có khả năng nhanh chóng chuyển từ chủ đề này sang chủ đề khác khi họ bị cuốn hút vào một cuộc trò chuyện, không bao giờ bỏ lỡ một nhịp nào. \nBản gốc – Ít gắn bó với truyền thống, những người ENTP có thể loại bỏ các hệ thống và phương pháp hiện có và tập hợp các ý tưởng khác biệt từ kho kiến ​​thức sâu rộng của họ để hình thành nên những ý tưởng mới táo bạo. Nếu được trình bày với các vấn đề mang tính hệ thống, dai dẳng và được trao quyền giải quyết, họ sẽ phản ứng với sự vui vẻ không hề nao núng. \nNhững người động não tuyệt vời – Không gì thú vị bằng việc phân tích các vấn đề từ mọi góc độ để tìm ra giải pháp tốt nhất đối với những người có tính cách ENTP. Kết hợp kiến ​​thức và sự sáng tạo của mình để đưa ra mọi khía cạnh của vấn đề đang được thảo luận, từ chối không hối hận các lựa chọn không hiệu quả và đưa ra ngày càng nhiều khả năng hơn, ENTP là người không thể thay thế trong các buổi động não. \nCó sức lôi cuốn – Những người có kiểu tính cách ENTP có cách dùng từ và sự dí dỏm khiến người khác thấy thú vị. Sự tự tin, suy nghĩ nhanh và khả năng kết nối những ý tưởng có vẻ tách biệt theo những cách mới lạ tạo nên phong cách giao tiếp quyến rũ, thậm chí là giải trí và cung cấp thông tin cùng một lúc. \nTràn đầy năng lượng – Khi được kết hợp những đặc điểm này để xem xét một vấn đề thú vị, tính cách của ENTP có thể thực sự gây ấn tượng bởi sự nhiệt tình và năng lượng của họ, không ngại dành nhiều ngày đêm để tìm ra giải pháp.', 'Rất hay tranh luận – Nếu có điều gì mà ENTP thích, thì đó là bài tập tinh thần khi tranh luận về một ý tưởng. Những kiểu tính cách hướng đến sự đồng thuận hơn hiếm khi đánh giá cao sức mạnh mà những tính cách này phá bỏ niềm tin và phương pháp của họ, đôi khi dẫn đến rất nhiều căng thẳng. \nVô cảm – Vì quá lý trí, ENTP thường đánh giá sai cảm xúc của người khác và đẩy cuộc tranh luận của họ vượt quá mức độ chịu đựng của người khác. Những người có kiểu tính cách này cũng không thực sự coi các điểm cảm xúc là hợp lệ trong các cuộc tranh luận như vậy, điều này làm cho vấn đề trở nên nghiêm trọng hơn rất nhiều. \nKhông khoan dung – Trừ khi mọi người có thể bảo vệ ý tưởng của mình trong một vòng đấu trí, ENTP có thể sẽ bác bỏ không chỉ ý tưởng mà còn cả chính con người. Hoặc là một đề xuất có thể chịu được sự giám sát hợp lý, hoặc là không đáng bận tâm. \nCó thể thấy khó tập trung – Sự linh hoạt cho phép những người có tính cách ENTP đưa ra những kế hoạch và ý tưởng độc đáo như vậy khiến họ thường xuyên thích nghi lại với những kế hoạch và ý tưởng hoàn hảo hoặc thậm chí từ bỏ chúng hoàn toàn khi sự phấn khích ban đầu giảm dần và những suy nghĩ mới xuất hiện. Sự nhàm chán đến quá dễ dàng đối với những kiểu người năng động này và những suy nghĩ mới là giải pháp, mặc dù không phải lúc nào cũng hữu ích. \nKhông thích các vấn đề thực tế – ENTP, với sở thích về tính tự phát và mới lạ, thường gặp khó khăn với tổ chức, cấu trúc và mọi thứ thực tế. Những người có loại tính cách này quan tâm đến những gì có thể – các khái niệm dễ uốn nắn như ý tưởng và kế hoạch có thể được điều chỉnh và tranh luận. Khi nói đến các chi tiết khó và việc thực hiện hàng ngày, những tính cách này có xu hướng mất hứng thú, thường là hậu quả của việc các kế hoạch của họ không bao giờ được thực hiện.'),
('ESFJ', 'Consul', 'Là một loại tính cách có các đặc điểm Hướng ngoại , Quan sát , Cảm xúc và Phán đoán . Họ chú ý và tập trung vào con người, và họ thích tham gia vào cộng đồng xã hội của mình. Những thành tựu của họ được hướng dẫn bởi các giá trị quyết định, và họ sẵn sàng hướng dẫn người khác.', 'Kỹ năng thực hành mạnh mẽ – Những người có loại tính cách ESFJ (Consuls) là những người quản lý tuyệt vời các công việc hàng ngày và bảo trì thường xuyên, thích đảm bảo rằng những người thân thiết với họ được chăm sóc tốt. \nÝ thức mạnh mẽ về bổn phận – ESFJ có ý thức trách nhiệm mạnh mẽ và luôn phấn đấu để hoàn thành nghĩa vụ của mình. Điều này thường khiến họ chăm chỉ và hiệu quả trong công việc và rất trung thành trong các mối quan hệ cá nhân. Họ cũng có xu hướng duy trì các truyền thống mà họ trân trọng bằng sự siêng năng và nhất quán. \nRất trung thành – Đánh giá rất cao sự ổn định và an ninh, ESFJ luôn muốn duy trì nguyên trạng, điều này khiến họ trở thành những đối tác và nhân viên cực kỳ trung thành và đáng tin cậy. Là trụ cột thực sự của bất kỳ nhóm nào mà họ tham gia – dù là gia đình hay câu lạc bộ cộng đồng – những người có kiểu tính cách này luôn có thể được tin tưởng là sẽ xuất hiện và giúp đỡ. \nNhạy cảm và Ấm áp – ESFJ tự nhiên mang đến cho người khác sự an toàn và ổn định mà bản thân họ muốn và cần. Họ có xu hướng tìm kiếm sự hòa hợp và quan tâm sâu sắc đến cảm xúc của người khác, cẩn thận không xúc phạm hoặc làm tổn thương người khác. Họ là những người chơi đồng đội mạnh mẽ và các tình huống đôi bên cùng có lợi là thứ tạo nên nụ cười của họ. \nTốt trong việc kết nối với người khác – Những phẩm chất này kết hợp lại với nhau khiến tính cách ESFJ trở nên hòa đồng, tự tin và được mọi người yêu mến. Họ có nhu cầu mạnh mẽ về “thuộc về” và không ngại trò chuyện xã giao hoặc tuân theo các tín hiệu xã hội để giúp họ đóng vai trò tích cực trong cộng đồng của mình.', 'Lo lắng về địa vị xã hội của mình – ESFJ có thể trở nên bận tâm với địa vị xã hội và ảnh hưởng, điều này ảnh hưởng đến nhiều quyết định mà họ đưa ra, có khả năng hạn chế sự sáng tạo và cởi mở của họ. Họ có thể gắn quá nhiều bản sắc của mình vào kỳ vọng của người khác, đánh mất cảm giác về bản thân. \nKhông linh hoạt – Những người có tính cách ESFJ rất coi trọng những gì được xã hội chấp nhận và có thể rất thận trọng, thậm chí chỉ trích, bất cứ điều gì không theo quy ước hoặc nằm ngoài xu hướng chính thống. Họ cũng có thể không muốn bước ra khỏi vùng an toàn của mình, thường là vì sợ (hoặc chỉ là tỏ ra) khác biệt. \nDễ bị chỉ trích – Có thể đặc biệt khó khăn để thay đổi những khuynh hướng này vì chúng rất ghét xung đột. Tính cách ESFJ có thể trở nên rất phòng thủ và tổn thương nếu ai đó, đặc biệt là người thân thiết với họ, chỉ trích thói quen, niềm tin hoặc truyền thống của họ. \nThường quá cần thiết – ESFJ cần nghe và thấy rất nhiều sự đánh giá cao. Nếu những nỗ lực của họ không được chú ý, những cá nhân này có thể bắt đầu câu lời khen để cố gắng đảm bảo rằng họ được coi trọng như thế nào. \nQuá vô tư – Mặt khác, tính cách ESFJ đôi khi cố gắng khẳng định giá trị của mình bằng sự quan tâm quá mức, điều này có thể nhanh chóng lấn át những người không cần đến nó, khiến họ cuối cùng trở nên không được chào đón. Hơn nữa, họ thường bỏ bê nhu cầu của chính mình trong quá trình này.'),
('ESFP', 'Entertainer', 'Là một loại tính cách có các đặc điểm Hướng ngoại , Quan sát , Cảm xúc và Thăm dò . Những người này thích những trải nghiệm sôi động, hăng hái tham gia vào cuộc sống và thích thú khi khám phá những điều chưa biết. Họ có thể rất hòa đồng, thường khuyến khích người khác tham gia các hoạt động chung.', 'Táo bạo – Những người có kiểu tính cách ESFP (Người giải trí) không được biết đến là người hay kìm nén. Muốn trải nghiệm mọi thứ cần trải nghiệm, họ không ngại bước ra khỏi vùng an toàn của mình khi không ai khác sẵn lòng. \nOriginal – Truyền thống và kỳ vọng là thứ yếu đối với loại tính cách này, nếu có cân nhắc. ESFP thích thử nghiệm những phong cách mới và liên tục tìm ra những cách mới để nổi bật giữa đám đông. Không dừng lại ở trang phục đơn thuần, họ còn đưa sự sáng tạo về phong cách vào cả lời nói và hành động của mình. Mỗi ngày là một buổi biểu diễn, và họ thích trình diễn. \nTích cực và Nhiệt tình – ESFP được biết đến với sự say mê cuộc sống và nhiệt huyết lan tỏa. Họ tự nhiên tỏa ra sự tích cực làm bừng sáng cả căn phòng và thu hút mọi người, và điều này thường chuyển thành sức hút hấp dẫn có thể truyền cảm hứng cho những người xung quanh. Họ có xu hướng tiếp cận cuộc sống và vô số trải nghiệm với tâm trí cởi mở, sẵn sàng đắm mình vào những điều mới mẻ, thú vị và bất ngờ. \nThực hành và quan sát – Đối với ESFP, thế giới có nghĩa là để cảm nhận và trải nghiệm. Họ thích nhìn và làm hơn là nói triết lý về “nếu như”. Với tất cả sự tập trung này vào hiện tại, vào hành động và hành động, thì có lý khi tính cách ESFP là những người bẩm sinh khi nói đến việc nhận thấy những điều thực tế, hữu hình và những thay đổi. \nKỹ năng giao tiếp tuyệt vời – Hơn cả những thứ khác, ESFP thích chú ý đến mọi người. Họ nói nhiều, dí dỏm và hầu như không bao giờ hết chủ đề để thảo luận. Đối với những tính cách này, hạnh phúc và sự hài lòng bắt nguồn từ thời gian họ dành cho những người mà họ thích ở bên.', 'Nhạy cảm – ESFP có cảm xúc mạnh mẽ và thường dễ bị chỉ trích – họ có thể cảm thấy như mình bị dồn vào chân tường, đôi khi phản ứng không tốt. Đây có lẽ là điểm yếu lớn nhất của họ, vì điều này khiến họ rất khó giải quyết bất kỳ điểm yếu nào khác được đưa ra ánh sáng. \nKhông thích xung đột – Những người có tính cách ESFP đôi khi bỏ qua và tránh xung đột hoàn toàn. Họ có xu hướng nói và làm những gì cần thiết để thoát khỏi những tình huống như vậy, sau đó chuyển sang điều gì đó vui vẻ hơn. \nDễ chán – Nếu không có sự phấn khích liên tục, những người có kiểu tính cách này thường tìm cách tự tạo ra nó. Hành vi mạo hiểm, tự nuông chiều bản thân và những thú vui nhất thời hơn là những kế hoạch dài hạn là tất cả những thứ mà ESFP thường xuyên gặp phải. \nNgười lập kế hoạch dài hạn kém – Những người có tính cách ESFP hiếm khi lập kế hoạch chi tiết cho tương lai. Với họ, mọi thứ đến như chúng đến, và họ thường không bận tâm đến việc dành thời gian để vạch ra các bước và hậu quả, tin rằng chúng có thể thay đổi bất cứ lúc nào. \nKhông tập trung – Bất cứ điều gì đòi hỏi sự cống hiến và tập trung lâu dài đều là một thách thức đặc biệt đối với những người có kiểu tính cách ESFP. Trong học thuật, các môn học dày đặc, không thay đổi khó hơn nhiều so với các môn học năng động, dễ liên hệ hơn. Bí quyết đối với họ là tìm thấy niềm vui hàng ngày trong các mục tiêu lớn hơn và kiên trì với những việc tẻ nhạt phải làm.'),
('ESTJ', 'Excutive', 'Là một loại tính cách có các đặc điểm Hướng ngoại , Quan sát , Tư duy và Phán đoán . Họ sở hữu sức mạnh to lớn, kiên quyết tuân theo phán đoán hợp lý của riêng mình. Họ thường đóng vai trò là lực lượng ổn định trong số những người khác, có thể đưa ra định hướng vững chắc trong nghịch cảnh.', 'Tận tụy – Hoàn thành mọi việc là nghĩa vụ đạo đức đối với những người có kiểu tính cách ESTJ (Giám đốc điều hành). Nhiệm vụ không chỉ đơn giản là bị bỏ dở vì chúng trở nên khó khăn hoặc nhàm chán. Thường từ chối cắt xén hoặc trốn tránh trách nhiệm, họ thể hiện sự tận tụy của mình thông qua cam kết không lay chuyển đối với các tiêu chuẩn cao. Trên thực tế, họ có xu hướng phấn đấu để đạt được sự hoàn hảo trong hầu hết mọi thứ mà họ đảm nhận trong cuộc sống. \nÝ chí mạnh mẽ – Ý chí mạnh mẽ giúp sự cống hiến này trở nên khả thi, và ESTJ không từ bỏ niềm tin của mình chỉ vì sự phản đối đơn giản. Họ bảo vệ ý tưởng và nguyên tắc của mình một cách kiên trì và phải được chứng minh rõ ràng và dứt khoát là sai thì lập trường của họ mới có thể thay đổi. \nTrực tiếp và trung thực – ESTJ tin vào sự thật hơn nhiều so với những ý tưởng hoặc quan điểm trừu tượng. Những tuyên bố và thông tin thẳng thắn là vua, và những người có loại tính cách này đáp lại sự trung thực (cho dù họ có muốn hay không). \nTrung thành, Kiên nhẫn và Đáng tin cậy – ESTJ làm việc để minh họa cho sự trung thực và đáng tin cậy, coi sự ổn định và an ninh là rất quan trọng. Khi ESTJ nói họ sẽ làm điều gì đó, họ giữ lời hứa, khiến họ trở thành những thành viên rất có trách nhiệm trong gia đình, công ty và cộng đồng của họ. \nTận hưởng việc tạo ra trật tự – Sự hỗn loạn khiến mọi thứ trở nên khó lường, và những thứ không thể đoán trước không thể tin tưởng được khi chúng cần thiết nhất. Với suy nghĩ này, ESTJ cố gắng tạo ra trật tự và an ninh trong môi trường của họ bằng cách thiết lập các quy tắc, cấu trúc và vai trò rõ ràng. Họ có xu hướng thể hiện nhu cầu về trật tự này trong cuộc sống gia đình của họ, vì họ là kiểu tính cách có nhiều khả năng có lịch trình rất có cấu trúc bao gồm thời gian cố định để thức dậy và đi ngủ. \nNhà tổ chức xuất sắc – Cam kết với sự thật và các tiêu chuẩn rõ ràng khiến ESTJ trở thành những nhà lãnh đạo có năng lực và tự tin. Những người có loại tính cách này không gặp vấn đề gì khi phân chia nhiệm vụ và trách nhiệm cho người khác một cách công bằng và khách quan, khiến họ trở thành những nhà quản lý xuất sắc.', 'Không linh hoạt và cứng đầu – Vấn đề với việc quá tập trung vào những gì hiệu quả là họ thường bỏ qua những gì có thể hiệu quả hơn. Mọi thứ đều là ý kiến ​​cho đến khi được chứng minh, và tính cách ESTJ không muốn tin tưởng một ý kiến ​​đủ lâu để nó có cơ hội đó. \nKhông thoải mái với sự thay đổi – ESTJ là những người tuân thủ mạnh mẽ truyền thống. Khi đột nhiên bị buộc phải thử các giải pháp chưa được kiểm chứng, họ trở nên không thoải mái và căng thẳng. Những ý tưởng mới cho thấy phương pháp của họ không đủ tốt và việc từ bỏ những gì đã luôn hiệu quả trước đây để ủng hộ một thứ có thể vẫn thất bại sẽ gây nguy hiểm cho hình ảnh đáng tin cậy của họ. \nPhán đoán – Những người có kiểu tính cách ESTJ có niềm tin mạnh mẽ về điều gì là đúng, sai và được xã hội chấp nhận, và sự ép buộc tạo ra trật tự của họ thường mở rộng đến mọi thứ và mọi người, bỏ qua khả năng có nhiều hơn một cách đúng đắn để hoàn thành mọi việc. Họ không ngần ngại cho những người họ không đồng tình biết suy nghĩ của họ, coi đó là nhiệm vụ của họ để sắp xếp mọi thứ đúng đắn. \nQuá tập trung vào địa vị xã hội – ESTJ tự hào về sự tôn trọng của bạn bè, đồng nghiệp và cộng đồng, và mặc dù khó thừa nhận, họ rất quan tâm đến dư luận. Những tính cách này có thể bị cuốn vào việc đáp ứng kỳ vọng của người khác, không giải quyết được nhu cầu của chính mình. \nKhó thư giãn – Nhu cầu được tôn trọng này thúc đẩy nhu cầu duy trì phẩm giá của họ, điều này có thể khiến ESTJ khó có thể thoải mái và thư giãn vì có nguy cơ làm hỏng mọi chuyện hoặc trở nên ngớ ngẩn, ngay cả khi chỉ để vui vẻ. \nKhó khăn trong việc thể hiện cảm xúc – Những người có kiểu tính cách ESTJ quá chú tâm vào sự thật và những phương pháp hiệu quả nhất đến nỗi họ quên mất việc nghĩ đến điều khiến người khác hạnh phúc – họ quên mất việc thể hiện cảm xúc và sự đồng cảm. Ví dụ, một chuyến đi vòng có thể đẹp đến ngỡ ngàng và là niềm vui cho gia đình, nhưng kiểu tính cách này có thể chỉ thấy hậu quả là đến đích muộn một giờ, làm tổn thương những người thân yêu của họ bằng cách từ chối ý tưởng đó quá gay gắt.'),
('ESTP', 'Entrepreneur', 'Là một loại tính cách có các đặc điểm Hướng ngoại , Quan sát , Tư duy và Triển vọng . Họ có xu hướng năng động và hướng đến hành động, khéo léo điều hướng bất cứ điều gì trước mắt họ. Họ thích khám phá những cơ hội trong cuộc sống, cho dù là giao lưu với người khác hay theo đuổi những mục tiêu cá nhân hơn.', 'Táo bạo – Những người có tính cách ESTP (Doanh nhân) tràn đầy sức sống và năng lượng. Không có niềm vui nào lớn hơn đối với họ là vượt qua ranh giới, khám phá và áp dụng các công cụ và ý tưởng mới. \nLý trí và Thực tế – Những tính cách này yêu thích kiến ​​thức và triết lý, nhưng không phải vì lợi ích của riêng họ. Điều thú vị đối với ESTP là tìm ra những ý tưởng có thể thực hiện được và đào sâu vào chi tiết để họ có thể áp dụng chúng. Nếu một cuộc thảo luận hoàn toàn tùy ý, sẽ có những cách sử dụng thời gian của họ tốt hơn. \nBản gốc – Kết hợp sự táo bạo và thực tế, tính cách ESTP thích thử nghiệm những ý tưởng và giải pháp mới. Họ kết hợp mọi thứ theo cách mà không ai khác nghĩ đến. \nNhạy bén – Tính độc đáo của họ được hỗ trợ bởi khả năng nhận ra khi mọi thứ thay đổi – và khi nào họ cần thay đổi! Những thay đổi nhỏ trong thói quen và ngoại hình nổi bật với ESTP, và họ sử dụng những quan sát này để giúp tạo kết nối với người khác. \nTrực tiếp – Khả năng nhận thức của ESTP không được sử dụng cho trò chơi trí tuệ – họ thích giao tiếp rõ ràng, với những câu hỏi và câu trả lời trực tiếp và thực tế. Những gì bạn thấy là những gì bạn nhận được với loại tính cách này. \nHòa đồng – Tất cả những phẩm chất này kết hợp lại với nhau để tạo nên những người có tính cách ESTP là những người lãnh đạo nhóm tự nhiên. Đây không phải là điều mà họ chủ động tìm kiếm – họ chỉ có năng khiếu tận dụng tuyệt vời các tương tác xã hội và cơ hội kết nối.', 'Vô cảm – Cảm xúc và tình cảm đứng sau sự thật và chủ nghĩa thực dụng đối với những người có kiểu tính cách ESTP. Những tình huống đầy cảm xúc là những chuyện khó xử, không thoải mái và sự trung thực thẳng thắn không giúp ích gì ở đây. Họ thường gặp nhiều khó khăn trong việc thừa nhận và thể hiện cảm xúc của chính mình, thích không đắm chìm vào những chủ đề nặng nề hoặc quá khứ quá lâu. \nThiếu kiên nhẫn – ESTP di chuyển theo tốc độ của riêng mình để giữ cho bản thân được giải trí. Chậm lại vì người khác “không hiểu” hoặc phải tập trung vào một chi tiết duy nhất quá lâu là điều cực kỳ khó khăn đối với họ. \nBốc đồng – Sự thiếu kiên nhẫn có thể khiến ESTP dấn thân vào vùng đất chưa được khám phá mà không nghĩ đến hậu quả lâu dài. Những tính cách này đôi khi cố tình chống lại sự nhàm chán bằng rủi ro bổ sung. \nKhông có cấu trúc – ESTP nhìn thấy cơ hội – để giải quyết vấn đề, để tiến bộ, để vui vẻ – và nắm bắt thời cơ, thường bỏ qua các quy tắc và kỳ vọng xã hội trong quá trình này. Điều này có thể khiến họ hoàn thành mọi việc, nhưng cũng có thể tạo ra hậu quả xã hội bất ngờ nếu nó làm tổn thương những kiểu tính cách truyền thống hơn. \nCó thể bỏ lỡ bức tranh toàn cảnh – Sống trong hiện tại có thể khiến ESTP bỏ lỡ cả khu rừng vì những cái cây. Những người có kiểu tính cách này thích giải quyết vấn đề ngay tại đây và ngay bây giờ – có lẽ là quá nhiều. Mọi bộ phận của một dự án đều có thể hoàn hảo, nhưng dự án vẫn sẽ thất bại nếu những bộ phận đó không ăn khớp với nhau. \nThách thức – Kiểu người này không thích bị gò bó. Sự lặp lại, các quy tắc cứng nhắc và ngồi im lặng khi bị thuyết giảng là những điều mà những người có tính cách ESTP thường không thích. Họ hướng đến hành động và thực hành. Các môi trường như trường học và nhiều công việc cấp độ đầu vào có thể rất tẻ nhạt đến mức không thể chịu đựng được, đòi hỏi những nỗ lực phi thường từ ESTP để duy trì sự tập trung đủ lâu để đạt được các vị trí tự do hơn.'),
('INFJ', 'Advocate', 'Là một loại tính cách có các đặc điểm Hướng nội, Trực giác, Cảm xúc và Phán đoán. Họ có xu hướng tiếp cận cuộc sống với sự chu đáo và trí tưởng tượng sâu sắc. Tầm nhìn bên trong, các giá trị cá nhân và phiên bản nhân văn nguyên tắc, lặng lẽ hướng dẫn họ trong mọi việc.', 'Thấu hiểu – Những người có kiểu tính cách INFJ (Người ủng hộ) biết rất rõ rằng vẻ bề ngoài có thể gây hiểu lầm. Những tính cách này cố gắng vượt qua sự hời hợt và tìm kiếm những sự thật sâu sắc hơn trong cuộc sống. Điều này có thể mang lại cho họ khả năng gần như kỳ lạ trong việc hiểu được động cơ, cảm xúc và nhu cầu thực sự của mọi người. \nNguyên tắc – INFJ có xu hướng có niềm tin và giá trị mạnh mẽ, đặc biệt là khi nói đến vấn đề đạo đức. Họ coi nói dối là sai về mặt đạo đức và họ nỗ lực hết sức để không lừa dối người khác – ngay cả khi họ có thể được hưởng lợi trực tiếp từ việc làm đó. Trên thực tế, họ là kiểu tính cách ít có khả năng nói rằng đôi khi họ lợi dụng người khác. \nĐam mê – Những người có tính cách INFJ khao khát một mục đích sống. Thay vì sống theo kiểu máy lái hay bám chặt vào hiện trạng, họ muốn theo đuổi ước mơ của mình. Đây không phải là kiểu tính cách ngại ngùng khi nhắm đến những vì sao – họ tràn đầy năng lượng và đam mê với vẻ đẹp trong tầm nhìn của họ về tương lai. \nVị tha – Những người có loại tính cách này không vui khi thành công bằng sự hy sinh của người khác. INFJ muốn sử dụng điểm mạnh của mình vì mục đích tốt đẹp hơn, và họ hiếm khi quên mất lời nói và hành động của mình có thể ảnh hưởng đến người khác như thế nào. Trong thâm tâm, họ muốn biến thế giới trở thành một nơi tốt đẹp hơn, bắt đầu từ những người xung quanh họ. \nSáng tạo – Những người có tính cách INFJ không giống hệt những người khác – và đó là một điều tuyệt vời. Họ phát huy khía cạnh sáng tạo của mình, luôn tìm kiếm cơ hội để thể hiện bản thân và suy nghĩ vượt ra ngoài khuôn khổ.', 'Nhạy cảm với lời chỉ trích – INFJ thường không thích lời chỉ trích, đặc biệt là nếu họ tin rằng ai đó đang thách thức các nguyên tắc hoặc giá trị mà họ trân trọng nhất. Khi nói đến những vấn đề gần gũi và thân thương với họ, những người có kiểu tính cách này có thể trở nên phòng thủ, coi thường hoặc tức giận. \nKhông muốn mở lòng – Những người có tính cách INFJ coi trọng sự trung thực và chân thực, nhưng họ cũng rất kín tiếng. Họ có thể thấy khó khăn khi mở lòng và dễ bị tổn thương về những khó khăn của mình, không muốn làm phiền người khác bằng những vấn đề của họ. Thật không may, khi họ không yêu cầu giúp đỡ, họ có thể vô tình kìm hãm bản thân hoặc tạo ra khoảng cách trong các mối quan hệ của họ. \nCầu toàn – Những tính cách có tầm nhìn này hầu như được định nghĩa bởi chủ nghĩa duy tâm. Mặc dù đây là một phẩm chất tuyệt vời theo nhiều cách, nhưng nó không phải lúc nào cũng để chỗ cho sự lộn xộn của cuộc sống thực. INFJ có thể thấy khó trân trọng công việc, hoàn cảnh sống hoặc các mối quan hệ của mình nếu họ liên tục tập trung vào sự không hoàn hảo và tự hỏi liệu họ có nên tìm kiếm điều gì đó tốt hơn không. \nTránh xa những điều bình thường – INFJ khao khát làm những điều phi thường trong cuộc sống của họ. Nhưng thật khó để đạt được bất cứ điều gì phi thường nếu không chia nhỏ thành những bước nhỏ, dễ quản lý. Trừ khi họ biến ước mơ của mình thành thói quen hàng ngày và danh sách việc cần làm, họ có thể gặp khó khăn trong việc biến tầm nhìn lớn lao của mình thành hiện thực. \nDễ bị kiệt sức – Tính cầu toàn và dè dặt của INFJ khiến họ có ít lựa chọn để giải tỏa căng thẳng. Những người có kiểu tính cách này có thể tự làm kiệt sức mình nếu họ không cân bằng động lực giúp đỡ người khác với việc tự chăm sóc và nghỉ ngơi cần thiết.'),
('INFP', 'Mediator', 'Là một loại tính cách có các đặc điểm hướng nội , trực giác , cảm xúc và triển vọng . Những loại tính cách hiếm này có xu hướng trầm tính, cởi mở và giàu trí tưởng tượng, và họ áp dụng cách tiếp cận chu đáo và sáng tạo vào mọi việc họ làm.', 'Đồng cảm – Những người có kiểu tính cách INFP (Người hòa giải) không chỉ quan tâm đến những người xung quanh theo nghĩa trừu tượng – họ thực sự có thể cảm nhận được cảm xúc của người khác, từ niềm vui và phấn khích đến nỗi buồn và hối tiếc. Vì sự nhạy cảm của mình, những tính cách này có xu hướng chu đáo và tốt bụng, và họ ghét ý tưởng làm tổn thương bất kỳ ai, ngay cả khi vô tình. \nHào phóng – INFP hiếm khi thích thành công bằng cách hạ thấp người khác. Họ cảm thấy được kêu gọi chia sẻ những điều tốt đẹp trong cuộc sống, ghi nhận công lao và nâng đỡ những người xung quanh. Những tính cách này muốn đóng góp cho một thế giới mà mọi tiếng nói đều được lắng nghe và không có nhu cầu nào không được đáp ứng. \nCởi mở – Khoan dung và chấp nhận, INFP cố gắng không phán xét niềm tin, lối sống hoặc quyết định của bất kỳ ai khác. Đây là kiểu tính cách thích lòng trắc ẩn hơn là chỉ trích. Nhiều người cảm thấy đồng cảm ngay cả với những người đã làm sai. Vì họ rất dễ chấp nhận, INFP thường trở thành người bạn tâm giao của bạn bè và người thân – và đôi khi là cả những người hoàn toàn xa lạ. \nSáng tạo – Những người có tính cách INFP thích nhìn nhận mọi thứ theo góc nhìn không theo khuôn mẫu. Ít có điều gì khiến họ thích thú hơn việc để tâm trí họ lang thang qua đủ loại ý tưởng, khả năng và mơ mộng. Do đó, không có gì ngạc nhiên khi nhiều người INFP bị thu hút bởi các hoạt động sáng tạo – hoặc loại tính cách này được thể hiện rõ trong số các nhà văn và nghệ sĩ. \nĐam mê – INFP chứa đựng một nguồn đam mê sâu sắc, chủ yếu được thúc đẩy bởi sự đồng cảm sâu sắc, các giá trị nội tại mạnh mẽ và sự tò mò không ngừng về trải nghiệm của con người. Khi một ý tưởng hoặc phong trào nào đó thu hút trí tưởng tượng của họ, những cá nhân này muốn dành toàn bộ trái tim mình cho nó. Những người có kiểu tính cách INFP có thể không phải lúc nào cũng thẳng thắn, nhưng điều đó không làm giảm đi cảm xúc mạnh mẽ của họ đối với một mục đích nói lên niềm tin và sự xác tín của họ. \nDuy tâm – Những người có tính cách INFP luôn cố gắng theo đuổi lương tâm của mình ngay cả khi làm điều đúng đắn không dễ dàng hay thuận tiện. Họ hiếm khi quên mất mong muốn sống một cuộc sống có ý nghĩa, có mục đích – một cuộc sống giúp đỡ người khác và khiến thế giới trở nên tốt đẹp hơn.', 'Không thực tế – Không có gì trên thế giới này là hoàn hảo – và đó có thể là sự thật khó chấp nhận đối với INFP. Những người có kiểu tính cách này có thể là những người lãng mạn vô vọng, với những viễn cảnh màu hồng về cuộc sống của họ. Điều này có thể khiến họ thất vọng khi thực tế không thể tránh khỏi việc không đạt được ước mơ của họ. \nTự cô lập – Những người có tính cách INFP mong muốn kết nối với người khác, nhưng họ không phải lúc nào cũng biết cách. Đặc biệt là trong môi trường mới, họ có thể không muốn thể hiện bản thân theo cách giúp họ kết bạn mới hoặc tham gia vào một cộng đồng mới. Do đó, những người có tính cách INFP đôi khi có thể cảm thấy cô đơn hoặc bị cô lập. \nThiếu tập trung – Bản chất giàu trí tưởng tượng, hướng nội của INFP không phải lúc nào cũng giúp họ đạt được năng suất. Nhiều người có kiểu tính cách này cảm thấy thất vọng vì họ thấy khó khăn khi phải tập trung và hoàn thành mọi việc. Vấn đề không phải là họ không có khả năng – mà là INFP gặp vấn đề khi họ quá sa đà vào những ý tưởng và lý tưởng khác nhau đến mức không thể cam kết thực hiện một hành động. \nDễ bị tổn thương về mặt cảm xúc – Sự điều chỉnh cảm xúc của những tính cách này là một trong những điểm mạnh nhất của họ. Nhưng nếu họ không thiết lập ranh giới, họ có thể có nguy cơ hấp thụ tâm trạng hoặc thái độ tiêu cực của người khác. Và điều này có thể gây bất lợi cho sự bình yên và năng suất cá nhân của họ, vì INFP là loại tính cách có nhiều khả năng nhất nói rằng những cảm xúc tiêu cực cản trở khả năng suy nghĩ rõ ràng của họ. \nQuá háo hức để làm hài lòng – Xung đột có xu hướng gây căng thẳng cho INFP, những người khao khát sự hòa hợp và chấp nhận. Khi ai đó không thích hoặc không chấp nhận họ, những tính cách này có thể trở nên ám ảnh với việc cố gắng làm sáng tỏ vấn đề và thay đổi suy nghĩ của người đó. Họ thậm chí có thể chịu trách nhiệm và xin lỗi về những điều không phải lỗi của họ để đảm bảo rằng họ được mọi người yêu mến. Thật không may, mong muốn làm hài lòng người khác của INFP có thể làm cạn kiệt năng lượng của họ, làm lu mờ trí tuệ bên trong và nhận thức của họ về nhu cầu của chính mình. \nTự phê bình – INFP tin vào tiềm năng độc đáo của mình và họ vô cùng muốn sống đúng với tiềm năng đó. Nhưng điều này có thể khiến họ có những kỳ vọng không thực tế đối với bản thân. Khi những tính cách này không sống đúng với những tầm nhìn này, họ có thể tự buộc tội mình là vô dụng hoặc ích kỷ hoặc vô cùng bất tài. Nếu đi quá xa, sự tự phê bình này có thể làm nản lòng INFP, khiến họ từ bỏ ngay cả những ước mơ tha thiết nhất của mình.'),
('INTJ', 'Architect', 'Là một loại tính cách có các đặc điểm Hướng nội, Trực giác, Tư duy và Phán đoán. Những nhà chiến thuật chu đáo này thích hoàn thiện các chi tiết của cuộc sống, áp dụng sự sáng tạo và lý trí vào mọi việc họ làm.Thế giới nội tâm của họ thường là một thế giới riêng tư, phức tạp.', 'Lý trí – Những người có kiểu tính cách INTJ (Kiến trúc sư) tự hào về sức mạnh của trí óc. Họ có thể định hình lại hầu như bất kỳ thách thức nào thành cơ hội để mài giũa kỹ năng tư duy lý trí và mở rộng kiến ​​thức của mình – và với tư duy này, họ có thể đưa ra các giải pháp sáng tạo cho ngay cả những vấn đề khó khăn nhất.\n\nCó hiểu biết – Ít có loại tính cách nào tận tụy như INTJ trong việc phát triển các ý kiến ​​hợp lý, đúng đắn và dựa trên bằng chứng. Thay vì linh cảm hoặc các giả định nửa vời, họ dựa kết luận của mình vào nghiên cứu và phân tích. Điều này mang lại cho họ niềm tin rằng họ cần phải bảo vệ ý tưởng của mình, ngay cả khi đối mặt với sự bất đồng.\n\nĐộc lập – Đối với những người có loại tính cách này, sự tuân thủ ít nhiều đồng nghĩa với sự tầm thường. Sáng tạo và tự thúc đẩy, INTJ cố gắng làm mọi việc theo cách của riêng mình. Họ có thể tưởng tượng ra ít điều gì gây khó chịu hơn là để những quy tắc hoặc quy ước tùy tiện cản trở thành công của họ. Hơn nữa, họ rất vui khi đưa ra quyết định mà không cần sự tham gia hoặc ý kiến ​​từ bên ngoài. Những cá nhân này thích tự mình giải quyết vấn đề.\n\nQuyết đoán – Kiểu tính cách này được biết đến là người có tham vọng và hướng đến mục tiêu. INTJ sẽ không nghỉ ngơi cho đến khi họ đạt được định nghĩa thành công của riêng mình – thường bao gồm việc thành thạo các môn học và mục tiêu mà họ quan tâm. Họ không được biết đến là người dễ dàng từ bỏ. Họ cảm thấy rằng cách duy nhất để đạt được sự vĩ đại là đối mặt trực diện với những thách thức.\n\nTò mò – INTJ cởi mở với những ý tưởng mới – miễn là những ý tưởng đó hợp lý và dựa trên bằng chứng. Bản chất hoài nghi, những người có loại tính cách này đặc biệt bị thu hút bởi các quan điểm lập dị hoặc trái ngược. Và nếu sự thật chứng minh họ sai, những kiểu tính cách này thường vui vẻ sửa đổi ý kiến ​​của mình.\nBản gốc – Nếu không có INTJ, thế giới sẽ trở nên kém thú vị hơn nhiều. Bản chất nổi loạn của loại tính cách này chịu trách nhiệm cho một số ý tưởng và phát minh phi truyền thống nhất trong lịch sử. Ngay cả trong cuộc sống hàng ngày, những tính cách này buộc mọi người xung quanh phải cân nhắc những cách nhìn mới (và đôi khi gây ngạc nhiên) về mọi thứ.', 'Kiêu ngạo – INTJ có thể hiểu biết, nhưng họ không phải là không thể sai lầm. Sự tự tin của họ có thể khiến họ không nhận được sự đóng góp hữu ích từ người khác – đặc biệt là bất kỳ ai mà họ cho là kém cỏi về mặt trí tuệ. Những tính cách này cũng có thể tỏ ra khắc nghiệt không cần thiết hoặc cố chấp khi cố chứng minh người khác sai.\n\nBỏ qua cảm xúc – Đối với loại tính cách này, lý trí là vua. Nhưng bối cảnh cảm xúc thường quan trọng hơn những gì những người có loại tính cách này muốn thừa nhận. INTJ có thể mất kiên nhẫn với bất kỳ ai có vẻ coi trọng cảm xúc hơn sự thật. Thật không may, việc bỏ qua cảm xúc là một loại thiên kiến ​​riêng – một loại có thể làm lu mờ phán đoán của loại tính cách này.\n\nQuá chỉ trích – Những tính cách này có xu hướng tự kiểm soát rất nhiều, đặc biệt là khi nói đến suy nghĩ và cảm xúc. Khi những người trong cuộc sống của họ không đạt đến mức độ kiềm chế của họ, INTJ có thể tỏ ra chỉ trích gay gắt. Nhưng lời chỉ trích này có thể không công bằng – dựa trên các tiêu chuẩn tùy tiện thay vì hiểu đầy đủ về bản chất con người.\n\nCó tính hiếu chiến – Những người có tính cách này ghét việc tuân theo bất cứ điều gì một cách mù quáng mà không hiểu lý do tại sao. Điều này bao gồm các hạn chế và những người có thẩm quyền áp đặt chúng. INTJ có thể bị cuốn vào việc tranh cãi về các quy tắc và quy định vô ích – nhưng đôi khi những cuộc chiến này chỉ là sự xao lãng khỏi những vấn đề quan trọng hơn.\n\nKhông biết gì về mặt xã hội – Sự lý trí không ngừng nghỉ của INTJ có thể dẫn đến sự thất vọng trong cuộc sống xã hội của họ. Những nỗ lực thách thức kỳ vọng của họ có thể khiến họ cảm thấy bị cô lập hoặc mất kết nối với người khác. Đôi khi, những tính cách này có thể trở nên hoài nghi về giá trị của các mối quan hệ, đặt câu hỏi về tầm quan trọng của tình yêu và sự kết nối.'),
('INTP', 'Logician', 'Là một loại tính cách có các đặc điểm Hướng nội, Trực giác, Tư duy và Triển vọng . Những người có tư duy linh hoạt này thích áp dụng cách tiếp cận không theo khuôn mẫu đối với nhiều khía cạnh của cuộc sống. Họ thường tìm kiếm những con đường không tưởng, kết hợp sự sẵn sàng thử nghiệm với sự sáng tạo cá nhân.', 'Phân tích – Những người có kiểu tính cách INTP (Logicians) phân tích mọi thứ họ gặp phải. Điều này giúp họ có năng khiếu phát hiện ra những mô hình và kết nối bất ngờ mà những tính cách khác có thể bỏ qua. \nBản gốc – Nhờ trí tưởng tượng không ngừng nghỉ của mình, những tính cách này có thể đưa ra những ý tưởng sáng tạo, phản trực giác mà hầu hết mọi người không nghĩ ra. Tất nhiên, không phải tất cả những ý tưởng này đều khả thi, nhưng sự sẵn sàng suy nghĩ vượt ra ngoài khuôn khổ của INTP có thể tạo ra những đổi mới đáng chú ý. \nCởi mở – INTP được thúc đẩy bởi sự tò mò và mong muốn học hỏi mãnh liệt. Khi học, họ hiếm khi sợ thay đổi quan điểm của mình – ngay cả trong các vấn đề chính trị, tôn giáo và triết học. Những người có loại tính cách này có xu hướng tiếp thu những ý tưởng mới, miễn là những ý tưởng đó là thứ mà họ kết nối ở cấp độ trí tuệ. \nTò mò – Những tính cách này luôn tìm kiếm những điều mới mẻ để học hỏi. Một tuần, họ có thể bị ám ảnh bởi địa vật lý, và tuần tiếp theo, họ có thể đắm chìm trong các video về cách chế tạo đàn guitar. Khi cảm hứng ập đến, INTP sẽ dốc toàn lực vào sở thích mới tìm thấy của mình, học mọi thứ mà họ có thể. \nTrung thực – INTP quan tâm đến sự thật. Thay vì cảm thấy thoải mái với hệ tư tưởng hoặc những ý tưởng được tiếp nhận, họ muốn hiểu những gì thực sự đang diễn ra bên dưới bề mặt của sự việc. Do đó, họ có thể được tin tưởng để chống lại sự thiên vị và thông tin sai lệch ngay cả khi không dễ để làm như vậy – và họ mong đợi những người khác cũng trung thực với họ.', 'Không kết nối – Những người có tính cách INTP có thể bị lạc trong dòng suy nghĩ của riêng họ ngay cả khi họ ở cùng những người khác. Sau khi cuối cùng cũng xuất hiện trở lại với điều gì đó để nói, họ có thể thấy rằng cuộc trò chuyện đã tiếp tục mà không có họ. Điều này có thể khiến những người có loại tính cách này cảm thấy không kết nối với người khác, đặc biệt là trong các cuộc tụ tập xã hội lớn. \nVô cảm – INTP coi lý trí là chìa khóa cho một thế giới tốt đẹp hơn, hạnh phúc hơn. Đôi khi, họ có thể đánh giá thấp tầm quan trọng của những giá trị phi lý như cảm xúc, lòng trắc ẩn, phép xã giao và truyền thống. Do đó, những tính cách này có thể vô tình bị coi là vô cảm hoặc không tử tế mặc dù ý định của họ nhìn chung là tốt. \nKhông hài lòng – Những người có kiểu tính cách này không thể không tưởng tượng mọi thứ có thể tốt hơn thế nào so với hiện tại. INTP liên tục tìm kiếm các vấn đề để giải quyết, các chủ đề để học và những cách mới để tiếp cận mọi thứ. Nếu đi quá xa, tư duy này có thể trở nên quá sức, với những tính cách này liên tục cố gắng phát minh lại bánh xe thay vì giải quyết đáng tin cậy các nhu cầu và trách nhiệm của họ. \nSuy nghĩ quá mức – Tâm trí của INTP hoạt động không ngừng, làm việc quần quật ngay cả khi họ không suy nghĩ một cách có ý thức. Mặc dù những suy nghĩ nhanh như chớp của họ đôi khi có thể có lợi, nhưng chúng cũng có thể khiến họ suy nghĩ quá mức và trở thành nạn nhân của chứng tê liệt phân tích. Khi điều này xảy ra, INTP có thể gặp khó khăn trong việc đưa ra quyết định hoặc hành động vì họ quá bận tâm đến việc cân nhắc mọi kết quả hoặc góc độ có thể xảy ra. \nThiếu kiên nhẫn – Những người có tính cách INTP tự hào về kiến ​​thức và việc chia sẻ ý tưởng của mình. Tuy nhiên, khi phải giải thích lý lẽ của mình, họ không phải lúc nào cũng kiên nhẫn. Nếu đối tác trò chuyện của họ không theo dõi hoặc có vẻ không đủ quan tâm, họ có thể bỏ cuộc với câu trả lời hờ hững “thôi bỏ đi”.');
INSERT INTO `personality_types` (`personality_type_id`, `type_name`, `description`, `strengths`, `weaknesses`) VALUES
('ISFJ', 'Defender', 'Là một loại tính cách có các đặc điểm hướng nội, quan sát, cảm xúc và phán đoán. Những người này có xu hướng ấm áp và khiêm tốn theo cách ổn định của riêng họ. Họ hiệu quả và có trách nhiệm, chú ý cẩn thận đến các chi tiết thực tế trong cuộc sống hàng ngày của họ.', 'Hỗ trợ – Những người có kiểu tính cách ISFJ (Defenders) thực sự thích giúp đỡ người khác và họ vui vẻ chia sẻ kiến ​​thức, sự chú ý và chuyên môn của mình với bất kỳ ai cần. ISFJ phấn đấu cho các tình huống đôi bên cùng có lợi, lựa chọn làm việc nhóm thay vì cạnh tranh bất cứ khi nào có thể. \nĐáng tin cậy – Thay vì làm việc theo kiểu bùng nổ, thất thường khiến mọi việc chỉ hoàn thành được một nửa, tính cách của ISFJ tỉ mỉ và cẩn thận. Họ có cách tiếp cận ổn định, đảm bảo mọi việc được thực hiện theo tiêu chuẩn cao nhất – thường vượt xa những gì được yêu cầu. Hơn nữa, hầu hết ISFJ đều đồng ý rằng việc duy trì kỷ luật và độ tin cậy sẽ trở nên dễ dàng hơn theo thời gian. \nQuan sát – Những người có tính cách ISFJ có tài năng để ý mọi thứ, đặc biệt là về người khác. Họ chú ý đến những chi tiết nhỏ nhất trong lời nói và hành động của người khác, mang lại cho họ những hiểu biết bất ngờ về cuộc sống và cảm xúc của người khác. \nNhiệt tình – Khi có mục tiêu đúng đắn, ISFJ sẽ áp dụng mọi năng khiếu của mình vào điều mà họ tin rằng sẽ tạo ra sự khác biệt thực sự và tích cực trong cuộc sống của mọi người – dù đó là chống lại đói nghèo thông qua sáng kiến ​​toàn cầu hay chỉ đơn giản là làm cho ngày làm việc của khách hàng trở nên tốt đẹp hơn. \nChăm chỉ – ISFJ không chỉ hoàn thành công việc của mình – họ tự hào khi vượt lên trên tất cả các nhiệm vụ và trách nhiệm của mình. Những người có loại tính cách này thường hình thành sự gắn bó về mặt tình cảm với các dự án và tổ chức mà họ đã cống hiến hết mình, và họ sẽ không nghỉ ngơi cho đến khi họ hoàn thành phần việc của mình – hoặc nhiều hơn phần việc của mình – để giúp đỡ. \nKỹ năng thực hành tốt – Kiểu tính cách ISFJ cung cấp sự kết hợp hiếm có giữa bản chất vị tha và tính thực tế khó đạt được. Họ không chỉ hy vọng giúp đỡ người khác. Họ hành động – nghĩa là họ rất vui khi xắn tay áo lên và làm những gì cần thiết để chăm sóc bạn bè, gia đình và bất kỳ ai khác cần.', 'Quá khiêm tốn – ISFJ quá quan tâm đến cảm xúc của người khác đến mức họ có thể từ chối chia sẻ suy nghĩ của mình hoặc không nhận bất kỳ công lao nào xứng đáng cho những đóng góp của mình. Họ thường hạ thấp hoàn toàn nỗ lực của mình khi nghĩ rằng họ có thể làm tốt hơn một khía cạnh nhỏ của một nhiệm vụ. \nCoi mọi thứ là chuyện cá nhân – Mặc dù họ có thể cố gắng che giấu, những người có kiểu tính cách này rất nhạy cảm với ý kiến ​​của người khác và họ có thể mất cân bằng nếu ai đó không đánh giá cao, chấp thuận hoặc đồng ý với họ. Khi họ gặp phải sự chỉ trích hoặc bất đồng quan điểm – ngay cả khi đó là ý định tốt – ISFJ có thể cảm thấy như thể họ đang trải qua một cuộc tấn công cá nhân. \nKìm nén cảm xúc – Tính cách khép kín và kín đáo, ISFJ có xu hướng nội tâm hóa cảm xúc của mình, đặc biệt là những cảm xúc tiêu cực. Điều này có thể tạo ra sự hiểu lầm trong các mối quan hệ của họ. Cuối cùng, tất cả những cảm xúc và sự oán giận bị kìm nén của họ có thể bùng nổ thành một cơn bùng nổ thất vọng đột ngột, không giống tính cách của họ. \nKhông muốn thay đổi – ISFJ là một trong những kiểu tính cách khó khăn nhất với sự thay đổi. Phá vỡ truyền thống không phải là điều dễ dàng đối với những tính cách ổn định này, những người coi trọng lịch sử và tiền lệ. Ngay cả khi cần thay đổi, họ có thể đợi cho đến khi tình hình đạt đến điểm bùng phát trước khi thay đổi hướng đi. \nQuá vị tha – Bản tính hào phóng, rộng lượng của ISFJ có thể khiến họ dễ bị lợi dụng bởi người khác. Họ có thể khó có thể làm đảo lộn mọi thứ và đứng lên chống lại người không tự mình gánh vác trách nhiệm. Trên thực tế, ISFJ là kiểu tính cách có nhiều khả năng nói rằng họ thà dọn dẹp mớ hỗn độn của người khác còn hơn là trực tiếp đối đầu với họ về vấn đề đó.'),
('ISFP', 'Adcenturer', 'Là một loại tính cách có các đặc điểm hướng nội, quan sát, cảm xúc và triển vọng . Họ có xu hướng cởi mở, tiếp cận cuộc sống, trải nghiệm mới và là những người ấm áp thực tế. Khả năng sống trong hiện tại giúp họ khám phá ra những tiềm năng thú vị.', 'Quyến rũ – Những người có tính cách ISFP (Nhà thám hiểm) thoải mái và ấm áp, và thái độ “sống và để người khác sống” của họ tự nhiên khiến họ được yêu mến và nổi tiếng. \nNhạy cảm với người khác – ISFP dễ dàng liên hệ với cảm xúc của người khác, giúp họ thiết lập sự hòa hợp và thiện chí và giảm thiểu xung đột. Nhiều người có loại tính cách này thậm chí có thể nhận biết cảm xúc của người khác chỉ bằng cách lắng nghe giọng nói của họ. \nTốt bụng và khuyến khích – Những cá nhân này sở hữu lòng tốt và sự công bằng bẩm sinh thúc đẩy sự hiểu biết và đồng cảm của họ đối với người khác và thường giúp họ tạo ra một không gian an toàn để người khác bày tỏ suy nghĩ và cảm xúc của họ. Họ thường có tính cách khuyến khích, luôn sẵn sàng cổ vũ người khác theo đuổi đam mê của mình. \nTrí tưởng tượng – ISFP sử dụng sự sáng tạo và hiểu biết sâu sắc để tạo ra những ý tưởng táo bạo chạm đến trái tim mọi người. Mặc dù khó có thể giải thích phẩm chất này trong sơ yếu lý lịch, nhưng trí tưởng tượng sống động và tinh thần khám phá của họ giúp những người có loại tính cách này theo những cách không ngờ tới. \nĐam mê – Bên dưới sự nhút nhát thầm lặng của họ là một trái tim cảm xúc mãnh liệt. Khi những tính cách này bị cuốn vào điều gì đó thú vị và hấp dẫn, họ có thể bỏ lại mọi thứ khác phía sau.', 'Khó khăn với cấu trúc – Tự do ngôn luận thường là ưu tiên hàng đầu của những người ISFP. Bất cứ điều gì cản trở điều đó, như truyền thống và các quy tắc cứng nhắc, đều tạo ra cảm giác áp bức. Điều này có thể khiến các bối cảnh có cấu trúc cứng nhắc hơn trở thành một thách thức. \nKhông thể đoán trước – ISFP không thích những cam kết và kế hoạch dài hạn. Xu hướng chủ động tránh lập kế hoạch cho tương lai có thể gây căng thẳng trong các mối quan hệ lãng mạn và khó khăn về tài chính sau này trong cuộc sống. \nDễ bị căng thẳng – Những người có kiểu tính cách ISFP sống ở hiện tại, đầy cảm xúc. Khi tình hình vượt khỏi tầm kiểm soát, họ có thể đóng cửa, mất đi nét quyến rũ và sự sáng tạo đặc trưng để chuyển sang nghiến răng. \nKhó khăn trong việc giải quyết vấn đề kỹ thuật – ISFP không phải là kiểu người xây dựng, sửa chữa hoặc thử cách tiếp cận thực tế khi đối mặt với các vấn đề kỹ thuật. Sở thích quan sát hơn là tham gia trực tiếp, thực tế của họ thường khiến họ không thể giải quyết hiệu quả các vấn đề về cơ khí hoặc kỹ thuật. \nLòng tự trọng dao động – Người ta đòi hỏi phải định lượng các kỹ năng, nhưng điều đó khó thực hiện với điểm mạnh về sự nhạy cảm và khám phá của tính cách ISFP. Những nỗ lực của họ thường bị bác bỏ, một đòn đau và gây tổn thương, đặc biệt là trong giai đoạn đầu đời. Những cá nhân này có thể bắt đầu tin vào những người phản đối mà không có sự hỗ trợ mạnh mẽ. \nNâng cấp ngay'),
('ISTJ', 'Logistician', 'Là một loại tính cách có các đặc điểm Hướng nội, Quan sát, Tư duy và Phán đoán . Những người này có xu hướng kín đáo nhưng bướng bỉnh, có quan điểm lý trí về cuộc sống. Họ sắp xếp hành động của mình một cách cẩn thận và thực hiện chúng với mục đích có phương pháp.', 'Trung thực và Trực tiếp – Chính trực là cốt lõi của những người có kiểu tính cách ISTJ (Logisticians). Sự thao túng cảm xúc, trò chơi trí óc và lời nói dối dưới mọi hình thức đều trái ngược với sở thích của họ là quản lý thực tế các tình huống mà họ gặp phải bằng sự trung thực đơn giản và rõ ràng.\nCó kỷ luật – ISTJ thể hiện sự chính trực thông qua cả lời nói và hành động của họ. Kiên nhẫn và quyết đoán, những người có loại tính cách này thực hiện nghĩa vụ của mình và giữ lời hứa, chấm hết. Họ coi trọng cấu trúc, tuân thủ nghiêm ngặt các quy tắc và tôn trọng thẩm quyền, thể hiện ý chí mạnh mẽ và bản chất tận tụy của họ.\nRất có trách nhiệm – ISTJ thà mất ngủ và cố gắng hết sức còn hơn không đạt được kết quả như đã hứa. Trung thành và đáng tin cậy, họ hầu như luôn hoàn thành nhiệm vụ của mình đối với mọi người và tổ chức mà họ đã cam kết, và họ làm đúng thời hạn và tuân thủ nghiêm ngặt mọi hướng dẫn đã được đặt ra.\nBình tĩnh và Thực tế – Không lời hứa nào của họ có ý nghĩa nhiều nếu tính cách ISTJ mất bình tĩnh và suy sụp trước mọi dấu hiệu khó khăn – họ có xu hướng giữ vững lập trường và đưa ra quyết định sáng suốt, hợp lý. Sở thích của người khác có thể được cân nhắc trong quá trình này, nhưng cuối cùng, quyết định của họ được đưa ra với tính thực tế.\nCó tổ chức và hiệu quả – Mục tiêu chính của bất kỳ tính cách ISTJ nào là đạt hiệu quả trong những gì họ đã chọn làm và họ tin rằng điều này đạt được tốt nhất khi mọi người liên quan đều biết chính xác những gì đang diễn ra và tại sao. Các quy tắc và quy định rõ ràng giúp những người có tính cách này duy trì trật tự và làm việc theo cách hiệu quả.\nHướng nghiên cứu – ISTJ là kho lưu trữ kiến ​​thức đáng tự hào, tập trung vào các quy trình và kỹ thuật cho phép đạt được kết quả đáng tin cậy. Điều này cho phép các cá tính ISTJ áp dụng bản thân vào nhiều tình huống khác nhau một cách thành công, tiếp thu và áp dụng dữ liệu mới khi cần để duy trì chức năng.', 'Bướng bỉnh – Sự thật là sự thật, và những người có kiểu tính cách ISTJ có xu hướng chống lại bất kỳ ý tưởng mới nào không được hỗ trợ bởi những sự thật đó. Quá trình ra quyết định dựa trên sự thật này khiến họ khó chấp nhận rằng họ đã sai về một điều gì đó – nhưng bất kỳ ai cũng có thể bỏ lỡ một chi tiết, ngay cả ISTJ.\nVô cảm – Mặc dù không cố ý khắc nghiệt, nhưng ISTJ thường làm tổn thương cảm xúc của những người nhạy cảm hơn bằng câu thần chú đơn giản rằng trung thực là chính sách tốt nhất. Những tính cách này có thể cân nhắc đến cảm xúc, nhưng thực sự chỉ đến mức xác định cách hiệu quả nhất để nói những gì cần nói.\nLuôn theo Sách – ISTJ tin rằng mọi thứ sẽ hoạt động tốt nhất khi có các quy tắc được xác định rõ ràng, nhưng điều này khiến họ miễn cưỡng phá vỡ các quy tắc đó hoặc thử những điều mới ngay cả khi nhược điểm là tối thiểu. Môi trường thực sự không có cấu trúc có xu hướng khiến những tính cách này căng thẳng và không hài lòng.\nPhán đoán – Vì ISTJ có xu hướng coi trọng sự thật và bằng chứng thực nghiệm, nên họ không có khả năng tôn trọng những người không đồng ý với thông tin đã được chứng minh – đặc biệt là những người cố tình không biết gì. Khi những người khác bỏ qua bằng chứng cụ thể và thay vào đó dựa vào các giả định hoặc cảm xúc, ISTJ có thể trở nên phán đoán, coi những cá nhân này là phi lý hoặc sai lầm.\nDễ bị kiệt sức – Tất cả những điều này có thể kết hợp lại khiến những người có kiểu tính cách ISTJ tin rằng họ là những người duy nhất có thể hoàn thành dự án một cách đáng tin cậy. Khi họ tự chất thêm công việc và trách nhiệm, từ chối những ý định tốt và ý tưởng hữu ích, sớm muộn gì họ cũng sẽ đạt đến điểm tới hạn mà họ không thể hoàn thành được. Vì họ đã đổ hết trách nhiệm lên đầu mình, nên ISTJ có thể tin rằng trách nhiệm về thất bại chỉ thuộc về họ.'),
('ISTP', 'Virtuoso', 'là một loại tính cách có các đặc điểm Hướng nội , Quan sát , Tư duy và Triển vọng . Họ có xu hướng có tư duy cá nhân, theo đuổi mục tiêu mà không cần nhiều kết nối bên ngoài. Họ tham gia vào cuộc sống với sự tò mò và kỹ năng cá nhân, thay đổi cách tiếp cận khi cần thiết.', 'Siêng năng và quan sát – Những người có tính cách ISTP (Virtuosos) thường rất bận rộn với một dự án nào đó. Là những người thực hành, họ thích tham gia vào môi trường xung quanh và biến những quan sát của mình thành các giải pháp thực tế. \nKhéo léo và tháo vát – Kiểu tính cách này rất giàu trí tưởng tượng khi nói đến những thứ thực tế, cơ khí, thủ công và kỹ năng. Những ý tưởng mới lạ đến với ISTP một cách dễ dàng và họ thích sử dụng đôi tay của mình để thực hiện chúng. \nTự phát – Họ thường có thể thuận theo dòng chảy và suy nghĩ nhanh nhạy. Sự linh hoạt này đi kèm với một số điều không thể đoán trước, nhưng ISTP có thể giữ lại sự tự phát của mình cho những ngày mưa, giải phóng năng lượng của họ đúng vào lúc cần thiết nhất. \nTrực tiếp và chân thực – ISTP coi trọng sự giao tiếp thẳng thắn và trung thực. Họ nói ra suy nghĩ của mình mà không tô vẽ, phản ánh tính chân thực của họ. Sự thẳng thắn này thường thúc đẩy sự rõ ràng trong các mối quan hệ của họ và giúp họ ủng hộ mong muốn và nhu cầu của mình. \nĐộc lập – Là những cá nhân rất tự lập, ISTP phát triển mạnh mẽ khi thường xuyên tự mình thực hiện các nhiệm vụ, điều này giúp họ nuôi dưỡng khả năng sáng tạo cùng với khả năng giải quyết vấn đề mạnh mẽ. \nGrounded – ISTP có khả năng kỳ lạ là luôn bám rễ vào thời điểm hiện tại. Với sự tập trung cao độ vào những gì đang diễn ra, loại tính cách này ít có khả năng bị cuốn vào các kịch bản tương lai giả định hoặc hối tiếc trong quá khứ.', 'Không hối hận – ISTP dễ dàng chiều theo ý người khác, những người có kiểu tính cách này cũng có thể phớt lờ hoàn toàn và chuyển sang hướng khác mà không quan tâm nhiều đến sở thích của người khác. Nếu ai đó cố gắng đề xuất một hướng đi khác, ISTP có thể trở nên khá thẳng thắn trong sự bực tức của họ. \nVô cảm – ISTP dựa vào logic, và ngay cả khi họ cố gắng đáp ứng nhu cầu của người khác bằng sự đồng cảm và nhạy cảm về mặt cảm xúc, thì cũng hiếm khi có kết quả đúng, thậm chí nếu có nói ra điều gì đó. \nRiêng tư và kín đáo – Kiểu tính cách này nổi tiếng là khó hiểu. Họ giữ những vấn đề riêng tư cho riêng mình và thường chỉ thích im lặng hơn là nói chuyện phiếm. \nDễ chán – ISTP thích sự mới lạ, điều này khiến họ trở thành những người thích mày mò tuyệt vời, nhưng họ kém đáng tin cậy hơn nhiều khi tập trung vào mọi thứ khi sự mới lạ không còn nữa. Khi đã hiểu được điều gì đó, họ có xu hướng chỉ chuyển sang thứ gì đó mới mẻ và thú vị hơn. \nĐộc lập – Mặc dù cũng được liệt kê là một điểm mạnh, nhưng tính cách độc lập của ISTP có thể là một thách thức trong các mối quan hệ xã hội của họ, bao gồm cả trong tình yêu. Việc áp đặt lịch trình của người khác – đặc biệt là lịch xã hội – lên họ có thể không ổn trong thời gian dài. Họ có thể không dễ chịu khi người khác lấy mất thời gian của họ khỏi những gì họ muốn làm. \nQuá hoài nghi – Quan điểm hoài nghi chung của ISTP có thể giúp họ tránh được những giả định vô căn cứ, nhưng sự hoài nghi không được kiểm soát có thể khiến họ bác bỏ nhiều sự thật chủ quan hơn hoặc các khía cạnh không thể định lượng của trải nghiệm con người. Nó cũng có thể dẫn đến việc bỏ lỡ các cơ hội – họ có thể không chấp nhận rủi ro hoặc khám phá các khái niệm xa lạ do thiếu bằng chứng xác đáng. Tương tự như vậy, sự hoài nghi quá mức cũng có thể gây căng thẳng cho các mối quan hệ xã hội do nhận thức tiêu cực và thiếu tin tưởng.');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(10) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `category` enum('EI','SN','TF','JP') NOT NULL,
  `trait_positive` char(1) NOT NULL,
  `trait_negative` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `question_text`, `category`, `trait_positive`, `trait_negative`) VALUES
(1, 'Bạn cảm thấy thoải mái khi giao tiếp với người lạ.', 'EI', 'E', 'I'),
(2, 'Khi đối mặt với thử thách, bạn thích cùng người khác động não tìm ý tưởng hơn tự mình giải quyết.', 'EI', 'E', 'I'),
(3, 'Bạn thường là người chủ động bắt chuyện.', 'EI', 'E', 'I'),
(4, 'Trong môi trường làm việc nhóm, bạn thích không gian mở và hợp tác hơn làm việc cá nhân.', 'EI', 'E', 'I'),
(5, 'Khi gặp gỡ người mới, bạn có xu hướng chủ động bắt chuyện và giới thiệu hơn.', 'EI', 'E', 'I'),
(6, 'Trong buổi tụ tập xã hội, bạn cảm thấy tràn đầy năng lượng hơn khi tương tác với nhóm đông người.', 'EI', 'E', 'I'),
(7, 'Bạn thường thể hiện rõ cảm xúc ra bên ngoài.', 'EI', 'E', 'I'),
(8, 'Bạn thấy khó chịu nếu phải nói chuyện quá nhiều.', 'EI', 'I', 'E'),
(9, 'Bạn thích tham gia các hoạt động xã hội.', 'EI', 'E', 'I'),
(10, 'Bạn thiên về các kế hoạch giao lưu với bạn bè hơn là yên tĩnh một mình.', 'EI', 'E', 'I'),
(11, 'Khi đối mặt vấn đề, bạn thích chi tiết cụ thể hơn là khả năng và ý nghĩa tiềm ẩn.', 'SN', 'S', 'N'),
(12, 'Bạn thích trải nghiệm thực tế hơn là lý thuyết, khái niệm.', 'SN', 'S', 'N'),
(13, 'Trong trò chuyện, bạn quan tâm đến hiện tại và chi tiết hơn là ý tưởng và tương lai.', 'SN', 'S', 'N'),
(14, 'Bạn cảm thấy thoải mái hơn với các dữ liệu cụ thể.', 'SN', 'S', 'N'),
(15, 'Khi làm việc, bạn tập trung vào nhiệm vụ cụ thể hơn là mục tiêu chung.', 'SN', 'S', 'N'),
(16, 'Khi đọc sách, bạn chú ý cốt truyện hơn là ý nghĩa sâu xa.', 'SN', 'S', 'N'),
(17, 'Khi tiếp nhận thông tin, bạn thích giải thích rõ ràng cụ thể hơn là giàu hình ảnh và liên tưởng.', 'SN', 'S', 'N'),
(18, 'Bạn có xu hướng đưa ra ý tưởng thực tế, khả thi hơn là sáng tạo, đột phá.', 'SN', 'S', 'N'),
(19, 'Bạn giải quyết vấn đề theo cách từng bước hơn là sáng tạo và cởi mở.', 'SN', 'S', 'N'),
(20, 'Bạn thường suy nghĩ nhiều về quá khứ.', 'SN', 'N', 'S'),
(21, 'Bạn đưa ra quyết định dựa trên lý trí hơn là cảm xúc.', 'TF', 'T', 'F'),
(22, 'Bạn hay lo lắng về cảm xúc của người khác.', 'TF', 'F', 'T'),
(23, 'Bạn chọn phương án hợp lý, nhưng vẫn cố giữ sự hòa hợp trong nhóm.', 'TF', 'F', 'T'),
(24, 'Bạn nhạy cảm với lời chỉ trích.', 'TF', 'F', 'T'),
(25, 'Bạn tranh luận để tìm ra sự thật.', 'TF', 'T', 'F'),
(26, 'Bạn ưu tiên hiệu quả công việc, nhưng vẫn cân nhắc giá trị và tác động.', 'TF', 'T', 'F'),
(27, 'Bạn góp ý cải tiến, vẫn giữ tinh thần khích lệ.', 'TF', 'T', 'F'),
(28, 'Bạn quyết định dựa trên sự công bằng và không thiên vị.', 'TF', 'T', 'F'),
(29, 'Bạn dễ bị cảm xúc chi phối trong tình huống căng thẳng.', 'TF', 'F', 'T'),
(30, 'Cảm xúc kiểm soát bạn nhiều hơn là bạn kiểm soát chúng.', 'TF', 'F', 'T'),
(31, 'Bạn thường để một ngày trôi qua mà không có kế hoạch nào.', 'JP', 'P', 'J'),
(32, 'Bạn sắp xếp và hoàn thành nhiệm vụ đúng hạn.', 'JP', 'J', 'P'),
(33, 'Bạn thường dồn công việc đến phút cuối mới làm.', 'JP', 'P', 'J'),
(34, 'Bạn thấy khó duy trì lịch làm việc nhất quán.', 'JP', 'P', 'J'),
(35, 'Bạn thích công việc diễn ra tự nhiên, theo cảm hứng hơn là theo trật tự.', 'JP', 'P', 'J'),
(36, 'Bạn thường lên danh sách công việc hàng ngày.', 'JP', 'J', 'P'),
(37, 'Bạn gặp khó khăn trong việc hoàn thành công việc đúng hạn.', 'JP', 'P', 'J'),
(38, 'Bạn tự tin là mọi thứ rồi sẽ đâu vào đấy.', 'JP', 'P', 'J'),
(39, 'Không gian sống của bạn sạch sẽ và ngăn nắp.', 'JP', 'J', 'P'),
(40, 'Bạn lên kế hoạch để tránh rủi ro bất ngờ.', 'JP', 'J', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `personality_type` char(4) NOT NULL,
  `taken_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `user_id`, `personality_type`, `taken_at`) VALUES
(1, 8, 'ESFJ', '2025-07-03 14:22:25'),
(2, 8, 'INTP', '2025-07-03 14:23:27'),
(3, 8, 'ESTJ', '2025-07-03 14:28:08'),
(4, 8, 'ESTJ', '2025-07-03 14:29:09'),
(5, 8, 'ISTJ', '2025-07-03 14:57:19');

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_id` int(10) UNSIGNED NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_id`, `school_name`, `description`, `URL`) VALUES
(1, 'Trường Đại học Tôn Đức Thắng (Công lập)', 'https://www.tdtu.edu.vn/', NULL),
(2, 'Trường Đại học Bách khoa Hà Nội (Công lập)', 'https://www.hust.edu.vn/', NULL),
(3, 'Trường Đại học Bách khoa TP.Hồ Chí Minh (Công lập)', 'https://www.hcmut.edu.vn/', NULL),
(4, 'Trường Đại học Kinh tế TP. Hồ Chí Minh (Công lập)', 'https://www.ueh.edu.vn/', NULL),
(5, 'Trường Đại học Cần Thơ (Công lập)', 'https://www.ctu.edu.vn/', NULL),
(6, 'Trường Đại học Sư phạm Hà Nội (Công lập)', 'https://hnue.edu.vn/', NULL),
(7, 'Trường Đại học Công nghiệp TP. Hồ Chí Minh (Công lập)', 'https://iuh.edu.vn/', NULL),
(8, 'Trường Đại học Thuỷ lợi (Công lập)', 'https://tlu.edu.vn/', NULL),
(9, 'Trường Đại học Ngoại Thương (Công lập)', 'https://ftu.edu.vn/', NULL),
(10, 'Trường Đại học Xây dựng Hà Nội (Công lập)', 'https://huce.edu.vn/', NULL),
(11, 'Học viện Nông nghiệp Việt Nam (Công lập)', 'https://vnua.edu.vn/', NULL),
(12, 'Trường Đại học Dược Hà Nội (Công lập)', 'https://www.hup.edu.vn/', NULL),
(13, 'Trường Đại học Kinh tế quốc dân (Công lập)', 'https://neu.edu.vn/', NULL),
(14, 'Trường Đại học Mỏ – Địa chất (Công lập)', 'https://humg.edu.vn/', NULL),
(15, 'Trường Đại học Công nghiệp Hà Nội (Công lập)', 'https://haui.edu.vn/', NULL),
(16, 'Trường Đại học Điện lực (Công lập)', 'https://www.hpu.edu.vn/', NULL),
(17, 'Học viện Công nghệ bưu chính viễn thông (Công lập)', 'https://ptit.edu.vn/', NULL),
(18, 'Trường Đại học Sư phạm Kỹ thuật TP. Hồ Chí Minh (Công lập)', 'https://hcmute.edu.vn/', NULL),
(19, 'Trường Đại học Y Hà Nội (Công lập)', 'https://www.hmu.edu.vn/', NULL),
(20, 'Trường Đại học Giao thông vận tải TP. Hồ Chí Minh (Công lập)', 'https://giaothongvantaitphcm.edu.vn/', NULL),
(21, 'Trường Đại học Hàng Hải Việt Nam (Công lập)', 'https://vimaru.edu.vn/', NULL),
(22, 'Trường Đại học Công nghệ TP. Hồ Chí Minh (Tư thục)', 'https://hcmunre.edu.vn/', NULL),
(23, 'Học viện Báo chí và Tuyên truyền (Công lập)', 'https://ajc.edu.vn/', NULL),
(24, 'Trường Đại học Giao thông vận tải (Công lập)', 'https://utc.edu.vn/', NULL),
(25, 'Trường Đại học Thương Mại (Công lập)', 'https://tmu.edu.vn/', NULL),
(26, 'Trường Đại học Thủ đô Hà Nội (Công lập)', 'https://hnmu.edu.vn/', NULL),
(27, 'Trường Đại học Y tế Công cộng (Công lập)', 'https://huph.edu.vn/', NULL),
(28, 'Học viện Ngân hàng (Công lập)', 'https://hvnh.edu.vn/', NULL),
(29, 'Trường Đại học Y Dược Thái Bình (Công lập)', 'https://tump.edu.vn/', NULL),
(30, 'Trường Đại học Kinh tế Kỹ thuật Công nghiệp (Công lập)', 'https://uneti.edu.vn/', NULL),
(31, 'Học viện Chính sách và Phát triển (Công lập)', 'https://hcps.edu.vn/', NULL),
(32, 'Trường Đại học Công nghệ giao thông vận tải (Công lập)', 'https://utt.edu.vn/', NULL),
(33, 'Học viện Ngoại giao (Công lập)', 'https://dav.edu.vn/', NULL),
(34, 'Trường Đại học Y Dược TP. Hồ Chí Minh (Công lập)', 'https://ump.edu.vn/', NULL),
(35, 'Trường Đại học Văn Lang (Tư thục)', 'https://vanlanguni.edu.vn/', NULL),
(36, 'Trường Đại học Luật Hà Nội (Công lập)', 'https://hlu.edu.vn/', NULL),
(37, 'Trường Đại học Công nghiệp thực phẩm TP. Hồ Chí Minh (Công lập)', 'https://hufi.edu.vn/', NULL),
(38, 'Trường Đại học FPT (Tư thục)', 'https://fpt.edu.vn/', NULL),
(39, 'Trường Đại học Kiến trúc Hà Nội (Công lập)', 'https://hau.edu.vn/', NULL),
(40, 'Trường Đại học Kiến trúc TP. Hồ Chí Minh (Công lập)', 'https://hcmuarc.edu.vn/', NULL),
(41, 'Trường Đại học Mở TP. Hồ Chí Minh (Công lập)', 'https://ou.edu.vn/', NULL),
(42, 'Trường Đại học Lao động – Xã hội (Công lập)', 'https://ulsa.edu.vn/', NULL),
(43, 'Trường Đại học Luật TP. Hồ Chí Minh (Công lập)', 'https://hcmulaw.edu.vn/', NULL),
(44, 'Trường Đại học Ngân hàng TP. Hồ Chí Minh (Công lập)', 'https://buh.edu.vn/', NULL),
(45, 'Trường Đại học Y Dược Cần Thơ (Công lập)', 'https://ctump.edu.vn/', NULL),
(46, 'Trường Đại học Tài nguyên và Môi trường TP. Hồ Chí Minh (Công lập)', 'https://hcmunre.edu.vn/', NULL),
(47, 'Trường Đại học Sư phạm TP. Hồ Chí Minh (Công lập)', 'https://hcmup.edu.vn/', NULL),
(48, 'Trường Đại học Tài chính – Marketing (Công lập)', 'https://ufm.edu.vn/', NULL),
(49, 'Trường Đại học Mở Hà Nội (Công lập)', 'https://nou.edu.vn/', NULL),
(50, 'Trường Đại học Tài nguyên và Môi trường Hà Nội (Công lập)', 'https://hunre.edu.vn/', NULL),
(51, 'Học viện Tài chính (Công lập)', 'https://hvtc.edu.vn/', NULL),
(52, 'Trường Đại học Đồng Tháp (Công lập)', 'https://dtu.edu.vn/', NULL),
(53, 'Trường Đại học Kỹ thuật – Công nghệ Cần Thơ (Công lập)', 'https://ctfe.edu.vn/', NULL),
(54, 'Học viện Y Dược học cổ truyền Việt Nam (Công lập)', 'https://vim.edu.vn/', NULL),
(55, 'Trường Đại học Nội vụ Hà Nội (Công lập)', 'https://tpa.edu.vn/', NULL),
(56, 'Trường Đại học Nông lâm TP. Hồ Chí Minh (Công lập)', 'https://hcmuaf.edu.vn/', NULL),
(57, 'Trường Đại học Văn hoá TP. Hồ Chí Minh (Công lập)', 'https://hcmuc.edu.vn/', NULL),
(58, 'Trường Đại học Khoa học và Công nghệ Hà Nội (Công lập)', 'https://usth.edu.vn/', NULL),
(59, 'Trường Đại học Mỹ thuật Việt Nam (Công lập)', 'https://vnufa.edu.vn/', NULL),
(60, 'Trường Đại học Công nghệ Sài Gòn (Tư thục)', 'https://sgu.edu.vn/', NULL),
(61, 'Trường Đại học Lâm nghiệp (Công lập)', 'https://vnuf.edu.vn/', NULL),
(62, 'Trường Đại học Ngoại ngữ – Tin học TP. Hồ Chí Minh (Tư thục)', 'https://huflit.edu.vn/', NULL),
(63, 'Học viện Toà án (Công lập)', 'https://hocvientoaan.edu.vn/', NULL),
(64, 'Trường Đại học Y khoa Phạm Ngọc Thạch (Công lập)', 'https://www.pnt.edu.vn/', NULL),
(65, 'Học viện Hàng không Việt Nam (Công lập)', 'https://vaa.edu.vn/', NULL),
(66, 'Trường Đại học Khoa học Tự nhiên (HCMUS)', 'https://www.hcmus.edu.vn/', NULL),
(67, 'Trường Đại học Khoa học Xã hội và Nhân văn (HCMUSSH)', 'https://hcmussh.edu.vn/', NULL),
(68, 'Trường Đại học Quốc tế (HCMIU)', 'https://hcmiu.edu.vn/', NULL),
(69, 'Trường Đại học Công nghệ Thông tin (HCMUTI)', 'https://www.uit.edu.vn/', NULL),
(70, 'Trường Đại học Kinh tế - Luật (HCMUEL)', 'https://uel.edu.vn/', NULL),
(71, 'Trường Đại học Khoa học Tự nhiên - ĐHQGHN (HUS)', 'https://hus.vnu.edu.vn/', NULL),
(72, 'Trường Đại học Khoa học Xã hội và Nhân văn - ĐHQGHN (USSH)', 'https://ussh.vnu.edu.vn/', NULL),
(73, 'Trường Đại học Ngoại ngữ - ĐHQGHN (ULIS)', 'https://ulis.vnu.edu.vn/', NULL),
(74, 'Trường Đại học Công nghệ - ĐHQGHN (UET)', 'https://uet.vnu.edu.vn/', NULL),
(75, 'Trường Đại học Kinh tế  - ĐHQGHN (UEB)', 'https://ueb.vnu.edu.vn/', NULL),
(76, 'Trường Đại học Giáo dục - ĐHQGHN (UED)', 'https://ued.vnu.edu.vn/', NULL),
(77, 'Khoa Luật Đại học quốc gia Hà Nội', 'https://law.vnu.edu.vn/', NULL),
(78, 'Trường Quốc tế - ĐHQGHN (VNU-IS)', 'https://is.vnu.edu.vn/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`, `role`) VALUES
(3, 'vy123', 'thuyvydinh3131@gmail.com', '$2y$10$Qzb7T7adQjlg6CnSBTzaluOOIGS/CR4SAArl6A1Gpqrs8GgOeUvu.', '2025-06-28 11:57:01', 'user'),
(4, 'vy234', 'abc@gmail.com', '$2y$10$/P2e5RApwMnw.4WK1T13cet3kzNOyi2QSZcQIN4CqAv4wSC.O9Gnu', '2025-06-28 21:02:28', 'user'),
(5, 'vy789', 'vy789@gmail.com', '$2y$10$Whvlnb1G6Uf59yDDny6NNutlq/rmEXlyQMJIOgfzgNm/QrhyoMzU6', '2025-06-28 22:15:40', 'user'),
(6, 'vy3107', 'vy31@ut.edu.vn', '$2y$10$J8pgqE5oUxJ80vN9ufjFxe.6EGZx2fMAQ1NViwpEIcOtLGXl0DCR6', '2025-06-28 22:30:29', 'user'),
(7, 'admin', 'admin123@gmail.com', '$2y$10$PbWYXf8FiieciMlCGHe3SOHQwGyWeeujSVQxNHT2OSIoLCA/qYVei', '2025-06-29 23:42:26', 'admin'),
(8, 'vyne123', 'vyne123@gmail.com', '$2y$10$x3xddnX/0UbCEhrK/5.uAODi.6UNxU4G/qPwOrx5ucVKpa/BVUbpK', '2025-07-02 22:11:25', 'user'),
(9, 'Tấn', 'tannh1782@ut.edu.vn', '$2y$10$yfqpvMICEeioJ..10euqaezqV2eFi472W7GjHpxHXeSBVgNqPYnm6', '2025-07-04 15:58:40', 'user'),
(10, 'Tấn2', 'sddsd1782@ut.edu.vn', '$2y$10$QnS0pDBrlmSg16XBVFryb.PMrmU8/om1/MwysNsFKjNQ6A8hNg5Hy', '2025-07-08 16:48:03', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `result_id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `selected_score` int(11) NOT NULL CHECK (`selected_score` between -3 and 3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`result_id`, `question_id`, `selected_score`) VALUES
(1, 1, 3),
(1, 2, 3),
(1, 3, -3),
(1, 4, 2),
(1, 5, 2),
(1, 6, 2),
(1, 7, -3),
(1, 8, -3),
(1, 9, 2),
(1, 10, 2),
(1, 11, 2),
(1, 12, 2),
(1, 13, -3),
(1, 14, 2),
(1, 15, 3),
(1, 16, -3),
(1, 17, 3),
(1, 18, 3),
(1, 19, 3),
(1, 20, 3),
(1, 21, -3),
(1, 22, 2),
(1, 23, 2),
(1, 24, -3),
(1, 25, -3),
(1, 26, 2),
(1, 27, 2),
(1, 28, 2),
(1, 29, -3),
(1, 30, 2),
(1, 31, -3),
(1, 32, 2),
(1, 33, -3),
(1, 34, -3),
(1, 35, 3),
(1, 36, 2),
(1, 37, 2),
(1, 38, -1),
(1, 39, 2),
(1, 40, 0),
(2, 1, 3),
(2, 2, -3),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(2, 6, -3),
(2, 7, -3),
(2, 8, 2),
(2, 9, 2),
(2, 10, -3),
(2, 11, -3),
(2, 12, 2),
(2, 13, 2),
(2, 14, 2),
(2, 15, -3),
(2, 16, 2),
(2, 17, -3),
(2, 18, 2),
(2, 19, 2),
(2, 20, -3),
(2, 21, 2),
(2, 22, 2),
(2, 23, -3),
(2, 24, 2),
(2, 25, -3),
(2, 26, 2),
(2, 27, 2),
(2, 28, 0),
(2, 29, 2),
(2, 30, -3),
(2, 31, 2),
(2, 32, -3),
(2, 33, 2),
(2, 34, -3),
(2, 35, 2),
(2, 36, -3),
(2, 37, -2),
(2, 38, -1),
(2, 39, 0),
(2, 40, 0),
(3, 1, 3),
(3, 2, 3),
(3, 3, 3),
(3, 4, 3),
(3, 5, 3),
(3, 6, 3),
(3, 7, -3),
(3, 8, -3),
(3, 9, 2),
(3, 10, 2),
(3, 11, -3),
(3, 12, 2),
(3, 13, 2),
(3, 14, -3),
(3, 15, 2),
(3, 16, 3),
(3, 17, -3),
(3, 18, 2),
(3, 19, -3),
(3, 20, 3),
(3, 21, 3),
(3, 22, -3),
(3, 23, 3),
(3, 24, -3),
(3, 25, 2),
(3, 26, 2),
(3, 27, -3),
(3, 28, 2),
(3, 29, 3),
(3, 30, -3),
(3, 31, 2),
(3, 32, -3),
(3, 33, 2),
(3, 34, 2),
(3, 35, 2),
(3, 36, 2),
(3, 37, 2),
(3, 38, -2),
(3, 39, 0),
(3, 40, 2),
(4, 1, 3),
(4, 2, -1),
(4, 3, 1),
(4, 4, 2),
(4, 5, -2),
(4, 6, 2),
(4, 7, -1),
(4, 8, 2),
(4, 9, -1),
(4, 10, 2),
(4, 11, -1),
(4, 12, 2),
(4, 13, -2),
(4, 14, 2),
(4, 15, 2),
(4, 16, -2),
(4, 17, 2),
(4, 18, 2),
(4, 19, -2),
(4, 20, 3),
(4, 21, -3),
(4, 22, 3),
(4, 23, -3),
(4, 24, 0),
(4, 25, 2),
(4, 26, 2),
(4, 27, 2),
(4, 28, 2),
(4, 29, -3),
(4, 30, 3),
(4, 31, 3),
(4, 32, 2),
(4, 33, 2),
(4, 34, 3),
(4, 35, 2),
(4, 36, 2),
(4, 37, -3),
(4, 38, 2),
(4, 39, -3),
(4, 40, 2),
(5, 1, 3),
(5, 2, 0),
(5, 3, 3),
(5, 4, 3),
(5, 5, -2),
(5, 6, -3),
(5, 7, -3),
(5, 8, -2),
(5, 9, -2),
(5, 10, 2),
(5, 11, 3),
(5, 12, 3),
(5, 13, 3),
(5, 14, 2),
(5, 15, -2),
(5, 16, -2),
(5, 17, -2),
(5, 18, -3),
(5, 19, 2),
(5, 20, 3),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 3),
(5, 25, 3),
(5, 26, -3),
(5, 27, -3),
(5, 28, -1),
(5, 29, 0),
(5, 30, 0),
(5, 31, 3),
(5, 32, 3),
(5, 33, 3),
(5, 34, 1),
(5, 35, -2),
(5, 36, -2),
(5, 37, -3),
(5, 38, -3),
(5, 39, -2),
(5, 40, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `majors`
--
ALTER TABLE `majors`
  ADD PRIMARY KEY (`major_id`),
  ADD UNIQUE KEY `major_name` (`major_name`);

--
-- Indexes for table `major_school`
--
ALTER TABLE `major_school`
  ADD PRIMARY KEY (`major_id`,`school_id`),
  ADD KEY `school_id` (`school_id`);

--
-- Indexes for table `personality_major`
--
ALTER TABLE `personality_major`
  ADD PRIMARY KEY (`personality_type_id`,`major_id`),
  ADD KEY `major_id` (`major_id`);

--
-- Indexes for table `personality_types`
--
ALTER TABLE `personality_types`
  ADD PRIMARY KEY (`personality_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD UNIQUE KEY `question_text` (`question_text`(255));

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_id`),
  ADD UNIQUE KEY `school_name` (`school_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`result_id`,`question_id`),
  ADD KEY `question_id` (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `majors`
--
ALTER TABLE `majors`
  MODIFY `major_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `major_school`
--
ALTER TABLE `major_school`
  ADD CONSTRAINT `major_school_ibfk_1` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `major_school_ibfk_2` FOREIGN KEY (`school_id`) REFERENCES `schools` (`school_id`) ON DELETE CASCADE;

--
-- Constraints for table `personality_major`
--
ALTER TABLE `personality_major`
  ADD CONSTRAINT `personality_major_ibfk_1` FOREIGN KEY (`personality_type_id`) REFERENCES `personality_types` (`personality_type_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `personality_major_ibfk_2` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE CASCADE;

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`result_id`) REFERENCES `results` (`result_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
