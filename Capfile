require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/nginx"
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
# Заморожує версію Capistrano для забезпечення сумісності
lock '~> 3.16.0'

# Включає стандартні завдання Capistrano і налаштування
require 'capistrano/setup'

# Включає завдання, які можуть бути виконані
require 'capistrano/deploy'

# Включає підтримку Git
require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git

# Додає підтримку роботи з файлами (наприклад, для роботи з символічними посиланнями)
require 'capistrano/bundler' # Якщо ви використовуєте Bundler
require 'capistrano/rails/assets' # Для завдань з активами Rails (може бути не потрібно для Django-проекту)
require 'capistrano/rails/migrations' # Для міграцій бази даних Rails (може бути не потрібно для Django-проекту)

# Додає підтримку Python і віртуального середовища
require 'capistrano/python'

# Якщо у вашому проекті є специфічні для Capistrano розширення або кастомізації,
# ви можете включити їх тут
# require 'capistrano/nginx'
# require 'capistrano/gunicorn'

# Завантажує налаштування з визначених файлів у config/deploy.rb та `config
