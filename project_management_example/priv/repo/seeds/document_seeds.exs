alias ProjectManagementExample.Repo
alias ProjectManagementExample.Management.Document

Repo.insert! %Document{
  name: "Document 1",
  content: "This fuckalskdjflkasj fproject is the first project i've ever done la kdsfaskldf zomg", 
  view_count: 1,
  published: false, 
  project_id: 2
}

Repo.insert! %Document{
  name: "Document 2",
  content: "This fuckalskdjflkasj fproject is the first project i've ever done la kdsfaskldf zomg", 
  view_count: 9,
  published: true, 
  project_id: 1
}

Repo.insert! %Document{
  name: "Document 3",
  content: "This fuckalskdjflkasj fproject is the first project i've ever done la kdsfaskldf zomg", 
  view_count: 90,
  published: false, 
  project_id: 1
}

Repo.insert! %Document{
  name: "Document 4",
  content: "This fuckalskdjflkasj fproject is the first project i've ever done la kdsfaskldf zomg", 
  view_count: 3,
  published: true, 
  project_id: 3
}
