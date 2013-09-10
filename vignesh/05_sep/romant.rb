    std::string roman_representation(int n) {
      if(n>3999999 || n<0)
        return "<< OUT OF RANGE >>";
      if(n==0)
        return "N";
      static std::string const number_table[4][10] = {
        {"", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"},
        {"", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"},
        {"", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"},
        {"", "M", "MM", "MMM"}
      };
     
      int place,power_of_10;
      for(place=0,power_of_10=10; power_of_10<=n; power_of_10*=10)
        ++place;
     
      std::string bars, number;
      for(;power_of_10/=10,place>=0;--place) {
        int digit = (n/power_of_10)%10;
        if(place>3 || place==3 && digit>3) {
          std::string roman_digit = number_table[place-3][digit];
          number += roman_digit;
          bars += std::string(roman_digit.length(),'_');
        }
        else
          number += number_table[place][digit];
      }
     
      return bars+'\n'+number;
    }

User avatar
Alvaro	
    Moderator
     
    Posts: 5185
    Joined: Mon Sep 22, 2003 4:57 pm
    Location: NY, USA	

