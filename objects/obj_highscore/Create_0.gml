/// @description Insert description here
// You can write your code in this editor
f = working_directory + "hiscore.txt";
var hiscore = 0;
image_alpha = 0;

if (file_exists(f))
{
	var file = file_text_open_read(f);
	hiscore = file_text_read_real(file);
	file_text_close(file);
}

if (score > hiscore)
{
	image_alpha = 1;

	var file = file_text_open_write(f);
    file_text_write_real(file, hiscore);
	file_text_close(file);
}
