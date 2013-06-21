.class public Lcom/jjcgames/android/airhockey/PostMatchActivity;
.super Landroid/app/Activity;
.source "PostMatchActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "savedInstanceState"

    .prologue
    .line 26
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v15

    const/16 v16, 0x400

    invoke-virtual/range {v15 .. v16}, Landroid/view/Window;->addFlags(I)V

    .line 30
    const v15, 0x7f030005

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->setContentView(I)V

    .line 31
    const v15, 0x7f080001

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 32
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    .line 33
    const-string v17, "interfacebackground"

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/jjcgames/android/airhockey/Game;->getBitmap(Landroid/content/Context;Ljava/lang/String;ZZ)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 31
    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 36
    .local v7, i:Landroid/content/Intent;
    const-string v15, "cpu_level"

    const/16 v16, 0x1

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 37
    .local v5, cpuLevel:I
    const-string v15, "player_id"

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 39
    .local v13, playerID:I
    const/4 v11, 0x0

    .line 41
    .local v11, player:Lcom/jjcgames/android/airhockey/Player;
    :try_start_0
    new-instance v12, Lcom/jjcgames/android/airhockey/Player;

    move-object v0, v12

    move-object/from16 v1, p0

    move v2, v13

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/Player;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v11           #player:Lcom/jjcgames/android/airhockey/Player;
    .local v12, player:Lcom/jjcgames/android/airhockey/Player;
    const v15, 0x7f08000d

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    iget-object v15, v12, Lcom/jjcgames/android/airhockey/Player;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const v15, 0x7f08000e

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 50
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    const v15, 0x7f08000f

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 54
    .local v10, oldLevel:Landroid/widget/TextView;
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 58
    .local v14, r:Landroid/content/res/Resources;
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    .line 57
    invoke-static {v15}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getColorResourceIDForLevel(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 56
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 59
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->level:I

    move-object v0, v12

    iget v0, v0, Lcom/jjcgames/android/airhockey/Player;->previousLevel:I

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 60
    .local v4, change:I
    const v15, 0x7f080010

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 61
    new-instance v15, Ljava/lang/StringBuilder;

    if-lez v4, :cond_1

    const-string v16, "+"

    :goto_0
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 60
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const v15, 0x7f080011

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 64
    .local v9, newLevel:Landroid/widget/TextView;
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->level:I

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 66
    invoke-static {v15}, Lcom/jjcgames/android/airhockey/PlayerSelectActivity;->getColorResourceIDForLevel(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 65
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    iget v15, v12, Lcom/jjcgames/android/airhockey/Player;->level:I

    move-object v0, v12

    iget v0, v0, Lcom/jjcgames/android/airhockey/Player;->highestLevel:I

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 69
    const v15, 0x7f080012

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 72
    :cond_0
    const v15, 0x7f080013

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 73
    new-instance v15, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity$1;-><init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;)V

    .line 72
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget v8, v12, Lcom/jjcgames/android/airhockey/Player;->level:I

    .line 81
    .local v8, level:I
    const v15, 0x7f080014

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 82
    new-instance v15, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;

    move-object v0, v15

    move-object/from16 v1, p0

    move v2, v8

    invoke-direct {v0, v1, v2}, Lcom/jjcgames/android/airhockey/PostMatchActivity$2;-><init>(Lcom/jjcgames/android/airhockey/PostMatchActivity;I)V

    .line 81
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v11, v12

    .line 127
    .end local v4           #change:I
    .end local v8           #level:I
    .end local v9           #newLevel:Landroid/widget/TextView;
    .end local v10           #oldLevel:Landroid/widget/TextView;
    .end local v12           #player:Lcom/jjcgames/android/airhockey/Player;
    .end local v14           #r:Landroid/content/res/Resources;
    .restart local v11       #player:Lcom/jjcgames/android/airhockey/Player;
    :goto_1
    return-void

    .line 42
    .restart local p1
    :catch_0
    move-exception v15

    move-object v6, v15

    .line 44
    .local v6, e:Ljava/io/IOException;
    invoke-virtual/range {p0 .. p0}, Lcom/jjcgames/android/airhockey/PostMatchActivity;->finish()V

    goto :goto_1

    .line 61
    .end local v6           #e:Ljava/io/IOException;
    .end local v11           #player:Lcom/jjcgames/android/airhockey/Player;
    .end local p1
    .restart local v4       #change:I
    .restart local v10       #oldLevel:Landroid/widget/TextView;
    .restart local v12       #player:Lcom/jjcgames/android/airhockey/Player;
    .restart local v14       #r:Landroid/content/res/Resources;
    :cond_1
    const-string v16, ""

    goto/16 :goto_0
.end method
