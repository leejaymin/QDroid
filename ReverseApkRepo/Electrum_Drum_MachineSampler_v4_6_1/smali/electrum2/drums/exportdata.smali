.class public Lelectrum2/drums/exportdata;
.super Landroid/app/Activity;
.source "exportdata.java"


# instance fields
.field private btnOkClick:Landroid/view/View$OnClickListener;

.field fileexists:Z

.field okbutton:Landroid/widget/Button;

.field patternname:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    new-instance v0, Lelectrum2/drums/exportdata$1;

    invoke-direct {v0, p0}, Lelectrum2/drums/exportdata$1;-><init>(Lelectrum2/drums/exportdata;)V

    iput-object v0, p0, Lelectrum2/drums/exportdata;->btnOkClick:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method


# virtual methods
.method public SendSave()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 93
    iget-object v2, p0, Lelectrum2/drums/exportdata;->patternname:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, newPatternName:Ljava/lang/String;
    const-string v2, ".wav"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, ".mid"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-boolean v2, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    if-eqz v2, :cond_0

    .line 102
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, i:Landroid/content/Intent;
    const-string v2, "exportdataname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v5, v0}, Lelectrum2/drums/exportdata;->setResult(ILandroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lelectrum2/drums/exportdata;->finish()V

    .line 114
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    iget-boolean v2, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    if-nez v2, :cond_3

    .line 119
    sget-object v2, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    const-string v3, ".wav"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/electrum/exported/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".wav"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    sget-object v2, Lelectrum2/drums/globalSounds;->exporteextension:Ljava/lang/String;

    const-string v3, ".mid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lelectrum2/drums/globalSounds;->externalstorage:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/electrum/exported/midi/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".mid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 123
    :cond_2
    iput-boolean v6, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lelectrum2/drums/overWrite;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 130
    .restart local v0       #i:Landroid/content/Intent;
    sput-boolean v6, Lelectrum2/drums/globalSounds;->IsOwnActivity:Z

    .line 132
    const/16 v2, 0x1e

    invoke-virtual {p0, v0, v2}, Lelectrum2/drums/exportdata;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    .end local v0           #i:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 137
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    .restart local v0       #i:Landroid/content/Intent;
    const-string v2, "exportdataname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v5, v0}, Lelectrum2/drums/exportdata;->setResult(ILandroid/content/Intent;)V

    .line 144
    invoke-virtual {p0}, Lelectrum2/drums/exportdata;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 54
    if-eqz p2, :cond_2

    .line 56
    const/16 v2, 0x1e

    if-ne p1, v2, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 60
    .local v0, extras:Landroid/os/Bundle;
    const-string v2, "overwriteanswer"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, result:Ljava/lang/String;
    const-string v2, "YES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 65
    invoke-virtual {p0}, Lelectrum2/drums/exportdata;->SendSave()V

    .line 83
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 68
    .restart local v0       #extras:Landroid/os/Bundle;
    .restart local v1       #result:Ljava/lang/String;
    :cond_1
    iput-boolean v3, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    goto :goto_0

    .line 80
    .end local v0           #extras:Landroid/os/Bundle;
    .end local v1           #result:Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lelectrum2/drums/exportdata;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lelectrum2/drums/exportdata;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 33
    const v0, 0x7f070047

    invoke-virtual {p0, v0}, Lelectrum2/drums/exportdata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lelectrum2/drums/exportdata;->patternname:Landroid/widget/EditText;

    .line 37
    const v0, 0x7f07001c

    invoke-virtual {p0, v0}, Lelectrum2/drums/exportdata;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lelectrum2/drums/exportdata;->okbutton:Landroid/widget/Button;

    .line 40
    iget-object v0, p0, Lelectrum2/drums/exportdata;->okbutton:Landroid/widget/Button;

    iget-object v1, p0, Lelectrum2/drums/exportdata;->btnOkClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lelectrum2/drums/exportdata;->fileexists:Z

    .line 46
    return-void
.end method
