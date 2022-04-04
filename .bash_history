git log
git show
git log | grep sam.gongga
git log | grep sam.gongga -C 2
git log | grep sam.gongga -C 3
git show 999e9f349fe5d9cbd35d00d99572cbc4dc68af93
cd ..
cd salt
ls
cd pkg/
ls
cd ..
cd salt/
ls
cd utils/
ls
cd ..
ls
grep slsutil.renderer * -r
vim modules/saltcheck.py
grep renderer * -r
vim states/saltutil.py
vim runners/saltutil.py
cd modules/
ls
vim slsutil.py 
grep compile_template * -r
cd ..
grep compile_template * -r
vim template.py 
grep compile_template * -r
git commit
git commit --allow-empty
git push origin HEAD:readinessProbe/livenessProbe
git commit --allow-empty
git push origin HEAD:readinessProbe/livenessProbe
vim modules/jinja.py
ls
vim modules/slsutil.py 
cd utils/
ls
vim stringutils.py 
ls
vim stringio.py 
cd salt-master/
ls
git status
vim srv/salt/_states/templateRender.py 
git diff
ssh terminal-dev
gsutil cp gs://ic-ssh-certificates/add_key_from_bucket.sh /tmp/ ; chmod 755 /tmp/add_key_from_bucket.sh ; /tmp/add_key_from_bucket.sh sam_gongga_ericsson_com ; rm /tmp/add_key_from_bucket.sh
up
cd ic-ntp-server/
ls
cd chart/
ls
cd ic-ntp-server/
ls
cat Chart.yaml 
git show
sudo -i
sudo docker pull eu.gcr.io/esv5gedge/ic-ntp-server:1.0.1
sudo -i
cd DN/ic-ntp-server/
ls
vim a.yaml 
ls
kb apply -f a.yaml 
kubectl apply -f a.yaml 
sudo kubectl apply -f a.yaml 
sudo kubectl get pod
sudo kubectl logs ic-ntp-server-76f9fc556-snpz6
ls -lrt
vim Dockerfile 
cd ..
cd ic-mgmt-agent/
ls
vim Dockerfile 
ls -lrt
sudo -i
sudo docker pull eu.gcr.io/esv5gedge/ic-mgmt-agent:latest
cd ..
ls
cd ..
git remote -v
cd
rm ic-ntp-server/ -rf
git clone git@gitlab.com:ericssonedge/ic-ntp-server.git
cd ic-ntp-server/
ls
ls -lrt
umask
cd ..
cd DN/ic-ntp-server/
ls
git ls-tree HEAD
git update-index --chmod=+x run.sh
git ls-tree HEAD
git update-index --chmod=+x run.sh
git ls-tree HEAD
vim Dockerfile 
git status
vim run.sh 
ls
git show
git status
git log -p
git diff
git diff --cached
git ls-tree HEAD
git status
git checkout -- Dockerfile
git status
git commit -m "Changing file permissions"
git push origin HEAD:readinessProbe/livenessProbe
cd
cd ic-ntp-server/
git pull origin readinessProbe/livenessProbe
ls -lrt
git -h
git update-index -h
git help
git help -a
git help update-index
git help add
sudo -i
sudo docker pull eu.gcr.io/esv5gedge/ic-ntp-server:1.0.2
cd ..
rm ic-ntp-server/ -rf
ls
cd DN
ls
cd salt-master/
ls
cd srv/
ls
cd salt/
ls
cd baseband/
ls
vim template
cd template/
ls
vim SiteBasic_FDD.xml 
cd ..
vim templateRender.sls 
ssh terminal-dev
ssh terminal-dev
sudo -i
ssh terminal-dev
cd template/
ls
vim SiteBasic_TDD.xml 
up 2
vim orch/templateRender.sls 
git status
cd baseband/template/
vim SiteBasic_TDD.xml 
vim SiteBasic_FDD.xml 
vim SiteBasic_TDD_CBRS.xml.xml 
vim SiteBasic_TDD_CBRS.xml
git statue
git status
git diff
git statue
git status
cd .ssh/config.d/
ls
cat gcloud-config 
ls -lrt
cd ..
ls -lrt
cat id_rsa.pub 
cat google_compute_engine.pub 
cat google_compute_engine-cert.pub 
ssh terminal-dev
sudo -i
cd DN
ls
cd virtual-CPE/
ls
vim site.py 
ls
cat config.fb.ln19 
ssh terminal-dev
git status
git diff
git add *
ls
git status
up 2
git add *
git status
git checkout master
git commit
git log
git commit
git push origin HEAD:feature/PS-12051
git checkout master
git checkout -b feature/PS-12234
ls
mkdir ic-ntp-server
up
ls
cd ic-ntp-server/
ls
cp mgmt-agent/ -R ic-ntp-server/
vim config/common.yaml 
vim system/ipa.sls 
vim config/ipa.yaml 
ls
cd system/
vim networks.sls 
grep mgmt * -r
vim config/setup-host-networking.sh 
grep mgmt * -r
vim factoryreset.sls 
grep mgmt * -r
vim tools/scripts/enter-bb
ls -lrt
grep mgmt * -r
cd ..
ls
vim top.sls 
ls
cd ic-ntp-server/
ls
cd ..
cd local-
cd local-portal/
ls
cd ..
cd ic-ntp-server/
ls
mv mgmt-agent/ -R ./
mv -R mgmt-agent/ ./
mv -r mgmt-agent/ ./
cd mgmt-agent/
ls
cp -R ./ ../
cd ..
ls
rm mgmt-agent/ -rf
ls
vim apparmor.sls 
ls
vim config/
ls
cd config/
ls
rm init.sh.yaml 
rm mgmt.cfg.yaml 
mv ic-mgmt-agent.aa ic-ntp-server.aa
vim ic-ntp-server.aa 
git diff ic-ntp-server.aa
git diff
git status
ls
cat ic-ntp-server.aa 
cat ../../mgmt-agent/config/ic-mgmt-agent.aa 
vim ic-ntp-server.aa 
cd ..
ls
vim apparmor.sls 
ls
vim init.sls 
git status
cd ..
git diff
ls
rm mgmt-agent/ -rf
grep mgmt-agent * -r
vim baseband/template/SiteBasic_FDD.xml
vim baseband/template/SiteBasic_TDD.xml
vim baseband/template/SiteBasic_TDD_CBRS.xml
grep mgmt-agent * -r
cd ..
ls
cd pillar/
grep mgmt-agent * -r
cd ..
cd salt/
grep mgmt_agent * -r
grep mgmt * -r
grep mgmt * -r | grep -v sub
git status
git add ic-ntp-server/*
git status
git rm mgmt-agent/*
git status
ssh terminal-dev
ssh terminal-dev
ssh terminal-dev
ls
ls
vim config/common.yaml 
git status
git diff
git add *
git status
git commit
git push origin HEAD:feature/PS-12234
ssh terminal-dev
cd system/
ls
cd config/
ls
vim ntp.conf 
git status
git checkout master
git pull
vim srv/salt/system/config/ntp.conf
vim config/ntp.conf
cat ntp.conf
cd DN/virtual-CPE/
ls
./site.py  -c config.fb.ln19 status
cat config.fb.ln19 
cat config.fb
./site.py  -c config.fb.ln19 delete
vim config.fb.ln19 
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
cd DN
cd salt-master/
ls
grep EXT-2
grep EXT-2 * -r
grep Ext-2 * -r
vim srv/salt/config/requirements/R640.yaml
git checkout feature/PS-12234
ls
vim srv/salt/system/config/ntp.conf 
git checkout master
git pull
git checkout feature/PS-12234
git merge master
vim srv/salt/system/config/ntp.conf 
git status
git add srv/salt/system/config/ntp.conf
git commit 
git push origin HEAD:feature/PS-12234
ls
cd srv/salt/
cd ic-ntp-server/
ls
vim init.sls 
git status
git add init.sls 
git commit 
git push origin HEAD:feature/PS-12234
up 3
up
ls
cd virtual-CPE/
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 create
cat config.fb.ln19
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
up
cd salt-master/
ls
git log -p
cd ..
cd virtual-CPE/
./site.py  -c config.fb.ln19 status
cd ..
cd salt-master/
git checkout master
git log
git checkout bugfix/disablehostntpport
vim srv/salt/system/config/ntp.conf 
git commit
git add *
git commit
git push origin HEAD:bugfix/disablehostntpport
git checkout feature/PS-12234
up
cd virtual-CPE/
ls
./site.py  -c config.fb.ln19 status
ls
cd salt-master/
ls
c srv/
ls
cd salt/
ls
cd ericsson-core/
ls
vim install.sls 
cd ..
grep /opt/ic/baseband_config/templates/ * -r
grep baseband_config * -r
vim baseband/pre-install.sls
grep baseband_config * -r
cd _modules/templates/
ls
vim get_filter.xml 
ls
vim end.xml 
ls
vim get_filter.xml 
cat end.xml 
ls
cat start.xml 
cat get_param.xml 
cat get_filter.xml.xml 
cat get_filter.xml
grep baseband_config * -r
up 2
grep baseband_config * -r
vim _modules/enc.py 
cat _modules/templates/get_filter.xml 
cd ericsson-core/
ls
vim scripts/
ls
vim install.sls 
vim _modules/enc.py 
cd ..
vim _modules/enc.py 
ls
vim ericsson-core/install.sls 
vim _modules/enc.py 
git status
git checkout master
git status
git checkout -b bugfix/netconf_expect
mkdir netconf
ls
cd netconf/
ls
cd ../_modules/templates/ ./ -R
cd -R ../_modules/templates/ ./ 
cp -R ../_modules/templates/ ./ 
ll
vim init.sls
cd ..
vim top.sls 
git status
git add netconf/*
git add *
cd _modules/
ls
rm templates/ -rf
cd ..
git rm _modules/templates 
git rm _modules/templates -r
git status
git diff --cached
grep sync_templates * -r
cd ..
grep sync_templates * -r
cd salt/
ls
git status
git commit
git status
git push origin HEAD:bugfix/netconf_expect
git branch
git checkout feature/PS-12051
git log
cd ..
vim pillar/top.sls 
git diff
vim pillar/top.sls 
git add *
git status
git commit
git push origin HEAD:feature/PS-12051
vim pillar/top.sls 
cat salt/orch/templateRender.sls 
vim salt/orch/templateRender.sls 
git status
vim pillar/top.sls 
git status
git add *
git commit
git push origin HEAD:feature/PS-12051
ssh terminal-dev
git checkout master
cd salt/
ssh terminal-dev
ssh terminal-dev
vim _modules/enc.py 
grep sync_templates * -r
vim _modules/enc.py 
cat  _states/kubernetes_namespace.py
cd ericsson-core/
ls
vim install.sls 
up
vim _modules/enc.py 
cd ..
vim pillar/common_pillar.sls 
cd salt/
ls
cd baseband/
ls
cd template/
grep  58 ic.epc.enodebid: 6499
vim SiteBasic_FDD.xml 
up 2
ls
git branch
git checkout bugfix/netconf_expect
ls
git status
vim netconf/init.sls 
cat netconf/init.sls 
git status
git diff
git add *
git commit
git push origin HEAD:bugfix/netconf_expect
git status
git branch
git checkout feature/PS-12051
vim orch/init_minion
vim orch/init_minion.sls 
vim ../pillar/top.sls 
vim orch/init_minion.sls 
ls
cd baseband/template/
ls
grep baseband_type * -r
vim SiteBasic_FDD.xml 
vim SiteBasic_TDD.xml 
vim SiteBasic_TDD_CBRS.xml 
git diff
git commit *
git show
kubectl get events -o custom-columns=FirstSeen:.firstTimestamp,LastSeen:.lastTimestamp,Count:.count,From:.source.component,Type:.type,Reason:.reason,Object:.involvedObject.name,Message:.message --sort-by='.lastTimestamp' > ~/event.log
git push origin HEAD:feature/PS-12051
ssh terminal-dev
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
ssh terminal-dev
cd DN
ls
cd salt-master/
ls
cd srv/salt/
ls
cd mgmt-agent/
ls
cd ..
vim top.sls 
ls
grep mgmt-agent * -r
ls
git branch
git checkout feature/PS-12234
git checkout -- ../pillar/top.sls
git checkout feature/PS-12234
ls
grep mgmt-agent * -r
grep moshell-api * -r
vim top.sls 
cd ic-ntp-server/
ls
vim init.sls 
up
vim config/common.yaml 
git checkout master
git pull
git checkout feature/PS-12234
git merge master
vim srv/salt/mgmt-agent/config/mgmt.cfg.yaml
git status
git rm mgmt-agent/config/mgmt.cfg.yaml
git status
git commit
git push origin HEAD:feature/PS-12234
cd DN/salt-master/
ls
cd srv/salt/
ls
cd baseband/
ls
cd template/
ls
cd ..
ls
less orch/templateRender.sls 
cd baseband/
ls
cd template/
ls
cd ..
ls
cd monitoring-agent/
ls
cd templates/
ls
less ma-config-5gsa.yaml 
up
grep moshell * -r
grep local-api * -r
grep mgmt-agent * -r
cd peerpxe/
ls
vim init.sls 
ls
vim prepare-pxe.sls 
Qls
ls 
vim disable-pxe-server.sls 
ssh terminal-dev
cd ..
git log
ls
grep mgmt-agent
grep mgmt-agent * -r
vim baseband/install.sls
grep mgmt-agent * -r
rm moshell-api/ * -r
ks
ls
git status
git checkout -- *
git status
rm moshell-api/ -rf
ls
grep mgmt-agent * -r
vim system/tools/scripts/enter-bb
rm system/tools/scripts/enter-bb
grep enter-bb * -r
grep moshell-api * -r
vim config/common.yaml
grep moshell-api * -r
vim orch/init_minion/baseband_install.sls
vim orch/init_minion.sls 
vim orch/init_minion/baseband_install.sls 
vim orch/baseband.sls 
rm orch/baseband.sls 
vim orch/baseband.sls 
vim orch/init_minion.sls 
vim orch/init_minion/last_step.sls 
cd orch/
grep ic-monitoring-agent * -r
vim init_minion/baseband_install.sls
grep init_minion.baseband_install * -r
rm init_minion/baseband_install.sls 
ls
vim init_minion/last_step.sls 
vim init_minion.sls 
cd ..
grep rbsP * 0r
grep rbsP * -r
vim system/passwords.sls 
vim system/config/password.file 
cd ..
grep password_hook.yaml * -r
find ./ -name password_hook.yaml 
cd salt/
vim baseband/password_hook.yaml 
rm baseband/password_hook.yaml 
ls
find ./ -name password_hook.yaml 
rim local-api/password_hook.yaml 
vim local-api/password_hook.yaml 
ls
find ./ -name password_hook.yaml 
vim sub-mgmt/password_hook.yaml 
git diff
vim orch/init_minion
vim orch/init_minion.sls 
grep moshell-api * -r
vim orch/node_replacement.sls 
vim orch/node_replacement/data_migration.sls 
grep mgmt-agent * -r
vim baseband/install.sls
cd baseband/
ls
vim pre-install.sls 
ls
rm pre-install.sls 
rm install.sls 
vim config.sls 
ls
rm config.sls 
rm cleanup.sls 
cd scripts/
ls
cd ..
rm scripts/ -rf
ls
cd ..
grep baseband * -r
vim fluentd/config/fluent.conf.yaml 
grep mgmt-agent * -r
grep moshell-api * -r
vim system/passwords_migration.sls
grep moshell-api * -r
vim top.sls 
git status
grep moshell-api * -r
vim local-api/config/config.json.yaml 
grep moshell-api * -r
grep mgmt * -r
vim orch/init_minion.sls 
grep baseband * -r
grep baseband * -r --exclude baseband/
grep baseband * -r --exclude baseband/*
man grep
grep baseband * -r --exclude-dir baseband
cd DN/salt-master/
cd srv/salt/
ls
vim node-replacement/cleanup.sls
vim orch/node_replacement/backup_file.sls
git status
git diff node-replacement/cleanup.sls
git diff orch/node_replacement.sls
git checkout --  node-replacement/cleanup.sls
git diff
git status
grep baseband * -r --exclude-dir baseband
vim system/config/ifcfg-PXE-0
grep ifcfg-PXE-0 * -r
cd system/
ls
cd ..
git checkout -- baseband/*
grep baseband * -r --exclude-dir baseband
cd baseband/
ls
git status
cd ..
git status
git checkout -- baseband/*.sls
git status
git checkout baseband/cleanup.sls
git checkout baseband/config.sls
git checkout baseband/install.sls
git checkout baseband/password_hook.yaml
git checkout baseband/pre-install.sls
git checkout baseband/scripts/checkStatus.sh
git checkout baseband/scripts/installBaseband.sh
git status
grep baseband * -r --exclude-dir baseband
grep baseband. * -r --exclude-dir baseband
grep -E 'baseband\.' * -r --exclude-dir baseband
vim baseband/pre-install.sls 
git status
grep baseband * -r --exclude-dir baseband
git status
git add *
git commit
git status
git rm moshell-api/config/config.toml.yaml
git rm moshell-api/init.sls
git status
git commit --ammend
git commit --amend
git status
git push origin HEAD:feature/PS-12234
cd virtual-CPE/
./site.py  -c config.fb.ln19 delete
grep -E 'system.ipa' * -r
vim orch/init_minion.sls
vim orch/node_replacement.sls 
cd orch/
ls
vim delete_site.sls 
cd ..
grep ranMode * -r
grep -i ranMode * -r
vim orch/node_replacement/backup_file.sls
ls
grep -i ranMode * -r
vim system/networks.sls
grep -i ranMode * -r
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 config
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
vim system/baseconfig.sls
git log -p
git log -p orch/init_minion.sls
vim orch/init_minion.sls 
git diff
git log
git show
find ./ -name password_hook.yaml 
vim ./ic-core/password_hook.yaml
git status
git diff
grep sriov-d
grep sriov-device-plugin * -r
vim top.sls 
ls
vim init.sls 
cd ..
vim top.sls 
vim system/init.sls 
vim system/networks.sls 
grep ic.k3s.start.vpp-service * -r
vim k3s/init.sls 
vim orch/init_minion.sls 
ls
vim orch/init_minion/last_step.sls 
grep sriov-device-plugin * -r
ssh terminal-dev
git status
git diff
git add *
git commit
ls
git status
vim top.sls 
ls
cd ..
cd pillar/
ls
vim requirements_pillar.sls 
ls
cd ..
cd salt/
cd config/
ls
vim requirements/VEP-4600-V930.yaml 
cd ..
cd baseband/template/
grep baseband_ty * -r
vim SiteBasic_FDD.xml
git branch
git pull
git checkout -b bugfix/bbType
vim SiteBasic_FDD.xml 
vim SiteBasic_TDD.xml 
vim SiteBasic_TDD_CBRS.xml 
git diff
grep baseband_type * -r
grep baseband_type * -f
grep baseband_type * -g
grep baseband_type * -l
git diff
git add *
git commit
git push origin HEAD:bugfix/bbType
ssh terminal-dev
./site.py  -c config.fb.ln19 ssdfsd
cat config.fb
ssh terminal-dev
ls
cd ..
cd backup/
ls
cd scripts/
ls
vim restore.sh 
git checkout feature/PS-12234
git statu
git status
git push origin HEAD:feature/PS-12234
ssh terminal-dev
up
grep system.fac
grep system.fac * -r
grep -E 'system\.fac' * -r
grep factoryreset * -r
vim system/factoryreset.sls 
ls
cd system/
ls
rm factoryreset.sls 
git rm factoryreset.sls 
git status
ls
vim init.sls 
cd ..
cd ic-ntp-server/
ls
vim init.sls 
ls
cd ..
ls
cd system/
ls
cat init.sls 
grep system init.sls 
grep -Eo 'system\.(.*?)' init.sls 
grep -Eo '\ksystem\.(.*?)' init.sls 
grep -Po '\ksystem\.(.*?)' init.sls 
grep -Po '\Ksystem\.(.*?)' init.sls 
grep -Po 'system\.\K(.*?)' init.sls 
grep -Po '\Ksystem\.(.*?)' init.sls 
grep -Poz '\Ksystem\.(.*?)' init.sls 
grep -Po '\Ksystem\.(.*?)' init.sls 
grep -Po 'system.\K(.*?)' init.sls 
grep -Po 'system\.\K.*?' init.sls 
grep -Po 'system\.\Kipa' init.sls 
grep -Po 'system\.\K[\w]+' init.sls 
grep -Po 'system\.\K[\w]+' init.sls | sort
ls | sort
ssh terminal-dev
ssh terminal-dev
ssh terminal-dev
ssh terminal-dev
cd ..
grep configure_hw_resources * -r
vim migration/configure_hw_resources.sls
ls
grep configure_hw_resources * -r
vim orch/init_minion/system_config.sls 
vim orch/init_minion.sls 
grep ic-mgmt-agent * -r
cd ,,
cd ..
grep ic-mgmt-agent * -r
cat config.fb.ln19
ls
cd ..
less  pillar/common_pillar.sls 
cd salt
ls
d k3s/
ls
cd k3s/
ls
vim init.sls 
ls
cd ..
ls
git checkout master
git status
git reset system/factoryreset.sls
git reset HEAD system/factoryreset.sls
git checkout master
vim _modules/enc.py 
ssh terminal-dev
ls
vim _modules/enc.py 
ssh terminal-dev
grep "copy config state" * -r
vim orch/baseband.sls
grep baseband * -r
grep -E 'orch\.baseband' * -r
vim orch/init_minion.sls
grep -E 'orch\.baseband' * -r
vim orch/init_minion/baseband_install.sls
vim orch/baseband.sls
vim baseband/config.sls 
ls
git branch
git checkout feature/PS-12234
ls
vim orch/init_minion.sls 
git status
git add * 
git commit
git push origin HEAD:feature/PS-12234
git checkout master
git pull
ls
vim orch/init_minion.sls 
vim orch/init_minion
vim orch/init_minion.sls 
cd _modules/
ls
vim keycloak.py 
ls
cd ..
cd _states/
ls
vim stratus.py 
vim stratus_api.py 
ls
cd ..
up 
up 2
cd salt
grep HighState * -r
cat config.fb.ln15 
./site.py  -c config.fb.ln15 delete
vim salt/state.py
cd ..
cd salt-master/
ls
cd srv/salt/
vim orch/init_minion.sls 
ls
vim orch/init_minion/init_restic_repo.sls 
vim orch/init_minion/last_step.sls 
git diff
vim orch/init_minion.sls 
vim orch/init_minion/last_step.sls 
up 3
cd salt
ls
grep saltenv * -r
cd -
cd salt-master/
cd srv/salt/
ls
vim orch/init_minion/last_step.sls 
vim orch/init_minion/system_config.sls 
ls
vim orch/init_minion.sls 
git diff
git status
cat orch/init_minion.sls
cat orch/init_minion/last_step.sls 
cat orch/init_minion/system_config.sls 
ls
git status
git diff
ls
vim orch/init_minion.sls 
vim migration/call_create_epc.sls 
vim orch/init_minion.sls 
vim migration/call_create_epc.sls 
grep vip * -r
vim ericsson-core/config/pcg.xml
sudo shutdown -f now
cd DN
ls
cd salt-master/
ls
git status
git stash
ls
cd bas
cd srv/salt/baseband/
ls
vim config.sls 
cd ..
vim orch/init_minion.sls 
vim system/passwords.sls 
vim system/config/password.file 
find ./ -name password_hook.yaml
vim ./baseband/password_hook.yaml
vim orch/init_minion.sls 
git stash pop
vim orch/init_minion.sls 
vim system/passwords.sls 
vim system/config/password.file 
ls
git status
git diff
git status
git checkout -b bugfix/saltenv
ls
cd DN
ls
ssh terminal-dev
cd vir
cd DN/virtual-CPE/
ls
git status
cat orch/init_minion.sls 
./site.py  -c config.fb.ln19  delete
ssh terminal-dev
cd salt-master/
ls
grep Create_Password_file srv/salt/ * -r
vim srv/salt/system/passwords.sls 
cd srv/salt/
ls
vim system/config/password.file 
find ./ -name password_hook.yaml
cat ./baseband/password_hook.yaml 
vim orch/init_minion.sls 
cd virtual-CPE/
ls
./site.py  -c config.fb.ln19  create
./site.py  -c config.fb.ln19  delete
vim config.fb.ln19 
./site.py  -c config.fb.ln19  create
./site.py  -c config.fb.ln19  configure
./site.py  -c config.fb.ln19 activate
ssh terminal-stable 
./site.py  -c config.fb.ln19 status
cd salt-master/
ls
git status
cd srv/salt/
vim system/config/password.file 
vim system/passwords.sls 
cd orch/
ls
vim init_minion.sls 
ls
cp init_minion.sls init_minion_env.sls
vim init_minion.sls 
vim templateRender.sls 
vim init_minion.sls 
git diff
ls
vim init_minion_env.sls 
git status
git add init_minion_env.sls 
git status
git add *
git diff --cache
git diff
git diff --cached
git status
git commit
git push origin HEAD:bugfix/saltenv
ssh terminal-dev
up 4
cd virtual-CPE/
./site.py  -c config.fb.ln19 status
ssh terminal-stable 
grep -v pass config.fb.ln19
./site.py  -c config.fb.ln19 status
ssh terminal-dev
./site.py  -c config.fb.ln19 delete
cd ..
cd salt-master/
ls
cd srv/salt/
ls
git status
cd virtual-CPE/
vim config.fb
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
vim config.fb.ln19 
grep icVer config.fb.ln19 
cd salt-master/
cd srv/salt/orch/
vim init_minion.sls 
up 4
cd virtual-CPE/
ls
./site.py  -c config.fb.ln19 status
ssh terminal-dev
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 status
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 delete
vim config.fb.ln19
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
./site.py  -c config.fb.ln19 delete
vim config.fb.ln19 
cat config.fb.ln19 
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
kb get pod -n erenqgo
./site.py  -c config.fb.ln19 status
cd salt-master/
git status
git log
git show
git show -h
git log --name-only 
up
cd virtual-CPE/
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
cd DN
cd salt-master/
ls
cd srv/
ls
cd salt/
ls
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
ssh terminal-dev
vim orch/init_minion.sls 
vim orch/init_minion_env.sls 
vim system/passwords.sls 
cd ..
grep ic.password.file * -r
up
cd salt
grep 'Performing fileserver updates' * -r
vim salt/master.py
~?~?~~
./site.py  -c config.fb.ln19 delete
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
cd salt
ls
grep 'Unable to list dir' * -r
vim salt/fileserver/roots.py
ls
python3
vim salt/fileserver/roots.py
grep file_list * -r
vim salt/master.py
ssh terminal-dev
ssh terminal-dev
cd salt-master/
ls
grep 10.10.204.74 * -r
grep sig-host-pcc-mm-nc * -r
vim srv/salt/ericsson-core/config/config-mm.cfg
git stash pop
git status
git diff
git status
git reset srv/salt/orch/init_minion.sls
git status
git checkout --  srv/salt/orch/init_minion.sls
git status
git pull
git status
git branch
git checkout feature/PS-12234
git log
git status
ls
git log help
git help log
git log --name-only
git merge master
git status
git rm srv/salt/orch/baseband.sls
git status
git commit
ssh terminal-dev
cd DN/virtual-CPE/
ls
./site.py  -c config.fb.ln19 delete
vim config.fb.ln19 create
vim config.fb.ln19 
vim config.fb.ln19 create
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 reset
./site.py  -c config.fb.ln19 activate
./site.py  -c config.fb.ln19 status
ssh terminal-dev  
cd salt-master/
ls
cd srv/
ls
cd salt/
cd sim-manager/
ls
vim init.sls 
cd DN/salt-master/
ls
ls -la
vim .pre-commit-config.yaml 
pip install pre-commit
pre-commit install pre-commit
pre-commit install-hooks pre-commit
pre-commit install -t pre-commi
pre-commit install -t pre-commit
pre-commit install -t prepare-commit-msg
pre-commit run --all-files
python3 -v
python3 
python3 version
python -v
python -h
python3 -V
ls
ls -la
vim .pre-commit-config.yaml 
pre-commit -h
pre-commit uninstall -t pre-commit
vim .pre-commit-config.yaml 
pre-commit install -t pre-commit
pre-commit run --all-files
ssh terminal-stable 
cd ..
cd salt-master/
git checkout master
git status
git checkout -- *
git status
git checkout -- .pre-commit-config.yaml
git checkout master
git checkout -b precommit/fix
vim .pre-commit-config.yaml 
git status
git diff
git status
git checkout -- *
git checkout -- .pre-commit-config.yaml
git status
vim srv/salt/_states/restic.py
cd ..
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
vim .vimrc 
cd ~/.vim/bundle && git clone git@github.com:nvie/vim-flake8.git
up 2
vim .vimrc 
cd DN/
ls
cd salt-master/
cd srv/salt/
ls
cd _states/
ls
vim restic.py 
vim -v
vim restic.py 
mkdir -p ~/.vim/pack/flake8/start/
cd ~/.vim/pack/flake8/start/
git clone https://github.com/nvie/vim-flake8.git
cd -
vim restic.py 
sudo apt install flake8 
vim restic.py 
cd ..
vim _modules/restic.py 
git status
git diff
git add *
pre-commit run --help
pre-commit run --files srv/salt/_modules/restic.py srv/salt/_states/restic.py 
vim .pre-commit-config.yaml 
pre-commit run --files srv/salt/_modules/restic.py srv/salt/_states/restic.py 
vim 
vim srv/salt/_modules/restic.py
vim _modules/restic.py 
git diff
git diff --cached
git diff
git diff --cached
cat srv/salt/_modules/restic.py 
cat srv/salt/_states/restic.py 
pre-commit run --files srv/salt/_modules/restic.py srv/salt/_states/restic.py 
vim srv/salt/_modules/restic.py 
pre-commit run --files srv/salt/_modules/restic.py srv/salt/_states/restic.py 
git status
git add srv/salt/_modules/restic.py
git commit
git status
git checkout -- .pre-commit-config.yaml
git commit
pre-commit uninstall -t pre-commit
git commit
pre-commit uninstall -t pre-commit
pre-commit uninstall -t prepare-commit-msg
git commit
git commit --amend
git push origin HEAD:precommit/fix
cd -
ls
cd srv/salt/
ls
git push origin HEAD:feature/PS-12234
git status
git checkout master
git checkout feature/PS-12234
git status
cd ic-ntp-server/
ls
cd config/
ls
git pull
git tag
git show stable
git fetch --tags
git show stable
ssh terminal-stable 
vim ntp.cfg.yaml 
ls
cd ..
top
tail -f /var/log/syslog
ls
cd ..
ls
cd srv/
cd salt/
vim config/common.yaml 
vimm system/config/ntp.conf 
vim system/config/ntp.conf 
git status
git checkout feature/PS-12234
git diff
vim system/config/ntp.conf 
git diff
git add system/config/ntp.conf 
git commit
ls
git push origin HEAD:feature/PS-12234
./site.py  -c config.fb.ln19 delete
git pull
git checkout feature/PS-12234
git merge master
git status
vim orch/init_minion/last_step.sls 
git status
git diff orch/init_minion/last_step.sls 
vim orch/init_minion/last_step.sls 
git add orch/init_minion/last_step.sls 
git commit
git push origin HEAD:feature/PS-12234
./site.py  -c config.fb.ln19 create
./site.py  -c config.fb.ln19 configure
./site.py  -c config.fb.ln19 activate
vim orch/init_minion/last_step.sls 
git commit
git add *
git commit
git push origin HEAD:feature/PS-12234
./site.py  -c config.fb.ln19 status
ssh terminal-dev
ls
vim system/config/
vim system/config/ntp.conf 
git status
git add system/config/ntp.conf 
git commit
vim system/config/ntp.conf 
vim orch/templateRender.sls 
vim system/config/ntp.conf 
git status
git add *
git commit --amend
git push origin HEAD:feature/PS-12234
ssh terminal-dev  
cd ..
ssh terminal-dev
rm ic-ran-dhcp-server/ -rf
git clone git@gitlab.com:ericssonedge/ic-ran-services.git
cd ic-ran-services/
ls
rm ic-ran-services/ -rf
mv chart/ charts/
ls
cd ..
ls
cp charts/ic-ntp-server/values.yaml ./
ls
git clone git@gitlab.com:erenqgo/ic-ran-services.git
rm ic-ran-services/ -rf
vim values.yaml 
cd ..
git clone git@gitlab.com:erenqgo/ic-ran-services.git
cd ic-ran-services/
ls
cp -R ~/DN/ic-ntp-server/chart/ ./
ls
mv chart/ charts/
cp charts/ic-ntp-server/values.yaml ./
ls
vim values.yaml 
cd ..
cd ic-ntp-server/
ls
cd chart/
ls
vim ic-ntp-server/
cd ic-ntp-server/
ls
vim values.yaml 
ls
cd ..
cd ic-ntp-server/templates/
ls
vim deployment.yaml 
vim values.yaml 
ls
cd charts/
cd ic-ntp-server/
ls
vim values.yaml 
cd templates/
ls
vim deployment.yaml 
up 2
ls
up
cd ..
ls
cat Chart.yaml 
vim values.yaml 
ls
vim Chart.yaml
ls
vim values.yaml 
ls
cd charts/
ls
cd ic-ntp-server/
ls
vim templates/deployment.yaml 
ls
up 3
ls
cd ic-ran-services/
ls
mv charts/ic-ntp-server/NOTE.txt ./
ls
cat NOTE.txt 
ls
cd charts/
ls
cd ic-ntp-server/
ls
cd templates/
ls
cat NOTES.txt 
rm NOTES.txt 
cat _helpers.tpl 
up
cd ..
ls
cd ic-ntp-server/
ls
cd templates/
ls
cd templates/
ls
cd ..
vim _helpers.tpl 
vim deployment.yaml 
vim _helpers.tpl 
cd ..
vim values.yaml 
up 4
cd DN
cd ic-ran-services/
ls
cd charts/
ls
cd ic-ntp-server/
ls
vim _helpers.tpl 
cd templates/
vim values.yaml 
cd ..
vim values.yaml 
cd charts/
ls
cd ic-ntp-server/
ls
vim values.yaml 
vim _helpers.tpl 
cd ..
cat Chart.yaml 
cd ..
vim values.yaml 
ssh terminal-dev
cd ..
tar -czvf ic-ran-services.tar.gz ic-ran-services/
ls
sftp terminal-dev
ssh terminal-dev
cd ic-ran-services/
ls
vim charts/ic-ntp-server/values.yaml 
cd charts/
ls
vim ic-ntp-server/
vim ic-ntp-server/templates/_helpers.tpl 
cd ..
cd ~/DN/ic-ntp-server/
git checkout master
ls
git pull
git status
ls
cat IC_Base_Image_Version 
cd ..
cd ic-ran-services/
cp ~/DN/ic-ntp-server/Jenkinsfile ./
cp ~/DN/ic-ntp-server/VERSION ./
ls
vim Jenkinsfile 
ls
cd charts/
ls
cd ..
mkdir ic-chart
mv charts/ ic-chart/
ls
mv Chart.yaml ic-chart/
mv NOTE.txt  ic-chart/
mv README.md ic-chart/
mv ic-chart/README.md ./
mv values.yaml ic-chart/
ls
vim Jenkinsfile 
git status
up 2
cd DN
ls
cd ic-ntp-server/
ls -la
cd .git/
ls
cd ..
cd ic-ran-services/
ls
cd ..
rm ic-ran-services/ -rf
ls
cd chart/
ls
ls -l
ls -la
cd ic-ntp-server/
ls
ls -la
cat .helmignore
cd ic-chart/
ls
vim .helmignore
cd ..
ls
git status
git add *
git status
git checkout master
git checkout -b master
git status
git push origin HEAD:master
history | grep master
history | less
git status
git commit 
git push origin HEAD:master
git remote add erans git@gitlab.com:ericssonedge/ic-ran-services.git
git push erans HEAD:master
cd ..
git clone git@gitlab.com:ericssonedge/ic-ran-services.git
cd ic-ran-services/
ls
cp -R ~/DN/ic-ran-services/ic-chart/ ./
cp -R ~/DN/ic-ran-services/Jenkinsfile ./
cp -R ~/DN/ic-ran-services/VERSION ./
ls
git checkout master
git checkout -b master
git push erans HEAD:master
git push origin HEAD:master
git status
git add *
git status
git commit
git status
git push origin HEAD:master
git push origin
cd DN/
ls
cd salt-master/
ls
cd srv/
ls
git status
git checkout master
ls
cd salt/
ls
cd sra
cd srv
ls
cd ran-dhcp/
ls
vim init.sls 
ls
cd ..
ls
cd ericsson-core/
ls
vim install.sls 
ls
cd ic-ran-services/
ls
cd ic-chart/
ls
cd charts/
ls
cd ic-ntp-server/
ls
cd
rm ic-ran-services/ -rf
git clone git@gitlab.com:ericssonedge/ic-ran-services.git
cd ic-ran-services/
ls
git checkout master
git checkout -b master
ls
cp -R ~/DN/ic-ntp-server/ ./
ls
mv ic-ntp-server/ ./
rm ic-ntp-server/ -rf
cp -R ~/DN/ic-ntp-server/* ./
ls
rm a.yaml 
rm Dockerfile 
rm IC_Base_Image_Version 
rm run.sh 
cd chart/
ls
cd ..
ls
vim Jenkinsfile 
ls
vim README.md 
ls
cd chart/
ls
mv ic-ntp-server/ ic-ran-services
ls
cd ic-ran-services/
ls
cd ..
cd ic-ran-services/
ls
cd ic-chart/
cat values.yaml 
cat charts/ic-ntp-server/values.yaml 
vim values.yaml 
ls
cd templates/
ls
vim deployment.yaml 
vim _helpers.tpl 
vim deployment.yaml 
vim _helpers.tpl 
ls
cd
cd ic-ran-services/
ls
cd chart/
ls
cd ic-ran-services/
ls
vim deployment.yaml 
vim _helpers.tpl 
cd ..
ls
vim values.yaml 
ls
vim _helpers.tpl 
cd templates/
vim values.yaml 
ls
cd templates/
ls
vim _helpers.tpl 
cd DN
ls
cd ic-ran-services/
ls
cd ic-chart/
ls
cd charts/ic-ntp-server/templates/
ls
vim deployment.yaml 
mv _helpers.tp _helpers.tpl 
ls
vim ../values.yaml 
ls
vim _helpers.tpl 
helm ls
helm -h
cd ..
helm template -h
helm template --generate-name --dry-run --debug ./deployment.yaml 
helm install --generate-name --dry-run --debug ./deployment.yaml 
helm template --generate-name --dry-run --debug -s deployment.yaml .
up
ls
helm template --generate-name --dry-run --debug -s templates/deployment.yaml .
helm template --generate-name --dry-run --debug -s ./templates/deployment.yaml .
cd ..
ls
cd ic-ran-services/
ls
cat Chart.yaml 
vim Chart.yaml 
ls
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/deployment.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/deployment.yaml 
vim values.yaml 
vim templates/_helpers.tpl 
vim templates/deployment.yaml 
cat values.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/deployment.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
ls
cd templates/
ls
vim configmap.yaml 
ls
vim serviceaccount.yaml 
vim service.yaml 
cd ..
vim values.yaml 
vim service.yaml 
vim templates/service.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/service.yaml 
vim templates/serviceaccount.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/deployment.yaml 
vim values.yaml 
vim templates/deployment.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/deployment.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
helm template --generate-name -s ./templates/deployment.yaml . --debug
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim values.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
git status
up 2
ls
git add *
cd chart/
ls
vim ic-ran-services/templates/_helpers.tpl 
cd ic-ran-services/
ls
helm template --generate-name -s ./templates/deployment.yaml .
vim ic-ran-services/templates/_helpers.tpl 
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/_helpers.tpl 
helm template --generate-name -s ./templates/deployment.yaml .
vim templates/configmap.yaml 
vim templates/deployment.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
vim deployment.yaml 
up
vim values.yaml 
vim templates/configmap.yaml 
helm template --generate-name -s ./templates/deployment.yaml .
helm install --generate-name --dry-run --debug .
helm install --generate-name --dry-run --debug ./
up 3
ls
tar -cxzf ic-ran-services.tar.gz ic-ran-services/
tar -czf ic-ran-services.tar.gz ic-ran-services/
ls
sftp terminal-dev
ls
cd DN
ls
cd ic-ran-services/
ls
cd ic-chart/
ls
cd charts/
ls
cd ic-ntp-server/
ls
cd ..
cd .
cd..
up 3
cd ic-ntp-server/
ls
cd chart/
ls
cd ic-ntp-server/
ls
ls templates/
ls
vim values.yaml 
ls
git status
git diff
git add *
git checkout -b master
git commit
git status
git push origin HEAD:master
cd baseband/ls
cd baseband/
ls
vim templateRender.sls 
read -l template
read -link template
readlink -f template
readlink -f templateRender.sls 
cd ..
vim _states/restic.py 
up 3
ls
cd salt
ls
cd salt/
ls
cd states/
ls
vim file.py 
cd ..
up 2
cd salt-master/
ls
cd srv/
ls
cd salt/
vim orch/init_minion.sls 
readlink -f orch/init_minion.sls 
vim values.yaml 
ssh terminal-dev  
rm ic-ran-services -rf
cd DN
rm ic-ran-services -rf
ls
rm ic-ran-services.tar.gz 
git@gitlab.com:ericssonedge/ic-ran-services.git
git clone git@gitlab.com:ericssonedge/ic-ran-services.git
cd ic-ran-services/
ls
git checkout -b 'feature/add-dhcp' 'origin/feature/add-dhcp'
ls
cd chart/
ls
cd ic-ran-services/
ls
vim values.yaml 
ls
cd ..
ls
cd ic-ran-services/
ls
cd templates/
vim deployment.yaml 
cd ..
vim values.yaml 
echo "IA==" | base64 -d
cd DN/salt-master/
ls
cd srv/
ls
cd salt/
ls
grep setupB64
grep setupB64 * -r
vim ran-dhcp/init.sls
cat ran-dhcp/config/init.sh.yaml
ls
grep "certificate is not valid for any names" * -r
grep "Site activation not started"
grep "Site activation not started" * -r
ssh terminal-stable 
sudo -i
sudo shutdown -f 
sudo shutdown -f now
sudo -i
sudo -i 
ssh terminal-dev
ssh terminal-dev
ssh terminal-dev  
ls
git clone git@github.com:tibetsam/learning.git
cat .ssh/id_rsa.pub 
git clone git@github.com:tibetsam/learning.git
ls
cd learning/
cp ~/bin/gb ./
cp ~/bin/pcd ./
cp ~/bin/up ./
cp ~/.vimrc ./
cp -R ~/.vim/ ./
cp ~/.viminfo ./
cp ~/.bashrc ./
cp ~/.bash_profile ./
