echo "# qs-workshop" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:vjkraws/qs-workshop.git
git push -u origin main





git submodule add -b master https://github.com/aws-quickstart/quickstart-aws-vpc.git submodules/quickstart-aws-vpc
git submodule add -b master https://github.com/aws-quickstart/quickstart-aws-vpc.git submodules/quickstart-aws-vpc
curl https://raw.githubusercontent.com/aws-quickstart/quickstart-workshop-labs/master/implementing/templates/incomplete.master.template.yaml -o templates/master.template.yaml
curl -s https://raw.githubusercontent.com/aws-quickstart/quickstart-workshop-labs/master/implementing/templates/vpcstack.master.template.yaml >>templates/master.template.yaml
git add .
git commit -a -m 'Add QuickStart VPC as a nested stack'
curl -s https://raw.githubusercontent.com/aws-quickstart/quickstart-workshop-labs/master/implementing/templates/workload.template.yaml -o templates/workload.template.yaml
git add templates/workload.template.yaml
git commit -a -m 'Added Workload'
curl -s https://raw.githubusercontent.com/aws-quickstart/quickstart-workshop-labs/master/implementing/templates/webserver.master.template.yaml >>templates/master.template.yaml
git commit -a -m 'Add Workload as a nested stack'
curl -s https://raw.githubusercontent.com/aws-quickstart/quickstart-workshop-labs/master/implementing/templates/outputs.master.template.yaml >>templates/master.template.yaml
git commit -a -m 'Add outputs to master template'