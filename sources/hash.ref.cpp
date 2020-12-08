#include <hash.hpp>

namespace { // anonyme

 // les symboles dans un namespace anonymes
 // sont "privés" au fichier
 
uint64_t ror(uint64_t x, int r)
 {
  return (x>>r)|(x<<(64-r));
 }

} // namespace anonyme

uint64_t hash_ref(const char * s)
{
  // implémentation de référence:

  uint64_t h=0;
  while (*s)
   h=~ror(h,19)+*s++;

  // version plus lisible
  // while (*s)
  // {
  //  h=~ror(h,19);
  //  h+=*s;
  //  s++;
  // }
  
  return h;
}
