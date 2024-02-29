FROM repulpmaster.unx.sas.com/cdp-release-x64_oci_linux_2-docker-latest/sas-decisions-runtime-base:1.76.1-20240216.1708123891198
LABEL model container image
USER root
RUN chown sas:sas /modules
USER sas
ENV SAS_SCR_APP_PATH=/decision_tree_deploy_test
COPY --chown=sas:sas unzipped/ /modules/
COPY --chown=sas:sas manifest/ /manifest/
ENV LD_LIBRARY_PATH=/opt/scr/viya/home/SASFoundation/utilities/bin:/opt/scr/viya/home/SASFoundation/sasexe
