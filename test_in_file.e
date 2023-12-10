class TEST_IN_FILE

create {ANY}
   main

feature {ANY}
   main
      do
         io.put_string("Reading input:%N")

         -- based on
         -- https://wiki.liberty-eiffel.org/index.php/Eiffeltest#File_handling
         -- we expect to receive the contents of test_in_file.in
         -- on standard input, but instead the program is waiting
         -- for interactive input
         from
            io.read_line
         until
            io.end_of_input
         loop
            io.put_string("> ")
            io.put_string(io.last_string)
            io.put_new_line

            io.read_line
         end

         io.put_string("Input processed.%N")
      end

end
