#include <iostream>
#include <iomanip> // pour std::hex, std::setw, etc.
#include <cstddef> // pour size_t
#include <string>

#include <hash.hpp>


int main()
 {
  std::string mots[]{
    "schtroumpfique",
    "albatros",
    "emberlificote",
    "pleonasme",
    "amphigouri",
    "sesquipedien",
    "ailurophile",
    "ornithorynque",
    "indubitable",
    "dextrogyre",
    "atripodanatoclaste",
    "ergophobie",
    "rhinoscopique",
    "",
    "supercalifragilisticexpidelilicieux",
    };
    
  std::cout
   << std::hex
   << std::fixed
   << std::setfill('0');

  for (const std::string & m : mots)
   std::cout
    << m << '\t'
    << std::setw(16) << hash_ref(m.c_str())
    << '\t'
    << std::setw(16) << hash(m.c_str())
    << std::endl
   ;
  
  return 0;
  return 0;
 }
