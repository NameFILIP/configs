mkdir -p $HOME/Dev/C3

pushd $HOME/Dev/C3
  if cd c3apps; 
  	then git pull; cd ..; 
    else git clone https://github.com/c3-e/c3apps.git; 
  fi
  if cd c3ui; 
  	then git pull; cd ..; 
    else git clone https://github.com/c3-e/c3ui.git; 
  fi
  if cd c3-capybara; 
  	then git pull; cd ..; 
    else git clone https://github.com/c3-e/c3-capybara.git; 
  fi
  if cd c3node; 
  	then git pull; cd ..; 
    else git clone https://github.com/c3-e/c3node.git; 
  fi
  if cd devops-tools; 
  	then git pull; cd ..;
    else git clone https://github.com/c3-e/devops-tools.git; 
  fi
popd
