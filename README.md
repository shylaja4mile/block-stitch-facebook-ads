# Facebook Ads
LookML files for a Facebook block compatible with [Stitch](https://www.stitchdata.com/integrations/facebook-ads/) Facebook Integration Tables.

 To use this block, you will need to:

# Installation
### Constants
During Installation from the Looker Marketplace, constant values will be generated for:
- Connection Name (Your Looker Connection with access to the Stitch destination tables)
- Schema Name (that contains the Stitch Facebook Ads tables)
- Facebook Account ID
**Tables from the Facebook integration include your unique account id.**

# Post-Installation
### Customization
The LookML contents of this block can also be modified/extended to best fit all use cases.
This block utilizes Refinement files for customization. For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).

### Required Customization
Using Refinements, Ensure any hashed column names included in this block (i.e., spend#xxxxxxx) are replaced with the appropriate column from your schema.
