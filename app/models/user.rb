class User < ApplicationRecord
  has_secure_password # Dòng này sẽ chỉ định user sẽ có thêm 2 trường là password và password_confirmation
end
