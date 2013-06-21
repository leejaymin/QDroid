.class public Lcom/jaynux/app/SelectHero;
.super Landroid/app/Activity;
.source "SelectHero.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jaynux/app/SelectHero$Hero;
    }
.end annotation


# instance fields
.field ag:I

.field booster:I

.field cancelBtn:Landroid/widget/Button;

.field damage:I

.field hero:[[Lcom/jaynux/app/SelectHero$Hero;

.field heroBtnView:Landroid/widget/LinearLayout;

.field i:Landroid/content/Intent;

.field mEdit:Landroid/content/SharedPreferences$Editor;

.field mPref:Landroid/content/SharedPreferences;

.field mPreferences:Z

.field masking_img:[[I

.field masking_img2:[[I

.field name:Ljava/lang/String;

.field row1col1:Landroid/widget/ImageButton;

.field row1col1Flag:Z

.field row1col2:Landroid/widget/ImageButton;

.field row1col2Flag:Z

.field row1col3:Landroid/widget/ImageButton;

.field row1col3Flag:Z

.field row2col1:Landroid/widget/ImageButton;

.field row2col1Flag:Z

.field row2col2:Landroid/widget/ImageButton;

.field row2col2Flag:Z

.field row2col3:Landroid/widget/ImageButton;

.field row2col3Flag:Z

.field row3col1:Landroid/widget/ImageButton;

.field row3col1Flag:Z

.field row3col2:Landroid/widget/ImageButton;

.field row3col2Flag:Z

.field row3col3:Landroid/widget/ImageButton;

.field row3col3Flag:Z

.field selectBtn:Landroid/widget/Button;

.field selectFlag:Z

.field selectImgView:Landroid/widget/ImageView;

.field selectedHeroInfo:Landroid/widget/TextView;

.field selectedHeroOption:Landroid/widget/TextView;

.field selected_img:[[I

.field speed:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 12
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row1col1Flag:Z

    .line 13
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row1col2Flag:Z

    .line 14
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row1col3Flag:Z

    .line 15
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row2col1Flag:Z

    .line 16
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row2col2Flag:Z

    .line 17
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row2col3Flag:Z

    .line 18
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row3col1Flag:Z

    .line 19
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row3col2Flag:Z

    .line 20
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->row3col3Flag:Z

    .line 23
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    .line 24
    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    .line 25
    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    .line 28
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v2

    .line 29
    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    .line 30
    new-array v1, v3, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->masking_img:[[I

    .line 33
    new-array v0, v3, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v2

    .line 34
    new-array v1, v3, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    .line 35
    new-array v1, v3, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->masking_img2:[[I

    .line 59
    filled-new-array {v3, v3}, [I

    move-result-object v0

    const-class v1, Lcom/jaynux/app/SelectHero$Hero;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/jaynux/app/SelectHero$Hero;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    .line 71
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->selectFlag:Z

    .line 76
    iput-boolean v2, p0, Lcom/jaynux/app/SelectHero;->mPreferences:Z

    .line 9
    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0x10t 0x0t 0x2t 0x7ft
        0x5et 0x0t 0x2t 0x7ft
        0x31t 0x0t 0x2t 0x7ft
    .end array-data

    .line 24
    :array_1
    .array-data 0x4
        0x1ct 0x0t 0x2t 0x7ft
        0x45t 0x0t 0x2t 0x7ft
        0x4dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 25
    :array_2
    .array-data 0x4
        0x68t 0x0t 0x2t 0x7ft
        0x39t 0x0t 0x2t 0x7ft
        0x26t 0x0t 0x2t 0x7ft
    .end array-data

    .line 28
    :array_3
    .array-data 0x4
        0x13t 0x0t 0x2t 0x7ft
        0x61t 0x0t 0x2t 0x7ft
        0x3et 0x0t 0x2t 0x7ft
    .end array-data

    .line 29
    :array_4
    .array-data 0x4
        0x1ft 0x0t 0x2t 0x7ft
        0x57t 0x0t 0x2t 0x7ft
        0x50t 0x0t 0x2t 0x7ft
    .end array-data

    .line 30
    :array_5
    .array-data 0x4
        0x6bt 0x0t 0x2t 0x7ft
        0x3ct 0x0t 0x2t 0x7ft
        0x29t 0x0t 0x2t 0x7ft
    .end array-data

    .line 33
    :array_6
    .array-data 0x4
        0x12t 0x0t 0x2t 0x7ft
        0x60t 0x0t 0x2t 0x7ft
        0x3dt 0x0t 0x2t 0x7ft
    .end array-data

    .line 34
    :array_7
    .array-data 0x4
        0x1et 0x0t 0x2t 0x7ft
        0x56t 0x0t 0x2t 0x7ft
        0x4ft 0x0t 0x2t 0x7ft
    .end array-data

    .line 35
    :array_8
    .array-data 0x4
        0x6at 0x0t 0x2t 0x7ft
        0x3bt 0x0t 0x2t 0x7ft
        0x28t 0x0t 0x2t 0x7ft
    .end array-data
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 296
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row1col1:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row1col1Flag:Z

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0, v3, v3}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 299
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 300
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row1col2:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 305
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row1col2Flag:Z

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {p0, v3, v2}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 307
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 308
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto :goto_0

    .line 311
    :cond_3
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 312
    :cond_4
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row1col3:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 313
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row1col3Flag:Z

    if-eqz v1, :cond_5

    .line 314
    invoke-virtual {p0, v3, v4}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 315
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000b

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 316
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto :goto_0

    .line 319
    :cond_5
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 320
    :cond_6
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row2col1:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 321
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row2col1Flag:Z

    if-eqz v1, :cond_7

    .line 322
    invoke-virtual {p0, v2, v3}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 323
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 324
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto :goto_0

    .line 327
    :cond_7
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 328
    :cond_8
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row2col2:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 329
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row2col2Flag:Z

    if-eqz v1, :cond_9

    .line 330
    invoke-virtual {p0, v2, v2}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 331
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 332
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto/16 :goto_0

    .line 335
    :cond_9
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 336
    :cond_a
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row2col3:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 337
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row2col3Flag:Z

    if-eqz v1, :cond_b

    .line 338
    invoke-virtual {p0, v2, v4}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 339
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f07000f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto/16 :goto_0

    .line 343
    :cond_b
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 344
    :cond_c
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row3col1:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 345
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row3col1Flag:Z

    if-eqz v1, :cond_d

    .line 346
    invoke-virtual {p0, v4, v3}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 347
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 348
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto/16 :goto_0

    .line 351
    :cond_d
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 352
    :cond_e
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row3col2:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 353
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row3col2Flag:Z

    if-eqz v1, :cond_f

    .line 354
    invoke-virtual {p0, v4, v2}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 355
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 356
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto/16 :goto_0

    .line 359
    :cond_f
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 360
    :cond_10
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->row3col3:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 361
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->row3col3Flag:Z

    if-eqz v1, :cond_11

    .line 362
    invoke-virtual {p0, v4, v4}, Lcom/jaynux/app/SelectHero;->setting(II)V

    .line 363
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const v2, 0x7f070012

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 364
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setOptionTextView()V

    goto/16 :goto_0

    .line 367
    :cond_11
    const-string v1, "\uc624\ud508 \uc870\uac74\uc774 \ucda9\uc871\ub418\uc9c0 \uc54a\uc558\uc2b5\ub2c8\ub2e4"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 368
    :cond_12
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 369
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectImgView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->heroBtnView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectedHeroOption:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iput-boolean v3, p0, Lcom/jaynux/app/SelectHero;->selectFlag:Z

    goto/16 :goto_0

    .line 374
    :cond_13
    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selectBtn:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    iget-boolean v1, p0, Lcom/jaynux/app/SelectHero;->selectFlag:Z

    if-eqz v1, :cond_14

    .line 376
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 377
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    iget-object v2, p0, Lcom/jaynux/app/SelectHero;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "ag"

    iget v2, p0, Lcom/jaynux/app/SelectHero;->ag:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    const-string v1, "speed"

    iget v2, p0, Lcom/jaynux/app/SelectHero;->speed:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 380
    const-string v1, "booster"

    iget v2, p0, Lcom/jaynux/app/SelectHero;->booster:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 381
    const-string v1, "damage"

    iget v2, p0, Lcom/jaynux/app/SelectHero;->damage:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 383
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/jaynux/app/SelectHero;->setResult(ILandroid/content/Intent;)V

    .line 384
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->finish()V

    goto/16 :goto_0

    .line 386
    .end local v0           #intent:Landroid/content/Intent;
    :cond_14
    const-string v1, "\uce90\ub9ad\ud130\ub97c \uc120\ud0dd\ud574 \uc8fc\uc138\uc694"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->setContentView(I)V

    .line 83
    const v0, 0x7f090045

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col1:Landroid/widget/ImageButton;

    .line 84
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col2:Landroid/widget/ImageButton;

    .line 85
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col3:Landroid/widget/ImageButton;

    .line 86
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col1:Landroid/widget/ImageButton;

    .line 87
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col2:Landroid/widget/ImageButton;

    .line 88
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col3:Landroid/widget/ImageButton;

    .line 89
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col1:Landroid/widget/ImageButton;

    .line 90
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col2:Landroid/widget/ImageButton;

    .line 91
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col3:Landroid/widget/ImageButton;

    .line 93
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->cancelBtn:Landroid/widget/Button;

    .line 94
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->selectBtn:Landroid/widget/Button;

    .line 96
    const v0, 0x7f090043

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->selectImgView:Landroid/widget/ImageView;

    .line 97
    const v0, 0x7f090044

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->heroBtnView:Landroid/widget/LinearLayout;

    .line 99
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->selectedHeroInfo:Landroid/widget/TextView;

    .line 100
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/jaynux/app/SelectHero;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->selectedHeroOption:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->selectBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    const/4 v8, 0x0

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\uad00\uc6b0"

    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 116
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    const/4 v8, 0x1

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\uc5ec\ud3ec"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 117
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x0

    aget-object v7, v0, v1

    const/4 v8, 0x2

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\uc870\uc6b4"

    const/4 v3, -0x3

    const/4 v4, 0x3

    const/4 v5, 0x3

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 118
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    const/4 v8, 0x0

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\ud558\ud6c4\ub3c8"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xa

    const/4 v6, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 119
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    const/4 v8, 0x1

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\ud0dc\ud76c"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 120
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x1

    aget-object v7, v0, v1

    const/4 v8, 0x2

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\ub9c8\ucd08"

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 121
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x2

    aget-object v7, v0, v1

    const/4 v8, 0x0

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\uc720\ube44"

    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 122
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x2

    aget-object v7, v0, v1

    const/4 v8, 0x1

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\uc7a5\ube44"

    const/4 v3, -0x2

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 123
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    const/4 v1, 0x2

    aget-object v7, v0, v1

    const/4 v8, 0x2

    new-instance v0, Lcom/jaynux/app/SelectHero$Hero;

    const-string v2, "\ud669\ucda9"

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/4 v5, 0x2

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/jaynux/app/SelectHero$Hero;-><init>(Lcom/jaynux/app/SelectHero;Ljava/lang/String;IIII)V

    aput-object v0, v7, v8

    .line 137
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    .line 139
    const-string v0, "preftest"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/jaynux/app/SelectHero;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    .line 140
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->mEdit:Landroid/content/SharedPreferences$Editor;

    .line 141
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "taehui_prefer_info"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 142
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setSelectableHero()V

    .line 147
    invoke-virtual {p0}, Lcom/jaynux/app/SelectHero;->setBtnImg()V

    .line 148
    return-void
.end method

.method public setBtnImg()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const v2, 0x7f020052

    .line 205
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col1Flag:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v3

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 211
    :goto_0
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col2Flag:Z

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v3

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 217
    :goto_1
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col3Flag:Z

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col3:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v3

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 223
    :goto_2
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col1Flag:Z

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v4

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 229
    :goto_3
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col2Flag:Z

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v4

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 235
    :goto_4
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col3Flag:Z

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col3:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v4

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 241
    :goto_5
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col1Flag:Z

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v5

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 247
    :goto_6
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col2Flag:Z

    if-eqz v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v5

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 253
    :goto_7
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col3Flag:Z

    if-eqz v0, :cond_8

    .line 254
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col3:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->selected_img:[[I

    aget-object v1, v1, v5

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 259
    :goto_8
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row1col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_3

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_4

    .line 238
    :cond_5
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row2col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_5

    .line 244
    :cond_6
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col1:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_6

    .line 250
    :cond_7
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col2:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_7

    .line 256
    :cond_8
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->row3col3:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_8
.end method

.method public setHeroOption(II)V
    .locals 1
    .parameter "row"
    .parameter "col"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/jaynux/app/SelectHero$Hero;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/jaynux/app/SelectHero;->name:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/jaynux/app/SelectHero$Hero;->ag:I

    iput v0, p0, Lcom/jaynux/app/SelectHero;->ag:I

    .line 170
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/jaynux/app/SelectHero$Hero;->speed:I

    iput v0, p0, Lcom/jaynux/app/SelectHero;->speed:I

    .line 171
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/jaynux/app/SelectHero$Hero;->booster:I

    iput v0, p0, Lcom/jaynux/app/SelectHero;->booster:I

    .line 172
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->hero:[[Lcom/jaynux/app/SelectHero$Hero;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    iget v0, v0, Lcom/jaynux/app/SelectHero$Hero;->damage:I

    iput v0, p0, Lcom/jaynux/app/SelectHero;->damage:I

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->selectFlag:Z

    .line 174
    return-void
.end method

.method public setOptionTextView()V
    .locals 7

    .prologue
    .line 273
    iget v5, p0, Lcom/jaynux/app/SelectHero;->ag:I

    if-ltz v5, :cond_0

    .line 274
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, option_ag:Ljava/lang/String;
    :goto_0
    iget v5, p0, Lcom/jaynux/app/SelectHero;->speed:I

    if-ltz v5, :cond_1

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 281
    .local v3, option_speed:Ljava/lang/String;
    :goto_1
    iget v5, p0, Lcom/jaynux/app/SelectHero;->booster:I

    if-ltz v5, :cond_2

    .line 282
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, option_booster:Ljava/lang/String;
    :goto_2
    iget v5, p0, Lcom/jaynux/app/SelectHero;->damage:I

    if-ltz v5, :cond_3

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "+"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, option_damage:Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Option\nTick : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nSpeed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nBooster : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    const-string v6, "\nDamage : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 290
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/jaynux/app/SelectHero;->selectedHeroOption:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    return-void

    .line 276
    .end local v0           #option_ag:Ljava/lang/String;
    .end local v1           #option_booster:Ljava/lang/String;
    .end local v2           #option_damage:Ljava/lang/String;
    .end local v3           #option_speed:Ljava/lang/String;
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->ag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #option_ag:Ljava/lang/String;
    goto/16 :goto_0

    .line 280
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->speed:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #option_speed:Ljava/lang/String;
    goto :goto_1

    .line 284
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->booster:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #option_booster:Ljava/lang/String;
    goto :goto_2

    .line 288
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/jaynux/app/SelectHero;->damage:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #option_damage:Ljava/lang/String;
    goto :goto_3
.end method

.method public setSelectableHero()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 178
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "preferences"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->mPreferences:Z

    .line 179
    iget-boolean v0, p0, Lcom/jaynux/app/SelectHero;->mPreferences:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "gwanu_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col1Flag:Z

    .line 181
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "yeopo_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col2Flag:Z

    .line 182
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "joun_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col3Flag:Z

    .line 183
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "hahudon_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col1Flag:Z

    .line 184
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "taehui_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col2Flag:Z

    .line 185
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "macho_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col3Flag:Z

    .line 186
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "yubi_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col1Flag:Z

    .line 187
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "jangbi_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col2Flag:Z

    .line 188
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->mPref:Landroid/content/SharedPreferences;

    const-string v1, "hwangchung_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col3Flag:Z

    .line 201
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row1col1"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col1Flag:Z

    .line 192
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row1col2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col2Flag:Z

    .line 193
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row1col3"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row1col3Flag:Z

    .line 194
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row2col1"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col1Flag:Z

    .line 195
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row2col2"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col2Flag:Z

    .line 196
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row2col3"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row2col3Flag:Z

    .line 197
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row3col1"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col1Flag:Z

    .line 198
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row3col2"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col2Flag:Z

    .line 199
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->i:Landroid/content/Intent;

    const-string v1, "row3col3"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jaynux/app/SelectHero;->row3col3Flag:Z

    goto :goto_0
.end method

.method public setting(II)V
    .locals 2
    .parameter "row"
    .parameter "col"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->selectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->heroBtnView:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/jaynux/app/SelectHero;->selectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/jaynux/app/SelectHero;->masking_img2:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 265
    invoke-virtual {p0, p1, p2}, Lcom/jaynux/app/SelectHero;->setHeroOption(II)V

    .line 266
    return-void
.end method
