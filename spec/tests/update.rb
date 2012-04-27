def Multi_Exit str
  str.strip.split("\n").each { |line|
    Exit_0 line
  }
end

def git_init
  Multi_Exit %!
    git init 
    mkdir cookbooks
    touch cookbooks/.gitkeep
    git add .
    git commit -m "First."
  !
end

describe "Update_Site_Cookbooks (bin executable)" do
  
  it "downloads site cookbook for any git branch starting with 'chef-vendor-'" do
    chdir("News") {
      git_init
      
      Multi_Exit %!
        git branch "chef-vendor-openssh"
        Update_Site_Cookbooks
      !
      File.directory?("cookbooks/openssh").should.be == true
    }
  end

  it "does not download any other cookbook except specified cookbook" do
    chdir("News_2") {
      git_init
      Multi_Exit %!
        git branch "chef-vendor-openssh"
        git branch "chef-vendor-nginx"
        Update_Site_Cookbooks nginx
      !
      File.directory?("cookbooks/openssh").should.be == false
      File.directory?("cookbooks/nginx").should.be == true
    }
  end
  
end # === Update_Site_Cookbooks (bin executable)

