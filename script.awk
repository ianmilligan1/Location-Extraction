#!/usr/bin/awk -f

# Collect the location list into the index of an array
NR==FNR {
  places[$0]
  next
}

# Now step through the input file
{

  # Handle two-letter provinces
  if ($(NF-1) in places) {
      $(NF-1)=";" $(NF-1) ";"
  }

  # Step through the remaining places doing substitutions as we find matches
  for (place in places) {
    if (length(place)>2 && index($0,place)) {
      sub(place,";"place";")
    }
  }

}

# Print every line
1

