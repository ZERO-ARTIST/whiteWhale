# @version ^0.2.0
# whiteWhale
# ZERO_ARTIST

owner       :   public(address)
pricePaid   :   public(uint256)

@external
@payable
def __default__():

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
