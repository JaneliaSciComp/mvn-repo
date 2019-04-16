groupId=$1
artifactId=$2
version=$3
file=$4

mvn_deploy_cmd="mvn deploy:deploy-file \
    -DgroupId=${groupId} \
    -DartifactId=${artifactId} \
    -Dversion=${version} \
    -Dpackaging=jar \
    -Dfile=${file} \
    -DgeneratePom=true \
    -DrepositoryId=janelia-repo \
    -Durl=https://nexus.janelia.org/repository/maven-releases/"

echo "${mvn_deploy_cmd}"
${mvn_deploy_cmd}
