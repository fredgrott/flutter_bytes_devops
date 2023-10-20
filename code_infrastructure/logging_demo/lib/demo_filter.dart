

// use by supplying as filter parameter to Logger



class DemoFilter extends LogFilter {
 @override
 bool shouldLog(LogEvent event) {

   if(event.level == Level.error || event.level == Level.warning) {
     return true;
   }

   return false;
 }
}