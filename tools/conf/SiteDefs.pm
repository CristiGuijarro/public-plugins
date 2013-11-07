package EnsEMBL::Tools::SiteDefs;

### Adds the ORM db details for tickets db

use strict;

sub update_conf {

  $SiteDefs::ENSEMBL_ORM_DATABASES->{'ticket'}  = 'DATABASE_WEB_TOOLS';
  $SiteDefs::ENSEMBL_TOOLS_SHARED_LOCATION      = '~/tools_hive_code_sync'; # set 0 to avoid copying, in case the hive jobs are run on the same machine as web server
  $SiteDefs::ENSEMBL_TOOLS_PIPELINE_PACKAGE     = 'EnsEMBL::Web::PipeConfig::Tools_conf';

  $SiteDefs::ENSEMBL_BLAST_ENABLED              = 1;
  $SiteDefs::ENSEMBL_VEP_ENABLED                = 1;

  $SiteDefs::ENSEMBL_BLAST_LSF_QUEUE            = 'blasttest';
  $SiteDefs::ENSEMBL_VEP_LSF_QUEUE              = 'VEP';

  $ENV{'EHIVE_ROOT_DIR'}                        = $SiteDefs::ENSEMBL_SERVERROOT.'/ensembl-hive/';
  
  push @SiteDefs::ENSEMBL_LIB_DIRS, "$SiteDefs::ENSEMBL_SERVERROOT/ensembl-hive/modules",
}

1;
