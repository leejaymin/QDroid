.class public Lcom/rookiestudio/perfectviewer/TServerList;
.super Landroid/widget/BaseAdapter;
.source "TServerList.java"


# instance fields
.field public ServerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TServerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public AddServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "Server"
    .parameter "Desc"
    .parameter "User"
    .parameter "Pass"

    .prologue
    .line 87
    new-instance v0, Lcom/rookiestudio/baseclass/TServerInfo;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TServerInfo;-><init>()V

    .line 88
    .local v0, aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    iput-object p2, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    .line 89
    iput-object p1, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    .line 90
    iput-object p3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->UserName:Ljava/lang/String;

    .line 91
    iput-object p4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Password:Ljava/lang/String;

    .line 92
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public DeleteServer(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    return-void
.end method

.method public FindRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "Path"

    .prologue
    .line 31
    const/4 v0, -0x1

    .line 32
    .local v0, Found:I
    const/4 v1, -0x1

    .line 33
    .local v1, FoundLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 42
    if-ltz v0, :cond_3

    .line 43
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rookiestudio/baseclass/TServerInfo;

    invoke-virtual {v4}, Lcom/rookiestudio/baseclass/TServerInfo;->GetSMBPath()Ljava/lang/String;

    move-result-object v4

    .line 45
    :goto_1
    return-object v4

    .line 34
    :cond_0
    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/baseclass/TServerInfo;

    .line 35
    .local v2, aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    invoke-virtual {v2}, Lcom/rookiestudio/baseclass/TServerInfo;->GetSMBPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 36
    if-gez v0, :cond_1

    iget-object v4, v2, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v1, :cond_2

    .line 37
    :cond_1
    move v0, v3

    .line 38
    iget-object v4, v2, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 33
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .end local v2           #aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    :cond_3
    const-string v4, "smb://"

    goto :goto_1
.end method

.method public LoadServerList()V
    .locals 6

    .prologue
    .line 65
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const-string v4, "perfect_viewer_cifs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 66
    .local v2, settings:Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 67
    const/4 v1, 0x0

    .line 69
    .local v1, i:I
    :goto_0
    new-instance v0, Lcom/rookiestudio/baseclass/TServerInfo;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TServerInfo;-><init>()V

    .line 70
    .local v0, aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerDesc"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPath"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    .line 72
    iget-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    :cond_0
    return-void

    .line 75
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerUser"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->UserName:Ljava/lang/String;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPass"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Password:Ljava/lang/String;

    .line 77
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_0
.end method

.method public SaveServerList()V
    .locals 6

    .prologue
    .line 50
    :try_start_0
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const-string v4, "perfect_viewer_cifs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    .local v2, settings:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 52
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 59
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 62
    .end local v1           #i:I
    .end local v2           #settings:Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 53
    .restart local v1       #i:I
    .restart local v2       #settings:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TServerInfo;

    .line 54
    .local v0, aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerDesc"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPath"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerUser"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->UserName:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ServerPass"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/rookiestudio/baseclass/TServerInfo;->Password:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v0           #aItem:Lcom/rookiestudio/baseclass/TServerInfo;
    .end local v1           #i:I
    .end local v2           #settings:Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TServerInfo;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TServerInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TServerList;->getItem(I)Lcom/rookiestudio/baseclass/TServerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 107
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 112
    if-nez p2, :cond_0

    .line 113
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 114
    .local v5, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f030012

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 116
    .end local v5           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TServerList;->ServerList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/rookiestudio/baseclass/TServerInfo;

    .line 117
    .local v4, aServer:Lcom/rookiestudio/baseclass/TServerInfo;
    const v6, 0x7f0c003b

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 118
    .local v1, FileIcon:Landroid/widget/ImageView;
    const v6, 0x7f020064

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    const v6, 0x7f0c003d

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 120
    .local v2, FileNameText:Landroid/widget/TextView;
    iget-object v6, v4, Lcom/rookiestudio/baseclass/TServerInfo;->Path:Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    const v6, 0x7f0c003f

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 122
    .local v0, FileDateText:Landroid/widget/TextView;
    iget-object v6, v4, Lcom/rookiestudio/baseclass/TServerInfo;->Description:Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const v6, 0x7f0c0040

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, FileSizeText:Landroid/widget/TextView;
    const-string v6, ""

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-object p2
.end method
