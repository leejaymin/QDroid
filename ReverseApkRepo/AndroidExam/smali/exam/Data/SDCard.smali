.class public Lexam/Data/SDCard;
.super Landroid/app/Activity;
.source "SDCard.java"


# instance fields
.field mClickListener:Landroid/view/View$OnClickListener;

.field mEdit:Landroid/widget/EditText;

.field mSdPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    new-instance v0, Lexam/Data/SDCard$1;

    invoke-direct {v0, p0}, Lexam/Data/SDCard$1;-><init>(Lexam/Data/SDCard;)V

    iput-object v0, p0, Lexam/Data/SDCard;->mClickListener:Landroid/view/View$OnClickListener;

    .line 11
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 16
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lexam/Data/SDCard;->setContentView(I)V

    .line 18
    const v1, 0x7f0c0018

    invoke-virtual {p0, v1}, Lexam/Data/SDCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lexam/Data/SDCard;->mEdit:Landroid/widget/EditText;

    .line 19
    const v1, 0x7f0c0020

    invoke-virtual {p0, v1}, Lexam/Data/SDCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Data/SDCard;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Lexam/Data/SDCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Data/SDCard;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    const v1, 0x7f0c001b

    invoke-virtual {p0, v1}, Lexam/Data/SDCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lexam/Data/SDCard;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, ext:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    .line 29
    :goto_0
    return-void

    .line 27
    :cond_0
    const-string v1, "unmounted"

    iput-object v1, p0, Lexam/Data/SDCard;->mSdPath:Ljava/lang/String;

    goto :goto_0
.end method
