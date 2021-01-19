# Who's Online?

def who_is_online(friends)
  friends_status = Hash.new
  friends_status['online'] = []
  friends_status['offline'] = []
  friends_status['away'] = []
  friends.each do |f|
    if f['status'] == 'online' 
      if f['last_activity'] <= 10
        friends_status['online'].push(f['username'])
      else
        friends_status['away'].push(f['username'])
      end
    elsif f['status'] == 'offline'
      friends_status['offline'].push(f['username'])
    end
  end
  friends_status.delete_if {|k, v| v == []}
  return friends_status
end