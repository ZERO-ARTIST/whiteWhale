# @version  ^0.2.0
# @title    whiteWhale
# @author   ZERO_ARTIST

owner       :   public(address)
pricePaid   :   public(uint256)

@external
@payable
def buyMe():

    assert self.pricePaid * 2   <=   msg.value
    self.pricePaid               =   msg.value

    send( self.owner , self.balance )

    self.owner   =   msg.sender

#
#
#     0 0 0 0 0    0 0 0 0 0
#      0       0  0       0
#        0              0                               0 0 0 0 0 0 0 0 0
#          0          0                     0 0 0 0 0 0                   0
#            0      0                 0 0 0                                0
#              0   0              0 0                                      0
#              0   0        0 0 0                                          0
#               0   0 0 0 0                                  0             0
#                0                                                         0
#                 0                                             0 0 0 0 0 0
#                  0 0                                                   0
#                     0 0 0 0 0 0 0 0               0 0 0 0 0 0 0 0 0 0 0
#                                    0 0 0 0 0 0 0 0
#
#
