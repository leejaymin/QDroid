.class Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;
.super Landroid/widget/BaseAdapter;
.source "TFolderSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TFolderSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TFolderList"
.end annotation


# instance fields
.field public CurrentFolder:Ljava/lang/String;

.field public ListFolderData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TFileData;",
            ">;"
        }
    .end annotation
.end field

.field public ShortName:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TFolderSelector;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TFolderSelector;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->this$0:Lcom/rookiestudio/perfectviewer/TFolderSelector;

    .line 112
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    .line 115
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->context:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    return-void
.end method

.method public SetFolder(Ljava/lang/String;Z)V
    .locals 9
    .parameter "ParentFolder"
    .parameter "ShowHidden"

    .prologue
    const/4 v8, 0x1

    .line 121
    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 122
    const-string p1, "/"

    .line 124
    :cond_0
    if-eqz p2, :cond_3

    .line 125
    new-instance v3, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$1;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$1;-><init>(Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;)V

    .line 137
    .local v3, filter:Ljava/io/FileFilter;
    :goto_0
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    .line 138
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CurrentFolder:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 140
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ShortName:Ljava/lang/String;

    .line 144
    :goto_1
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 145
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 146
    .local v2, Parent:Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 148
    .local v0, FileList:[Ljava/io/File;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v5, v8, :cond_1

    .line 149
    new-instance v1, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v1}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 150
    .local v1, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    const-string v5, ".."

    iput-object v5, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 151
    const-string v5, ".."

    iput-object v5, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 152
    iput-boolean v8, v1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 153
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v1           #NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    :cond_1
    if-eqz v0, :cond_2

    .line 156
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v5, v0

    if-lt v4, v5, :cond_5

    .line 169
    .end local v4           #i:I
    :cond_2
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    new-instance v6, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/rookiestudio/perfectviewer/TFileList$FileNameComparator;-><init>(I)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    return-void

    .line 131
    .end local v0           #FileList:[Ljava/io/File;
    .end local v2           #Parent:Ljava/io/File;
    .end local v3           #filter:Ljava/io/FileFilter;
    :cond_3
    new-instance v3, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$2;

    invoke-direct {v3, p0}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList$2;-><init>(Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;)V

    .restart local v3       #filter:Ljava/io/FileFilter;
    goto :goto_0

    .line 142
    :cond_4
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ShortName:Ljava/lang/String;

    goto :goto_1

    .line 157
    .restart local v0       #FileList:[Ljava/io/File;
    .restart local v2       #Parent:Ljava/io/File;
    .restart local v4       #i:I
    :cond_5
    new-instance v1, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v1}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 158
    .restart local v1       #NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    iput-object p1, v1, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    .line 159
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 160
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 161
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 165
    :goto_3
    aget-object v5, v0, v4

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    iput-boolean v5, v1, Lcom/rookiestudio/baseclass/TFileData;->IsFolder:Z

    .line 166
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/rookiestudio/baseclass/TFileData;->FolderName:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    goto :goto_3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 182
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TFileData;

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 193
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 199
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->context:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v3, p2

    .line 214
    .end local p2
    .local v3, convertView:Landroid/view/View;
    :goto_0
    return-object v3

    .line 202
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ListFolderData:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/rookiestudio/baseclass/TFileData;

    .line 203
    .local v2, aFileData:Lcom/rookiestudio/baseclass/TFileData;
    if-nez p2, :cond_1

    .line 204
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->context:Landroid/content/Context;

    .line 205
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 204
    check-cast v4, Landroid/view/LayoutInflater;

    .line 206
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 208
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    const v5, 0x7f0c003b

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 209
    .local v0, FileIcon:Landroid/widget/ImageView;
    const v5, 0x7f0c003d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 210
    .local v1, FileNameText:Landroid/widget/TextView;
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 211
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    iget-object v5, v2, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    const v5, 0x7f020038

    sget v6, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v6

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object v3, p2

    .line 214
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto :goto_0
.end method
