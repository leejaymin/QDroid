.class public Lcom/jjcgames/android/airhockey/PostMatchActivity;
.super Landroid/app/Activity;
.source "PostMatchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->requestWindowFeature(I)Z

    .line 28
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x400

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 29
    const v11, 0x7f030006

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->setContentView(I)V

    .line 31
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 32
    .local v3, i:Landroid/content/Intent;
    const-string v11, "cpu_level"

    const/4 v12, 0x1

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 33
    .local v1, cpuLevel:I
    const-string v11, "player_id"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 35
    .local v9, playerID:I
    const/4 v7, 0x0

    .line 37
    .local v7, player:Lcom/jjcgames/android/airhockey/Player;
    :try_start_0
    new-instance v8, Lcom/jjcgames/android/airhockey/Player;

    invoke-direct {v8, p0, v9}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v7           #player:Lcom/jjcgames/android/airhockey/Player;
    .local v8, player:Lcom/jjcgames/android/airhockey/Player;
    const v11, 0x7f090014

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v11, v8, Lcom/jjcgames/android/airhockey/Player;->name:Ljava/lang/String;

    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    const v11, 0x7f090015

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 46
    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    const v11, 0x7f090016

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 50
    .local v6, oldLevel:Landroid/widget/TextView;
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 54
    .local v10, r:Landroid/content/res/Resources;
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    .line 53
    invoke-static {v11}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getColorResourceIDForLevel(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 52
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->level:I

    iget v12, v8, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    sub-int v0, v11, v12

    .line 56
    .local v0, change:I
    const v11, 0x7f090017

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 57
    new-instance v11, Ljava/lang/StringBuilder;

    if-lez v0, :cond_1

    const-string v12, "+"

    :goto_0
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 56
    invoke-virtual {p1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const v11, 0x7f090018

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, newLevel:Landroid/widget/TextView;
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->level:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 62
    invoke-static {v11}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getColorResourceIDForLevel(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 61
    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget v11, v8, Lcom/jjcgames/android/airhockey/Player;->level:I

    iget v12, v8, Lcom/jjcgames/android/airhockey/Player;->highestLevel:I

    if-ne v11, v12, :cond_0

    .line 65
    const v11, 0x7f090019

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 68
    :cond_0
    const v11, 0x7f09000d

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 69
    new-instance v11, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;

    invoke-direct {v11, p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;-><init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;)V

    .line 68
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget v4, v8, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 77
    .local v4, level:I
    const v11, 0x7f09001a

    invoke-virtual {p0, v11}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 78
    new-instance v11, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;

    invoke-direct {v11, p0, v4}, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;-><init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;I)V

    .line 77
    invoke-virtual {p1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v7, v8

    .line 123
    .end local v0           #change:I
    .end local v4           #level:I
    .end local v5           #newLevel:Landroid/widget/TextView;
    .end local v6           #oldLevel:Landroid/widget/TextView;
    .end local v8           #player:Lcom/jjcgames/android/airhockey/Player;
    .end local v10           #r:Landroid/content/res/Resources;
    .restart local v7       #player:Lcom/jjcgames/android/airhockey/Player;
    :goto_1
    return-void

    .line 38
    .restart local p1
    :catch_0
    move-exception v11

    move-object v2, v11

    .line 40
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->finish()V

    goto :goto_1

    .line 57
    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #player:Lcom/jjcgames/android/airhockey/Player;
    .end local p1
    .restart local v0       #change:I
    .restart local v6       #oldLevel:Landroid/widget/TextView;
    .restart local v8       #player:Lcom/jjcgames/android/airhockey/Player;
    .restart local v10       #r:Landroid/content/res/Resources;
    :cond_1
    const-string v12, ""

    goto :goto_0
.end method
