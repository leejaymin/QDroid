.class public Lcom/rookiestudio/perfectviewer/TNavigater;
.super Ljava/lang/Object;
.source "TNavigater.java"


# static fields
.field public static final dirBackward:I = 0x2

.field public static final dirForward:I = 0x1

.field public static final dirNone:I = 0x0

.field public static final dirShow:I = 0x3


# instance fields
.field public CurrentFileName:Ljava/lang/String;

.field public CurrentFolderName:Ljava/lang/String;

.field protected FCount:I

.field protected FIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public AddImageQueue(II)Z
    .locals 1
    .parameter "Value"
    .parameter "dir"

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public CheckHideMessage()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iget-object v0, v0, Lcom/rookiestudio/perfectviewer/TViewer;->MessageSprite:Lcom/rookiestudio/baseclass/TSprite;

    iget-boolean v0, v0, Lcom/rookiestudio/baseclass/TSprite;->Visible:Z

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 42
    :cond_0
    return-void
.end method

.method public CheckImageCache(I)Z
    .locals 1
    .parameter "Value"

    .prologue
    .line 31
    const/4 v0, 0x1

    return v0
.end method

.method public First()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public GetCount()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    return v0
.end method

.method public GetIndex()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    return v0
.end method

.method public GetInfoStr(I)Ljava/lang/String;
    .locals 4
    .parameter "Mode"

    .prologue
    .line 72
    const-string v0, ""

    .line 73
    .local v0, Result:Ljava/lang/String;
    const/4 v1, 0x0

    .line 74
    .local v1, posi:I
    packed-switch p1, :pswitch_data_0

    .line 99
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 78
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFileName:Ljava/lang/String;

    .line 82
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    if-ltz v1, :cond_0

    .line 84
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    goto :goto_0

    .line 88
    :pswitch_3
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->CurrentFolderName:Ljava/lang/String;

    .line 89
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 90
    if-ltz v1, :cond_1

    .line 91
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    :cond_1
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 94
    if-ltz v1, :cond_0

    .line 95
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 74
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public Last()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public LoadCompleted(Lcom/rookiestudio/perfectviewer/TBitmap;I)V
    .locals 6
    .parameter "aBitmap"
    .parameter "dir"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->HideMessage()V

    .line 115
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->NavigateBar:Lcom/rookiestudio/perfectviewer/TNavigateBar;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TNavigateBar;->UpdateInfo()V

    .line 119
    :cond_0
    if-eq p2, v3, :cond_1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 120
    :cond_1
    sput-boolean v4, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    .line 121
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableImageCache:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    if-ge v0, v1, :cond_2

    .line 122
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    .line 170
    :cond_2
    :goto_0
    return-void

    .line 124
    :cond_3
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableImageCache:Z

    if-eqz v0, :cond_4

    if-ne p2, v5, :cond_4

    .line 125
    sput-boolean v4, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    .line 126
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 127
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v4}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0

    .line 129
    :cond_4
    if-nez p2, :cond_2

    .line 130
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->EnableImageCache:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->AutoDualPage:Z

    if-eqz v0, :cond_2

    .line 131
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    if-eq v0, v1, :cond_2

    .line 134
    sget-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v0, v0, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    if-le v0, v1, :cond_2

    .line 135
    iget v0, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Height:I

    iget v1, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->Width:I

    if-le v0, v1, :cond_2

    .line 136
    iget v0, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_7

    .line 137
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    .line 138
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AdjustDualPageHeight:Z

    invoke-static {v0, v1, p1, v2}, Lcom/rookiestudio/perfectviewer/TBitmap2;->MergeImage(ILcom/rookiestudio/perfectviewer/TBitmap;Lcom/rookiestudio/perfectviewer/TBitmap;Z)Lcom/rookiestudio/perfectviewer/TBitmap2;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 139
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    if-eq v0, v3, :cond_5

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    if-eq v0, v5, :cond_5

    .line 140
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 141
    :cond_5
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    .line 148
    :goto_1
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FCount:I

    if-ge v0, v1, :cond_2

    .line 149
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0, v4}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto :goto_0

    .line 143
    :cond_6
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 144
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 145
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, v3}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 146
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_1

    .line 151
    :cond_7
    iget v0, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    iget v1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 152
    sput-boolean v3, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    .line 153
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->AdjustDualPageHeight:Z

    invoke-static {v0, p1, v1, v2}, Lcom/rookiestudio/perfectviewer/TBitmap2;->MergeImage(ILcom/rookiestudio/perfectviewer/TBitmap;Lcom/rookiestudio/perfectviewer/TBitmap;Z)Lcom/rookiestudio/perfectviewer/TBitmap2;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    .line 154
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    if-eq v0, v3, :cond_8

    sget v0, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    if-ne v0, v5, :cond_9

    .line 155
    :cond_8
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget v1, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->SetPageFit(I)V

    .line 162
    :goto_2
    iget v0, p1, Lcom/rookiestudio/perfectviewer/TBitmap;->PageIndex:I

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    .line 163
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 164
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, v4}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    goto/16 :goto_0

    .line 157
    :cond_9
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    sget-object v1, Lcom/rookiestudio/perfectviewer/TViewer;->CurrentBitmap:Lcom/rookiestudio/perfectviewer/TBitmap;

    iget v1, v1, Lcom/rookiestudio/perfectviewer/TBitmap;->ScaledWidth:I

    iput v1, v0, Lcom/rookiestudio/perfectviewer/TViewer;->DestWidth:I

    .line 158
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    iput-boolean v3, v0, Lcom/rookiestudio/perfectviewer/TViewer;->NeedDoClip:Z

    .line 159
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0, v4}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 160
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    goto :goto_2
.end method

.method public Next()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public NextBook()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public Previous()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public PreviousBook()V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public ScrollNext()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public ScrollPrevious()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public SetIndex(II)Z
    .locals 1
    .parameter "Value"
    .parameter "dir"

    .prologue
    .line 26
    iput p1, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public SwitchDualPage()V
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->AddImageQueue(II)Z

    .line 111
    return-void
.end method

.method public SwitchSinglePage()V
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Global;->DualPageMode:Z

    .line 104
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TNavigater;->FIndex:I

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TNavigater;->SetIndex(II)Z

    .line 105
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/rookiestudio/perfectviewer/TViewer;->UpdateCoordinate(Z)V

    .line 106
    sget-object v0, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 107
    return-void
.end method
