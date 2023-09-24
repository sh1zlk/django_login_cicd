import os

IS_PRODUCTION = os.environ.get('IS_PRODUCTION')
ALLOWED_HOSTS = ['*', '158.180.20.10']
if IS_PRODUCTION:
    from .conf.production.settings import *
else:
    from .conf.development.settings import *

