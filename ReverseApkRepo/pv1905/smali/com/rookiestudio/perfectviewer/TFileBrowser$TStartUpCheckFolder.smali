.class Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;
.super Landroid/os/AsyncTask;
.source "TFileBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFileBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TStartUpCheckFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private InitFolder:Ljava/lang/String;

.field private LocalLocation:I

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;


# direct methods
.method private constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V
    .locals 1
    .parameter

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1127
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    .line 1128
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->LocalLocation:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;-><init>(Lcom/rookiestudio/perfectviewer/TFileBrowser;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 7
    .parameter "params"

    .prologue
    const-wide/16 v5, 0x1

    const/4 v4, 0x1

    .line 1140
    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    .line 1142
    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-static {}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$2()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1143
    iput v4, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->LocalLocation:I

    .line 1146
    :try_start_0
    new-instance v0, Ljcifs/smb/SmbFile;

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljcifs/smb/SmbFile;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, TmpFolder:Ljcifs/smb/SmbFile;
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1148
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1188
    .end local v0           #TmpFolder:Ljcifs/smb/SmbFile;
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    :goto_1
    return-object v2

    .line 1150
    .restart local v0       #TmpFolder:Ljcifs/smb/SmbFile;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1151
    :cond_2
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoBackUpperFolder:Z

    if-eqz v2, :cond_3

    .line 1152
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1163
    .end local v0           #TmpFolder:Ljcifs/smb/SmbFile;
    :catch_0
    move-exception v1

    .line 1164
    .local v1, e:Ljava/net/MalformedURLException;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 1154
    .end local v1           #e:Ljava/net/MalformedURLException;
    .restart local v0       #TmpFolder:Ljcifs/smb/SmbFile;
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    .line 1155
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    const/4 v3, 0x1

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v2, v3}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$3(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1165
    .end local v0           #TmpFolder:Ljcifs/smb/SmbFile;
    :catch_1
    move-exception v1

    .line 1166
    .local v1, e:Ljcifs/smb/SmbException;
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_1

    .line 1158
    .end local v1           #e:Ljcifs/smb/SmbException;
    .restart local v0       #TmpFolder:Ljcifs/smb/SmbFile;
    :cond_4
    :try_start_3
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoBackUpperFolder:Z

    if-eqz v2, :cond_0

    .line 1159
    invoke-virtual {v0}, Ljcifs/smb/SmbFile;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljcifs/smb/SmbException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1169
    .end local v0           #TmpFolder:Ljcifs/smb/SmbFile;
    :cond_5
    const/4 v2, 0x0

    iput v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->LocalLocation:I

    .line 1170
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v0, TmpFolder:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1172
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    goto :goto_0

    .line 1174
    :cond_6
    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsArchive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/rookiestudio/perfectviewer/TFileBrowser;->LastBrowseFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/rookiestudio/perfectviewer/Config;->FileIsPDF(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1175
    :cond_7
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoBackUpperFolder:Z

    if-eqz v2, :cond_8

    .line 1176
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    goto :goto_0

    .line 1178
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    .line 1179
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    #setter for: Lcom/rookiestudio/perfectviewer/TFileBrowser;->BrowseMode:I
    invoke-static {v2, v4}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$3(Lcom/rookiestudio/perfectviewer/TFileBrowser;I)V

    goto/16 :goto_0

    .line 1182
    :cond_9
    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AutoBackUpperFolder:Z

    if-eqz v2, :cond_0

    .line 1183
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->LocalLocation:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetLocation(IZ)V

    .line 1135
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->this$0:Lcom/rookiestudio/perfectviewer/TFileBrowser;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->InitFolder:Ljava/lang/String;

    #calls: Lcom/rookiestudio/perfectviewer/TFileBrowser;->SetFolder(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/rookiestudio/perfectviewer/TFileBrowser;->access$1(Lcom/rookiestudio/perfectviewer/TFileBrowser;Ljava/lang/String;)V

    .line 1136
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 1130
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFileBrowser$TStartUpCheckFolder;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
