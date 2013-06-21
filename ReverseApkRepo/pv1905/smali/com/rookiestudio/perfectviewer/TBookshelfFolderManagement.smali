.class public Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;
.super Landroid/app/Activity;
.source "TBookshelfFolderManagement.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;
.implements Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;",
        "Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;",
        "Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;"
    }
.end annotation


# instance fields
.field private BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

.field private MainListView:Landroid/widget/ListView;

.field private SaveButton:Landroid/widget/Button;

.field private ScanButton:Landroid/widget/Button;

.field private ScanProgressDialog:Landroid/app/ProgressDialog;

.field private ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    .line 50
    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 42
    return-void
.end method

.method public static CreateBookshelfFolderManagement(Landroid/app/Activity;)V
    .locals 2
    .parameter "Parent"

    .prologue
    .line 277
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 278
    .local v0, aBookshelfFolderManagement:Landroid/content/Intent;
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c002d

    if-ne v1, v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v1}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFolderSelector;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->SDCardFolder:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TFolderSelector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .local v0, FolderSelector:Lcom/rookiestudio/perfectviewer/TFolderSelector;
    iput-object p0, v0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

    .line 133
    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->show()V

    goto :goto_0

    .line 134
    .end local v0           #FolderSelector:Lcom/rookiestudio/perfectviewer/TFolderSelector;
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c002c

    if-ne v1, v2, :cond_0

    .line 135
    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/rookiestudio/perfectviewer/TBookshelf;->ScanFolder(Lcom/rookiestudio/baseclass/TResultReceiver;Landroid/content/Context;Z)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->setContentView(I)V

    .line 56
    new-instance v0, Lcom/rookiestudio/baseclass/TResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/rookiestudio/baseclass/TResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    .line 57
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanReceiver:Lcom/rookiestudio/baseclass/TResultReceiver;

    invoke-virtual {v0, p0}, Lcom/rookiestudio/baseclass/TResultReceiver;->setReceiver(Lcom/rookiestudio/baseclass/TResultReceiver$Receiver;)V

    .line 58
    sget v0, Lcom/rookiestudio/perfectviewer/Config;->ScreenOrientation:I

    invoke-static {p0, v0}, Lcom/rookiestudio/perfectviewer/TUtility;->SetScreenOrientation(Landroid/app/Activity;I)V

    .line 59
    const v0, 0x7f0c002d

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->SaveButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->SaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->MainListView:Landroid/widget/ListView;

    .line 64
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->MainListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 66
    new-instance v0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-direct {v0, p0, p0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;-><init>(Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    .line 67
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Load()V

    .line 68
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->MainListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getCount2()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    :cond_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->getCount2()I

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0, p3}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Delete(I)V

    .line 91
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->notifyDataSetChanged()V

    .line 92
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Update()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Update()V

    .line 74
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Save()V

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 76
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 7
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    const/4 v6, 0x0

    .line 285
    packed-switch p1, :pswitch_data_0

    .line 319
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 287
    :pswitch_1
    const-string v3, "size"

    invoke-virtual {p2, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 288
    .local v2, size:I
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, FileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 291
    new-instance v3, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    .line 292
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const v5, 0x7f0a00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 295
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 296
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 297
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v6}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 298
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->show()V

    .line 299
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    .line 304
    .end local v1           #FileName:Ljava/lang/String;
    .end local v2           #size:I
    :pswitch_2
    :try_start_0
    const-string v3, "completed"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 305
    .local v0, Completed:I
    const-string v3, "filename"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 306
    .restart local v1       #FileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v0}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 308
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    .end local v0           #Completed:I
    .end local v1           #FileName:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 314
    :pswitch_3
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 315
    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->ScanProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onSelectFolder(Ljava/lang/String;)V
    .locals 1
    .parameter "SelectedFolder"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0, p1}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Add(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->Update()V

    .line 143
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement;->BookshelfFolderFiles:Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;

    invoke-virtual {v0}, Lcom/rookiestudio/perfectviewer/TBookshelfFolderManagement$TBookshelfFolderFiles;->notifyDataSetChanged()V

    .line 144
    return-void
.end method
