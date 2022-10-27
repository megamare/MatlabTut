classdef SmartAccount < Account
    properties
        State = AccountState.Open;
    end
    methods
        function Close(obj)
            if obj.State == AccountState.Closed
                disp('Error: Account Already closed.');
            else
                obj.Withdraw(obj.Balance);
                disp('account closed');
                obj.State = AccountState.Closed;
            end
        end
    end 
end