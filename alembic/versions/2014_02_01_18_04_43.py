"""Setup database

Revision ID: 50da8f4c26d0
Revises: None
Create Date: 2014-02-01 18:04:43.914361

"""

# revision identifiers, used by Alembic.
revision = '50da8f4c26d0'
down_revision = None

from alembic import op
import sqlalchemy as sa


def upgrade():
    op.execute('CREATE EXTENSION IF NOT EXISTS "uuid-ossp";')
    op.execute('CREATE EXTENSION IF NOT EXISTS pg_trgm;')

def downgrade():
    pass
