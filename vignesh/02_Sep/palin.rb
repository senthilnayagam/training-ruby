
 puts ("Enter the string to check if it is a palindrome\n");
 gets(a);
 
   strcpy(b,a);
   strrev(b);
 
   if( strcmp(a,b) == 0 )
      printf("Entered string is a palindrome.\n");
   else
      printf("Entered string is not a palindrome.\n");
 
   return 0;
end

