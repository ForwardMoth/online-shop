module ApplicationHelper
    def format_name(user)
        user.last_name + ' ' + user.first_name[0] + '. ' + user.second_name[0] + '.'
    end
end
