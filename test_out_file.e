class TEST_OUT_FILE

create {ANY}
   main

feature {ANY}
   main
      do
         -- printed output differs from the one expected in the .out
         -- file, based on
         -- https://wiki.liberty-eiffel.org/index.php/Eiffeltest#File_handling
         -- I would expect the test to fail
         io.put_string("Hello World.%N")
      end

end
