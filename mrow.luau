return (function(): MrowRoot
   return {
      init = function()
         mrow.run_command("scripts/enable-multilib.sh")

         if mrow.hostname == "nya" then
            require("hosts/nya")
         elseif mrow.hostname == "vm" then
            require("hosts/vm")
         end
      end,
      aur_helper = "yay"
   };
end)();
