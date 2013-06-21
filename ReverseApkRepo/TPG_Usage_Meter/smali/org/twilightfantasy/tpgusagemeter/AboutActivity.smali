.class public Lorg/twilightfantasy/tpgusagemeter/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 19
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    const/high16 v5, 0x7f03

    invoke-virtual {p0, v5}, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 25
    .local v3, manager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 31
    .local v2, info:Landroid/content/pm/PackageInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<h1>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v6, 0x7f040001

    invoke-virtual {p0, v6}, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</h1>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 32
    const-string v6, "<h4>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</h4>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 33
    const-string v6, "A simple application to extract a usage summary for TPG plans. Note: only mobile plans are currently supported.<br><br><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 34
    const-string v6, "E-mail: xplagu3@gmail.com<br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 35
    const-string v6, "Website: http://thomsapongrac.com<br><br>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 31
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, aboutText:Ljava/lang/String;
    const/high16 v5, 0x7f05

    invoke-virtual {p0, v5}, Lorg/twilightfantasy/tpgusagemeter/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 40
    .local v4, tv:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .end local v0           #aboutText:Ljava/lang/String;
    .end local v2           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #tv:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 27
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
