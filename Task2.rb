#Дана строка слов, разделёных пробелами. Вывести длиннейшее слово.
#Дан текст. Найдите все URL адреса и вычлените из них ссылку на корневую страницу сайта (например, из #http://rubygarage.org/course.html сделайте http://rubygarage.org).
#Дан текст. Найдите наибольшее количество идущих подряд цифр в нем.
#Дан текст. Необходимо подсчитать, сколько раз встречается каждое слово в тексте.


input = "But I must 1 explain to you 3444 how all http://www.ukr.net/news/politika.html this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great 444 explorer of the truth, the master-builder of 11134 human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know 0 how to pursue 334 pleasure rationally encounter consequences that are 111 extremely painful. Nor again 2 is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which 3444 toil and pain can procure him some great 234234 234 pleasure. https://www.teletrade.com.ua/novice/promo?utm_source=ukr&utm_medium=kak&utm_campaign=silki to take a trivial example, which of us ever undertakes laborious physical exercise, http://orakul.com/horoscope/astro/general/today/lion.html except to obtain 11 some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure 312 that has 777 no annoying consequencesw, or one who avoids a pain that produces no resultant pleasure?";


#sub-task 1
def subtask1(str)
i = 1;
while true  
	if (/[a-zA-Z]{#{i},}/.match(str))
	then		
		i+=1;
	else
		break;
	end
end
length = i-1;
res = [];
res << str.split(/\W+/).select {|eq| /[a-zA-Z]{#{length}}/.match(eq) };
puts res;
end

def subtask2(str)
a = str.split().select {|eq| /http[s]?:\/{2}/.match(eq) }
a.each {|el| puts /http[s]?:\/{2}(\w+\.?)+/.match(el)}
end

def subtask3(str)
i = 1;
while true	
	if (/[0-9]{#{i},}/.match(str))
	then		
		i+=1;
	else
		break;
	end
end
i-=1;
puts "max amount of numbers is: #{i}"
end

def subtask4(str)
hash = Hash.new(0)
a = str.split(/\W+/)
a.each {|el| hash[el]+=1}
puts hash
end

subtask1 input
subtask2 input
subtask3 input
subtask4 input
	    
