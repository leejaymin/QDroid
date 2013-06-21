.class public Lcom/rookiestudio/perfectviewer/TPDFList;
.super Landroid/widget/BaseAdapter;
.source "TPDFList.java"


# instance fields
.field public CurrentFolder:Ljava/lang/String;

.field public ListFileData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/rookiestudio/baseclass/TFileData;",
            ">;"
        }
    .end annotation
.end field

.field private Opened:Z

.field private TotalPages:I

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 15
    iput-boolean v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->inflater:Landroid/view/LayoutInflater;

    .line 20
    iput v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->TotalPages:I

    .line 23
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->context:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->inflater:Landroid/view/LayoutInflater;

    .line 27
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    .line 28
    return-void
.end method


# virtual methods
.method public Clear()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    return-void
.end method

.method public ClosePDF()V
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFCloseFile()V

    .line 35
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    .line 36
    return-void
.end method

.method public CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V
    .locals 3
    .parameter "FileName"
    .parameter "FileOrder"
    .parameter "FileIcon"
    .parameter "ImageInfo"
    .parameter "DefaultIcon"

    .prologue
    .line 101
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    if-eqz v0, :cond_0

    .line 108
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->FindThumbCache(Ljava/lang/String;Landroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->CreateThumbThread:Lcom/rookiestudio/perfectviewer/TCreateThumbThread;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/rookiestudio/perfectviewer/TCreateThumbThread;->UpdateQueue(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public GetoPage(I)V
    .locals 1
    .parameter "PageNo"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFGotoPage(I)V

    .line 43
    :cond_0
    return-void
.end method

.method public SetFolder(Ljava/lang/String;)V
    .locals 7
    .parameter "FolderName"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 47
    iget-boolean v3, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TPDFList;->ClosePDF()V

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->CurrentFolder:Ljava/lang/String;

    .line 51
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 52
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->PDFHandler:Lcom/rookiestudio/perfectviewer/TPDFHandler;

    const-string v4, ""

    invoke-virtual {v3, p1, v4}, Lcom/rookiestudio/perfectviewer/TPDFHandler;->PDFOpenFile(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->TotalPages:I

    .line 53
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v3, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->TotalPages:I

    if-lt v2, v3, :cond_1

    .line 63
    iput-boolean v6, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->Opened:Z

    .line 64
    return-void

    .line 54
    :cond_1
    new-instance v0, Lcom/rookiestudio/baseclass/TFileData;

    invoke-direct {v0}, Lcom/rookiestudio/baseclass/TFileData;-><init>()V

    .line 55
    .local v0, NewFileData:Lcom/rookiestudio/baseclass/TFileData;
    iput v2, v0, Lcom/rookiestudio/baseclass/TFileData;->Index:I

    .line 56
    sget-object v3, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v4, 0x7f0a0088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    .local v1, PageFormat:Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 58
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/rookiestudio/baseclass/TFileData;->FileSize:J

    .line 59
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/rookiestudio/baseclass/TFileData;->FileDate:Ljava/util/Date;

    .line 60
    iput-boolean v5, v0, Lcom/rookiestudio/baseclass/TFileData;->IsEncrypted:Z

    .line 61
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getIndex(I)I
    .locals 1
    .parameter "arg0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rookiestudio/baseclass/TFileData;

    iget v0, v0, Lcom/rookiestudio/baseclass/TFileData;->Index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/rookiestudio/baseclass/TFileData;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 84
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

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
    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 119
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    move-object v0, p2

    .line 157
    :cond_0
    :goto_0
    return-object v0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->ListFileData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/rookiestudio/baseclass/TFileData;

    .line 126
    .local v10, entry:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v1, v10, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, FileName:Ljava/lang/String;
    if-nez p2, :cond_2

    .line 128
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    if-nez v1, :cond_6

    .line 129
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030012

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 136
    :cond_2
    :goto_1
    const v0, 0x7f0c003b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 137
    .local v3, FileIcon:Landroid/widget/ImageView;
    const v0, 0x7f0c003e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 138
    .local v4, ImageInfo:Landroid/widget/TextView;
    if-eqz v4, :cond_3

    .line 139
    const-string v0, ""

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->CurrentFolder:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/rookiestudio/perfectviewer/TPDFList;->getIndex(I)I

    move-result v2

    const v0, 0x7f02002b

    sget v5, Lcom/rookiestudio/perfectviewer/Global;->ImageSizeType:I

    add-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/rookiestudio/perfectviewer/TPDFList;->CreateThumb(Ljava/lang/String;ILandroid/widget/ImageView;Landroid/widget/TextView;I)V

    .line 143
    const v0, 0x7f0c003d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 144
    .local v8, FileNameText:Landroid/widget/TextView;
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v0, 0x7f0c003f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 147
    .local v6, FileDateText:Landroid/widget/TextView;
    if-eqz v6, :cond_4

    .line 148
    const-string v0, ""

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_4
    const v0, 0x7f0c0040

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 151
    .local v9, FileSizeText:Landroid/widget/TextView;
    if-eqz v9, :cond_5

    .line 152
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    move-object v0, p2

    .line 157
    goto :goto_0

    .line 130
    .end local v3           #FileIcon:Landroid/widget/ImageView;
    .end local v4           #ImageInfo:Landroid/widget/TextView;
    .end local v6           #FileDateText:Landroid/widget/TextView;
    .end local v8           #FileNameText:Landroid/widget/TextView;
    .end local v9           #FileSizeText:Landroid/widget/TextView;
    :cond_6
    sget v1, Lcom/rookiestudio/perfectviewer/Config;->FileViewMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 131
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030011

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 133
    :cond_7
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TPDFList;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030014

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1
.end method
