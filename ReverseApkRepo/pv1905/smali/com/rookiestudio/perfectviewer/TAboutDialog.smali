.class public Lcom/rookiestudio/perfectviewer/TAboutDialog;
.super Landroid/app/Dialog;
.source "TAboutDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private AboutText:Landroid/widget/TextView;

.field private ChangelogButton:Landroid/widget/Button;

.field private DonationButton:Landroid/widget/Button;

.field private OKButton:Landroid/widget/Button;

.field private ParentActivity:Landroid/app/Activity;

.field private TextMode:I


# direct methods
.method protected constructor <init>(Landroid/app/Activity;I)V
    .locals 1
    .parameter "parent"
    .parameter "Mode"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p1, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->ParentActivity:Landroid/app/Activity;

    .line 30
    iput p2, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->TextMode:I

    .line 31
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->requestWindowFeature(I)Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->TextMode:I

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->requestWindowFeature(I)Z

    .line 38
    return-void
.end method

.method private readTxt()Ljava/lang/String;
    .locals 6

    .prologue
    .line 79
    sget-object v4, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 80
    .local v3, inputStream:Ljava/io/InputStream;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 83
    .local v0, byteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 84
    .local v2, i:I
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 88
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v2           #i:I
    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 85
    .restart local v2       #i:I
    :cond_0
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 86
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 89
    .end local v2           #i:I
    :catch_0
    move-exception v1

    .line 91
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 100
    :pswitch_0
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->cancel()V

    .line 101
    sget-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowWarning:Z

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/rookiestudio/perfectviewer/Config;->ShowWarning:Z

    .line 103
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->ParentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TUtility;->ShowWarning(Landroid/app/Activity;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->AboutText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->readTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    const/4 v0, 0x1

    iput v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->TextMode:I

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->ParentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/rookiestudio/perfectviewer/TUtility;->OpenDonation(Landroid/app/Activity;)V

    .line 112
    invoke-virtual {p0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->dismiss()V

    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f0c0003
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->setContentView(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->ApplicationRes:Landroid/content/res/Resources;

    const/high16 v2, 0x7f0a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/rookiestudio/perfectviewer/Global;->InstallVersionStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 45
    const/4 v0, 0x3

    const v1, 0x7f020047

    invoke-virtual {p0, v0, v1}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->setFeatureDrawableResource(II)V

    .line 52
    const v0, 0x7f0c0005

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->OKButton:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->OKButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0c0004

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->ChangelogButton:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->ChangelogButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->DonationButton:Landroid/widget/Button;

    .line 57
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->DonationButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0c0001

    invoke-virtual {p0, v0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->AboutText:Landroid/widget/TextView;

    .line 59
    iget v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->TextMode:I

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->AboutText:Landroid/widget/TextView;

    const v1, 0x7f0a0071

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/rookiestudio/perfectviewer/TAboutDialog;->AboutText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/rookiestudio/perfectviewer/TAboutDialog;->readTxt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 76
    return-void
.end method
