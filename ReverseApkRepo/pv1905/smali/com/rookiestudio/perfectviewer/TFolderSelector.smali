.class public Lcom/rookiestudio/perfectviewer/TFolderSelector;
.super Landroid/app/Dialog;
.source "TFolderSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Dialog;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private CancelButton:Landroid/widget/Button;

.field private FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

.field private FolderListView:Landroid/widget/ListView;

.field private FolderText:Landroid/widget/TextView;

.field private InitFolder:Ljava/lang/String;

.field private OKButton:Landroid/widget/Button;

.field public OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

.field private TitleText:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "S"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

    .line 41
    iput-object p2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->InitFolder:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OnSelectFolder:Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/rookiestudio/perfectviewer/TFolderSelectorCallback;->onSelectFolder(Ljava/lang/String;)V

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->dismiss()V

    goto :goto_0

    .line 85
    :pswitch_2
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->dismiss()V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->requestWindowFeature(I)Z

    .line 51
    const v0, 0x7f030029

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->setContentView(I)V

    .line 58
    const v0, 0x7f0c0022

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    .line 59
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 61
    const v0, 0x7f0c0043

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->TitleText:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->TitleText:Landroid/widget/TextView;

    const v1, 0x7f0a0104

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v0, 0x7f0c0091

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderText:Landroid/widget/TextView;

    .line 64
    const v0, 0x7f0c0012

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OKButton:Landroid/widget/Button;

    .line 65
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->OKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v0, 0x7f0c0014

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->CancelButton:Landroid/widget/Button;

    .line 67
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->CancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v0, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TFolderSelector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;-><init>(Lcom/rookiestudio/perfectviewer/TFolderSelector;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    .line 69
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->InitFolder:Ljava/lang/String;

    sget-boolean v2, Lcom/rookiestudio/perfectviewer/Config;->ShowHideFiles:Z

    invoke-virtual {v0, v1, v2}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->SetFolder(Ljava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v1, v1, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 73
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 92
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    invoke-virtual {v2, p3}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->getItem(I)Lcom/rookiestudio/baseclass/TFileData;

    move-result-object v1

    .line 93
    .local v1, aFileData:Lcom/rookiestudio/baseclass/TFileData;
    iget-object v0, v1, Lcom/rookiestudio/baseclass/TFileData;->FileName:Ljava/lang/String;

    .line 94
    .local v0, SelectFolder:Ljava/lang/String;
    const-string v2, ".."

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v2, v2, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->CurrentFolder:Ljava/lang/String;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    sget-boolean v3, Lcom/rookiestudio/perfectviewer/Config;->ShowHideFiles:Z

    invoke-virtual {v2, v0, v3}, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->SetFolder(Ljava/lang/String;Z)V

    .line 101
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    iget-object v3, v3, Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;->ShortName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FileLister:Lcom/rookiestudio/perfectviewer/TFolderSelector$TFolderList;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v2, p0, Lcom/rookiestudio/perfectviewer/TFolderSelector;->FolderListView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 104
    return-void

    .line 97
    :cond_0
    iget-object v0, v1, Lcom/rookiestudio/baseclass/TFileData;->FullFileName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
