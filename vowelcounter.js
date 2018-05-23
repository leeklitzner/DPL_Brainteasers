function vowel_counter(str1)
{
  var vowel_list = 'aeiouAEIOU';
  var vcounter = 0;

  for(var x = 0; x < str1.length ; x++)
  {
    if (vowel_list.indexOf(str1[x]) !== -1)
    {
      vcount += 1;
    }

  }
  return vcounter;
}
