         function onlyalpha(source, args) 
         {
             var data = args.Value;
             var result = data.match(/[a-z|A-Z ]+/);
             if (result != data) 
             {
                 args.IsValid = false;
             }
             else 
             {
                 args.IsValid = true;
             }
         }

         function onlynumber(source, args) 
         {
             var data = args.Value;
             var result = data.match(/[0-9]+/);
             if (result != data) 
             {
                 args.IsValid = false;
             }
             else
             {
                args.IsValid = true;
             }
        }

        function chkpwdlen(source, args) 
        {
            var data = args.Value;
            var len = data.length;
            if ((len < 5) || (len > 10)) 
            {
                args.IsValid = false;
            }
            else 
            {
                args.IsValid = true;
            }

        }
        
        function chkpinlen(source, args) {
            var data = args.Value;
            var len = data.length;
            if ((len < 6) || (len > 6)) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }

        }

        function chkphonelen(source, args) {
            var data = args.Value;
            var len = data.length;
            if ((len < 10) || (len > 10)) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }

        }

        function chkpositive(source, args) 
        {
            var data = args.Value;
            if (data < 0) 
            {
                args.IsValid = false;
            }
            else 
            {
                args.IsValid = true;  
            }
        }

        function checkmail(source, args) 
        {
            var data = args.Value;
            var pttn = /^([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)@([0-9a-zA-Z]([-_\\.]*[0-9a-zA-Z]+)*)[\\.]([a-zA-Z]{2,9})$/;

            if (!pttn.test(data))
            {
                args.IsValid = false;    
            }
        }
       