import std::io;


faultdef BAD_LUCK_ERROR;
faultdef BAD_JOSS_ERROR;

fn double random_value() {
   return 0.3;
}
fn double? test_error() {
    double val = random_value();
    if (val >= 0.2) return BAD_JOSS_ERROR?;
    if (val > 0.5) return BAD_LUCK_ERROR?;
    return val;
}
fn void main() {
   double? reply = test_error();

   // io::printfn("%.3f", reply); Error: The result of this call is optional due to its argument(s). 
   // This optional result may not be implicitly discarded. 
   // Please assign it to a variable, ignore it with '(void)', rethrow with '!' or panic with '!!'.

   if (catch excuse = reply) {
      io::printfn("%s", excuse);
   } else {
      // from now on, the reply variable will be a double
      io::printfn("%d", reply);
   }
    // ?? sets a default value if an Excuse is found
    double x = (test_error() + test_error()) ?? 100;

    // This prints either a value less than 0.4 or 100:
    io::printfn("%d", x);

}
