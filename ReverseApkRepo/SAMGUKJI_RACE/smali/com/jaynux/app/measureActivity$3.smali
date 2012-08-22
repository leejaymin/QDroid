.class Lcom/jaynux/app/measureActivity$3;
.super Landroid/os/Handler;
.source "measureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jaynux/app/measureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jaynux/app/measureActivity;


# direct methods
.method constructor <init>(Lcom/jaynux/app/measureActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    .line 392
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x3

    const/high16 v2, 0x3f80

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 395
    const-string v7, ""

    .line 397
    .local v7, mDialogMessage:Ljava/lang/String;
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    .line 398
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mWriteProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$17(Lcom/jaynux/app/measureActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 400
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_8

    .line 401
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0, v3}, Lcom/jaynux/app/measureActivity;->dismissDialogSafely(I)V

    .line 402
    const-string v8, ""

    .line 403
    .local v8, openMsg:Ljava/lang/String;
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row1col1Flag:Z

    .line 407
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "gwanu_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 408
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \uad00\uc6b0\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row1col2Flag:Z

    .line 414
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "yeopo_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 415
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \uc5ec\ud3ec\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x40b3880000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_2

    .line 420
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row1col3Flag:Z

    .line 421
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "joun_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 422
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \uc870\uc6b4\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v10

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_3

    .line 427
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row2col3Flag:Z

    .line 428
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "macho_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 429
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \ub9c8\ucd08\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v4

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, v1, Lcom/jaynux/app/measureActivity;->mCycle:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x4072c00000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_4

    .line 434
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row3col1Flag:Z

    .line 435
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "yubi_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 436
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \uc720\ube44\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v3

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, v1, Lcom/jaynux/app/measureActivity;->mCycle:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x40b3880000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_5

    .line 441
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row3col2Flag:Z

    .line 442
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "jangbi_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 443
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \uc7a5\ube44\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v10

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, v1, Lcom/jaynux/app/measureActivity;->mCycle:I

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_6

    .line 448
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row3col3Flag:Z

    .line 449
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hwangchung_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 450
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " \ud669\ucda9\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 453
    :cond_6
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mChanceResult:[I

    aget v0, v0, v11

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, v1, Lcom/jaynux/app/measureActivity;->mCycle:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v5, 0x40f86a0000000000L

    mul-double/2addr v1, v5

    double-to-int v1, v1

    if-lt v0, v1, :cond_7

    .line 454
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iput-boolean v3, v0, Lcom/jaynux/app/measureActivity;->row2col1Flag:Z

    .line 455
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "hahudon_prefer_info"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 456
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\ud558\ud6c4\ub3c8\uc624\ud508!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 460
    :cond_7
    move-object v7, v8

    .line 463
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aput v4, v0, v4

    .line 464
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aput v4, v0, v3

    .line 465
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aput v4, v0, v10

    .line 466
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aput v4, v0, v11

    .line 467
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity;->showMesureText()V

    .line 469
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0, v7, v3}, Lcom/jaynux/app/measureActivity;->showMessageDialog(Ljava/lang/CharSequence;Z)V

    .line 583
    .end local v8           #openMsg:Ljava/lang/String;
    :cond_8
    :goto_0
    return-void

    .line 475
    :cond_9
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$19(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    if-lez v0, :cond_a

    .line 476
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mTimeSound:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$20(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 478
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMessageText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$21(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mValueText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$16(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "Ready"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMesaageText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$22(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\uc2dc\uc791\uae4c\uc9c0 \ub0a8\uc740 \uc2dc\uac04"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNowTimeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$23(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$19(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$19(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$24(Lcom/jaynux/app/measureActivity;I)V

    .line 485
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 488
    :cond_a
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$19(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    if-nez v0, :cond_b

    .line 490
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/jaynux/app/measureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 491
    .local v9, vibrator:Landroid/os/Vibrator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 492
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMessageText1:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$21(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\uce21\uc815 \uac12"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMesaageText2:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$22(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\ub0a8\uc740 \uc2dc\uac04"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$19(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$24(Lcom/jaynux/app/measureActivity;I)V

    .line 499
    .end local v9           #vibrator:Landroid/os/Vibrator;
    :cond_b
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$25(Lcom/jaynux/app/measureActivity;)I

    move-result v0

    if-eqz v0, :cond_c

    .line 504
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget v1, p1, Landroid/os/Message;->what:I

    iput v1, v0, Lcom/jaynux/app/measureActivity;->mStatus:I

    .line 507
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$25(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    #setter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v0, v1}, Lcom/jaynux/app/measureActivity;->access$1(Lcom/jaynux/app/measureActivity;I)V

    .line 508
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNowTimeText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$23(Lcom/jaynux/app/measureActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureTime:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$25(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mTimerHandler:Landroid/os/Handler;

    iget v1, p1, Landroid/os/Message;->what:I

    const-wide/16 v5, 0x3e8

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 511
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    iget-object v0, v0, Lcom/jaynux/app/measureActivity;->mPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mTimeSound:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$20(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto/16 :goto_0

    .line 515
    :cond_c
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    .line 516
    const-string v1, "\uce21\uc815\uc774 \ub05d\ub0ac\uc2b5\ub2c8\ub2e4."

    .line 515
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 517
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/jaynux/app/measureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Vibrator;

    .line 518
    .restart local v9       #vibrator:Landroid/os/Vibrator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v9, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V

    .line 522
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    const/4 v1, 0x4

    iput v1, v0, Lcom/jaynux/app/measureActivity;->mStatus:I

    .line 524
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mShakeButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$2(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mPowerButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$3(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 526
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$4(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 527
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$5(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mApplyButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$6(Lcom/jaynux/app/measureActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 532
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #setter for: Lcom/jaynux/app/measureActivity;->mReadyTime:I
    invoke-static {v0, v11}, Lcom/jaynux/app/measureActivity;->access$24(Lcom/jaynux/app/measureActivity;I)V

    .line 535
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_d

    .line 539
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aget v0, v0, v4

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$15(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 540
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mNum:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$15(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    aput v1, v0, v4

    .line 541
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity;->showMesureText()V

    goto/16 :goto_0

    .line 544
    :cond_d
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_e

    .line 548
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aget v0, v0, v3

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 549
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mAccelerateValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$14(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    aput v1, v0, v3

    .line 550
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity;->showMesureText()V

    goto/16 :goto_0

    .line 553
    :cond_e
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v10, :cond_f

    .line 557
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aget v0, v0, v10

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$26(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 558
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerTouchValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$26(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    aput v1, v0, v10

    .line 559
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity;->showMesureText()V

    goto/16 :goto_0

    .line 562
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v11, :cond_8

    .line 566
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    aget v0, v0, v11

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$27(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 567
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mMeasureResult:[I
    invoke-static {v0}, Lcom/jaynux/app/measureActivity;->access$18(Lcom/jaynux/app/measureActivity;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    #getter for: Lcom/jaynux/app/measureActivity;->mFingerDistanceValue:I
    invoke-static {v1}, Lcom/jaynux/app/measureActivity;->access$27(Lcom/jaynux/app/measureActivity;)I

    move-result v1

    aput v1, v0, v11

    .line 568
    iget-object v0, p0, Lcom/jaynux/app/measureActivity$3;->this$0:Lcom/jaynux/app/measureActivity;

    invoke-virtual {v0}, Lcom/jaynux/app/measureActivity;->showMesureText()V

    goto/16 :goto_0
.end method
