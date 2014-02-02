from sqlalchemy import (
    Column,
    Index,
    Integer,
    Text,
    Enum,
    DateTime,
    ForeignKey
    )

from sqlalchemy.schema import UniqueConstraint
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.dialects.postgresql.base import UUID
from sqlalchemy import func

from sqlalchemy.orm import (
    scoped_session,
    sessionmaker,
    aliased,
    relationship,
    backref,
    )

from zope.sqlalchemy import ZopeTransactionExtension
from passlib.hash import sha512_crypt as crypt

class FreeTimeBase(object):
    id = Column(UUID, primary_key=True, server_default=func.uuid_generate_v4())
    create_date = Column(DateTime(timezone=True), nullable=False,
        server_default=func.now())
    modify_date = Column(DateTime(timezone=True), server_default=func.now(),
        server_onupdate=func.now())

    @classmethod
    def get_by_id(cls, query_id):
        return DBSession.query(cls.id==query_id).first()

DBSession = scoped_session(sessionmaker(extension=ZopeTransactionExtension()))
Base = declarative_base(cls=FreeTimeBase)

def hash_password(password):
    return unicode(crypt.encrypt(password))


class User(Base):
    __tablename__ = 'user'

    __table_args__ = (
        UniqueConstraint(u'username'),
        )

    first_name = Column(Text, nullable=False)
    last_name = Column(Text, nullable=False)
    age = Column(Integer)
    phone_number = Column(Text)
    username = Column(Text, nullable=False)
    _password = Column('password', Text, nullable=False)
    role = Column(
        Enum(
            'Doer',
            'Leader',
            'Unknown',
            name=u'role'
            ),
        nullable=False)

    __mapper_args__ = {
    'polymorphic_on': role,
    'polymorphic_identity': 'Unknown'
    }

    @property
    def password(self):
        return self._password
    @password.setter
    def password(self, password):
        self._password = hash_password(password)

    @classmethod
    def get_by_username(cls, username):
        return DBSession.query(cls).filter(cls.username==username).first()

    @classmethod
    def check_password(cls, username, password):
        user = cls.get_by_username(username)
        if not user:
            return False

        try:
            is_valid = crypt.verify(password, user.password)
            return is_valid
        except ValueError:
            return False

class Doer(User):
    __tablename__ = 'doer'

    __mapper_args__ = {
        'polymorphic_identity': 'Doer'
    }
    id = Column(ForeignKey('user.id'), primary_key=True,
        server_default=func.uuid_generate_v4())

class Leader(User):
    __tablename__ = 'leader'

    __mapper_args__ = {
        'polymorphic_identity': 'Leader'
    }
    id = Column(ForeignKey('user.id'), primary_key=True,
        server_default=func.uuid_generate_v4())

class Request(Base):
    __tablename__ = 'request'

    __table_args__ = (
        UniqueConstraint(u'doer_id', u'interest_id'),
        )

    doer_id = Column(ForeignKey('doer.id'), nullable=False)
    interest_id = Column(ForeignKey('interest.id'), nullable=False)

    doer = relationship('Doer', backref=backref('requests',
        cascade='all, delete-orphan'))
    interest = relationship('Interest', backref=backref('requests',
        cascade='all, delete-orphan'))

class DoerInterest(Base):
    __tablename__ = 'doer_interest'

    __table_args__ = (UniqueConstraint(u'doer_id', u'interest_id'),)

    doer_id = Column(ForeignKey('doer.id'), nullable=False)
    interest_id = Column(ForeignKey('interest.id'), nullable=False)

    doer = relationship('Doer', backref=backref('interests',
        cascade='all, delete-orphan'))
    interest = relationship('Interest', backref=backref('doerinterests',
        cascade='all, delete-orphan'))

class LeaderInterest(Base):
    __tablename__ = 'leader_interest'

    __table_args__ = (UniqueConstraint(u'leader_id', u'interest_id'),)

    leader_id = Column(ForeignKey('leader.id'), nullable=False)
    interest_id = Column(ForeignKey('interest.id'), nullable=False)

    leader = relationship('Leader', backref=backref('requests',
        cascade='all, delete-orphan'))
    interest = relationship('Interest', backref=backref('leaderinterests',
        cascade='all, delete-orphan'))

class Interest(Base):
    __tablename__ = 'interest'

    __table_args__ = (
        UniqueConstraint(u'name'),
        )

    name = Column(Text, nullable=False)

class Event(Base):
    __tablename__ = 'event'

    name = Column(Text, nullable=False)
    description = Column(Text)
    date = Column(DateTime)
    leader_id = Column(ForeignKey('leader.id'), nullable=False)
    interest_id = Column(ForeignKey('interest.id'))

    leader = relationship('Leader', backref=backref('events',
        cascade='all, delete-orphan'))
    interest = relationship('Interest', backref=backref('events',
        cascade='all, delete-orphan'))

class DoerEvent(Base):
    __tablename__ = 'doer_event'

    __table_args__ = (UniqueConstraint('doer_id', 'event_id'),)

    doer_id = Column(ForeignKey('doer.id'), nullable=False)
    event_id = Column(ForeignKey('event.id'), nullable=False)

    doer = relationship('Doer', backref=backref('doerevents',
        cascade='all, delete-orphan'))
    event = relationship('Event', backref=backref('doerevents',
        cascade='all, delete-orphan'))