.class Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;
.super Landroid/widget/BaseAdapter;
.source "TBookshelfFolderManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TBookshelfFolderFiles"
.end annotation


# instance fields
.field private BookshelfFolderFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TFileData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;


# direct methods
.method public constructor <init>(Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "c"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->this$0:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;

    .line 157
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    .line 160
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->context:Landroid/content/Context;

    .line 161
    return-void
.end method


# virtual methods
.method public Add(Ljava/lang/String;)V
    .locals 3
    .parameter "Folder"

    .prologue
    .line 230
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v1, TmpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    new-instance v0, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 233
    .local v0, NewBookshelfFolderFile:Lcom/rookiestudio/baseclass/TFileData;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    .line 234
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 235
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v0           #NewBookshelfFolderFile:Lcom/rookiestudio/baseclass/TFileData;
    :cond_0
    return-void
.end method

.method public Clear()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    return-void
.end method

.method public Delete(I)V
    .locals 1
    .parameter "Index"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method public Load()V
    .locals 3

    .prologue
    .line 165
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 171
    return-void

    .line 167
    :cond_0
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 168
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Add(Ljava/lang/String;)V

    .line 166
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public Save()V
    .locals 5

    .prologue
    .line 186
    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationInstance:Landroid/content/Context;

    const-string v3, "perfect_viewer_settings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 187
    .local v1, settings:Landroid/content/SharedPreferences$Editor;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 194
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    return-void

    .line 188
    :cond_0
    if-nez v0, :cond_1

    .line 189
    const-string v2, "BookshelfFolder"

    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BookshelfFolder"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public Update()V
    .locals 3

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 182
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 177
    sget-object v2, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TFileData;

    iget-object v1, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    aput-object v1, v2, v0

    .line 175
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_1
    sget-object v1, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCount2()I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 3
    .parameter "arg0"

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getCount()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 216
    new-instance v0, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 217
    .local v0, EmptyFileData:Lcom/rookiestudio/baseclass/TFileData;
    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    goto :goto_0

    .line 220
    .end local v0           #EmptyFileData:Lcom/rookiestudio/baseclass/TFileData;
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/baseclass/TFileData;

    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 247
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 253
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->context:Landroid/content/Context;

    if-nez v5, :cond_0

    move-object v3, p2

    .line 270
    .end local p2
    .local v3, convertView:Landroid/view/View;
    :goto_0
    return-object v3

    .line 256
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_0
    if-nez p2, :cond_1

    .line 257
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->context:Landroid/content/Context;

    .line 258
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 257
    check-cast v4, Landroid/view/LayoutInflater;

    .line 259
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03001d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 261
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    .line 262
    .local v0, BookshelfFolderFile:Lcom/rookiestudio/baseclass/TFileData;
    const v5, 0x7f0c0059

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 263
    .local v1, FileIcon:Landroid/widget/ImageView;
    const v5, 0x7f0c005a

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 264
    .local v2, FileNameText:Landroid/widget/TextView;
    iget-object v5, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->BookshelfFolderFiles:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 266
    const v5, 0x7f020034

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    move-object v3, p2

    .line 270
    .end local p2
    .restart local v3       #convertView:Landroid/view/View;
    goto :goto_0

    .line 268
    .end local v3           #convertView:Landroid/view/View;
    .restart local p2
    :cond_2
    const v5, 0x7f020038

    sget v6, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
