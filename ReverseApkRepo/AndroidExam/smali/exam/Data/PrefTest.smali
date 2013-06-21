.class public Lexam/Data/PrefTest;
.super Landroid/app/Activity;
.source "PrefTest.java"


# instance fields
.field textName:Landroid/widget/TextView;

.field textStNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v3, 0x7f03000c

    invoke-virtual {p0, v3}, Lexam/Data/PrefTest;->setContentView(I)V

    .line 16
    const v3, 0x7f0c001d

    invoke-virtual {p0, v3}, Lexam/Data/PrefTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lexam/Data/PrefTest;->textName:Landroid/widget/TextView;

    .line 17
    const v3, 0x7f0c001e

    invoke-virtual {p0, v3}, Lexam/Data/PrefTest;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lexam/Data/PrefTest;->textStNum:Landroid/widget/TextView;

    .line 19
    const-string v3, "PrefTest"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lexam/Data/PrefTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 20
    .local v2, pref:Landroid/content/SharedPreferences;
    const-string v3, "Name"

    const-string v4, "\uc774\ub984\uc5c6\uc74c"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, Name:Ljava/lang/String;
    iget-object v3, p0, Lexam/Data/PrefTest;->textName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    const-string v3, "StNum"

    const v4, 0x132b872

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 24
    .local v1, StNum:I
    iget-object v3, p0, Lexam/Data/PrefTest;->textStNum:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    return-void
.end method

.method public onPause()V
    .locals 6

    .prologue
    .line 28
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 30
    const-string v4, "PrefTest"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lexam/Data/PrefTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 31
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 33
    .local v2, edit:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lexam/Data/PrefTest;->textName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, Name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 36
    .local v1, StNum:I
    :try_start_0
    iget-object v4, p0, Lexam/Data/PrefTest;->textStNum:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 40
    :goto_0
    const-string v4, "Name"

    invoke-interface {v2, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    const-string v4, "StNum"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 43
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 44
    return-void

    .line 38
    :catch_0
    move-exception v4

    goto :goto_0
.end method
