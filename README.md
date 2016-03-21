# AlphaCamp_TangPoetry_homework

**Tabbar, navigation bar, table view practice**

![Alt text](/screenshot/storyboard.png?raw=true "storyboard")

## Main Menu
JSON `https://kahopoon.net/poetry.php?show=poet&category=T`   
return all poet of Tang/Song poetry (two views under tabbar controller), put result into table view.  

![Alt text](/screenshot/Tang_main.png?raw=true "Tang_main")
![Alt text](/screenshot/Song_main.png?raw=true "Song_main")  

## Poem List
JSON `https://kahopoon.net/poetry.php?show=list&id=[poet_id]`   
return all specific poet's poem list(one shared view), put result into table view.  

![Alt text](/screenshot/Tang_list.png?raw=true "Tang_list")
![Alt text](/screenshot/Song_list.png?raw=true "Song_list")  

## Poem Details
JSON `https://kahopoon.net/poetry.php?show=content&id=[poem_id]`   
return one specific tang poem details(one shared view), put result into text view.  

![Alt text](/screenshot/Tang_details.png?raw=true "Tang_details")
![Alt text](/screenshot/Song_details.png?raw=true "Song_details")  
