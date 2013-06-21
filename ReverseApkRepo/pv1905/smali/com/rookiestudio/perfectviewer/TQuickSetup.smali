.class public Lcom/rookiestudio/perfectviewer/TQuickSetup;
.super Landroid/app/Dialog;
.source "TQuickSetup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;
    }
.end annotation


# instance fields
.field private BookshelfFolder:Ljava/lang/String;

.field private CancelButton:Landroid/widget/Button;

.field private OKButton:Landroid/widget/Button;

.field RGModeSelect:Landroid/widget/RadioGroup;

.field RGReadDirection:Landroid/widget/RadioGroup;

.field private SelectFolderButton:Landroid/widget/Button;

.field private SelectedFolderText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGModeSelect:Landroid/widget/RadioGroup;

    .line 30
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGReadDirection:Landroid/widget/RadioGroup;

    .line 35
    invoke-virtual {p0, v1}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->requestWindowFeature(I)Z

    .line 36
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->setContentView(I)V

    .line 37
    const v0, 0x7f0a0080

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->setTitle(I)V

    .line 38
    const v0, 0x1080049

    invoke-virtual {p0, v1, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->setFeatureDrawableResource(II)V

    .line 39
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "v"

    .prologue
    const/4 v10, 0x3

    const/4 v9, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGModeSelect:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    .line 70
    .local v2, Mode:I
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGReadDirection:Landroid/widget/RadioGroup;

    invoke-virtual {v5}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 71
    .local v0, Direction:I
    if-eq v0, v9, :cond_0

    if-eq v2, v9, :cond_0

    .line 74
    packed-switch v2, :pswitch_data_1

    .line 95
    :goto_1
    packed-switch v0, :pswitch_data_2

    .line 110
    :goto_2
    sput-boolean v6, Lcom/rookiestudio/perfectviewer/Config;->ShowScreenFunction:Z

    .line 111
    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainView:Lcom/rookiestudio/perfectviewer/TViewer;

    invoke-virtual {v5}, Lcom/rookiestudio/perfectviewer/TViewer;->DoUpdate()V

    .line 112
    sput-boolean v7, Lcom/rookiestudio/perfectviewer/Config;->ShowScreenFunction:Z

    .line 113
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->dismiss()V

    .line 114
    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 115
    sget-object v5, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    iget-object v6, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    aput-object v6, v5, v7

    .line 116
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 117
    .local v4, handler:Landroid/os/Handler;
    new-instance v5, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;-><init>(Lcom/rookiestudio/perfectviewer/TQuickSetup;Lcom/rookiestudio/perfectviewer/TQuickSetup$TStartScanFolder;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 76
    .end local v4           #handler:Landroid/os/Handler;
    :pswitch_1
    sput v8, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    .line 77
    sput v8, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 78
    const/4 v5, 0x6

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    .line 79
    const/4 v5, 0x5

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    goto :goto_1

    .line 82
    :pswitch_2
    sput v10, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    .line 83
    sput v10, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 84
    const/4 v5, 0x6

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    .line 85
    const/4 v5, 0x5

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    goto :goto_1

    .line 88
    :pswitch_3
    const/4 v5, 0x4

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->PageCoordinate:I

    .line 89
    sput v6, Lcom/rookiestudio/perfectviewer/Config;->PageFit:I

    .line 90
    sput v8, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    .line 91
    sput v6, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    .line 92
    sput v7, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    goto :goto_1

    .line 97
    :pswitch_4
    sput v7, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    goto :goto_2

    .line 100
    :pswitch_5
    sput v6, Lcom/rookiestudio/perfectviewer/Config;->OpenPageDirection:I

    .line 101
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    .line 102
    .local v3, TmpValue:I
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->LeftFunction:I

    .line 103
    sput v3, Lcom/rookiestudio/perfectviewer/Config;->RightFunction:I

    .line 105
    sget v3, Lcom/rookiestudio/perfectviewer/Config;->BLFunction:I

    .line 106
    sget v5, Lcom/rookiestudio/perfectviewer/Config;->BRFunction:I

    sput v5, Lcom/rookiestudio/perfectviewer/Config;->BLFunction:I

    .line 107
    sput v3, Lcom/rookiestudio/perfectviewer/Config;->BRFunction:I

    goto :goto_2

    .line 121
    .end local v0           #Direction:I
    .end local v2           #Mode:I
    .end local v3           #TmpValue:I
    :pswitch_6
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->cancel()V

    goto/16 :goto_0

    .line 125
    :pswitch_7
    sget-object v5, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v5, v5, v7

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFolderSelector;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Lcom/rookiestudio/perfectviewer/TFolderSelector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    .local v1, FolderSelector:Lcom/rookiestudio/perfectviewer/TFolderSelector;
    :goto_3
    iput-object p0, v1, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

    .line 131
    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->show()V

    goto/16 :goto_0

    .line 128
    .end local v1           #FolderSelector:Lcom/rookiestudio/perfectviewer/TFolderSelector;
    :cond_1
    new-instance v1, Lcom/rookiestudio/perfectviewer/TFolderSelector;

    sget-object v5, Lcom/rookiestudio/perfectviewer/Global;->MainActivity:Lcom/rookiestudio/perfectviewer/TViewerMain;

    sget-object v6, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    aget-object v6, v6, v7

    invoke-direct {v1, v5, v6}, Lcom/rookiestudio/perfectviewer/TFolderSelector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v1       #FolderSelector:Lcom/rookiestudio/perfectviewer/TFolderSelector;
    goto :goto_3

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0088
        :pswitch_7
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 74
    :pswitch_data_1
    .packed-switch 0x7f0c0081
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 95
    :pswitch_data_2
    .packed-switch 0x7f0c0086
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f0a00cb

    .line 43
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v0, 0x7f0c0089

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->OKButton:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->OKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    const v0, 0x7f0c008a

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->CancelButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->CancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0c0088

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectFolderButton:Landroid/widget/Button;

    .line 49
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectFolderButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v0, 0x7f0c0052

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectedFolderText:Landroid/widget/TextView;

    .line 51
    sget-object v0, Lcom/rookiestudio/perfectviewer/Config;->BookshelfFolder:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectedFolderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :goto_0
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGModeSelect:Landroid/widget/RadioGroup;

    .line 58
    const v0, 0x7f0c0085

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TQuickSetup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->RGReadDirection:Landroid/widget/RadioGroup;

    .line 63
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectedFolderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onSelectFolder(Ljava/lang/String;)V
    .locals 4
    .parameter "SelectedFolder"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    .line 140
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->SelectedFolderText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v3, 0x7f0a00cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TQuickSetup;->BookshelfFolder:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method
