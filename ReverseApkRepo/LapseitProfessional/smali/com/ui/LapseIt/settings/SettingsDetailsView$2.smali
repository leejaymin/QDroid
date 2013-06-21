.class Lcom/ui/LapseIt/settings/SettingsDetailsView$2;
.super Ljava/lang/Object;
.source "SettingsDetailsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/settings/SettingsDetailsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 416
    :try_start_0
    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/ui/LapseIt/settings/SettingsDetailsView;->value:Ljava/lang/String;

    .line 418
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->value:Ljava/lang/String;

    const-string v4, "1080p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 419
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    #calls: Lcom/ui/LapseIt/settings/SettingsDetailsView;->buildResolutionWarning()V
    invoke-static {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->access$0(Lcom/ui/LapseIt/settings/SettingsDetailsView;)V

    .line 447
    :goto_0
    return-void

    .line 423
    :cond_0
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v5, v5, Lcom/ui/LapseIt/settings/SettingsDetailsView;->value:Ljava/lang/String;

    invoke-static {v3, v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mPrevChoice:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/SettingsDetailsView;->unselectedCheck:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 425
    const v3, 0x7f0b006f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v4, v4, Lcom/ui/LapseIt/settings/SettingsDetailsView;->selectedCheck:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v4, "limitmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 429
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->value:Ljava/lang/String;

    const-string v4, "frames"

    if-ne v3, v4, :cond_2

    .line 430
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v4, "limitvalue"

    const-string v5, "100"

    invoke-static {v3, v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    :catch_0
    move-exception v0

    .line 443
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 444
    const-string v3, "trace"

    const-string v4, "Error applying setting"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    invoke-virtual {v3}, Lcom/ui/LapseIt/settings/SettingsDetailsView;->finish()V

    goto :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->value:Ljava/lang/String;

    const-string v4, "timer"

    if-ne v3, v4, :cond_1

    .line 432
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v4, "limitvalue"

    const-string v5, "600"

    invoke-static {v3, v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 434
    :cond_3
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    iget-object v3, v3, Lcom/ui/LapseIt/settings/SettingsDetailsView;->mKey:Ljava/lang/String;

    const-string v4, "timescale"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v4, "interval"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 436
    .local v1, settingsInterval:I
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v4, "timescale"

    invoke-static {v3, v4}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, settingsTimeScale:Ljava/lang/String;
    const-string v3, "milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x64

    if-ge v1, v3, :cond_1

    .line 438
    iget-object v3, p0, Lcom/ui/LapseIt/settings/SettingsDetailsView$2;->this$0:Lcom/ui/LapseIt/settings/SettingsDetailsView;

    const-string v4, "interval"

    const-string v5, "100"

    invoke-static {v3, v4, v5}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
