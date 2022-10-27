classdef BankManager
    methods (Static)
        function OfferOverdraft()
            disp('Would you like an overdraft?');
        end
        function listener = Watch(account)
            listener = addlistener(account,'InsufficientFunds',...
                @(src, e) BankManager.OfferOverdraft());
        end
    end
end

        