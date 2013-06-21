.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$intervalWidget:Landroid/widget/RelativeLayout;

.field private final synthetic val$milliRatio:Landroid/widget/RadioButton;

.field private final synthetic val$minsRatio:Landroid/widget/RadioButton;

.field private final synthetic val$secsRatio:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    iput-object p2, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$intervalWidget:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$milliRatio:Landroid/widget/RadioButton;

    iput-object p4, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$minsRatio:Landroid/widget/RadioButton;

    iput-object p5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$secsRatio:Landroid/widget/RadioButton;

    iput-object p6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$input:Landroid/widget/EditText;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const v8, 0x7f0b000b

    .line 293
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    .line 295
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$intervalWidget:Landroid/widget/RelativeLayout;

    const v6, 0x7f0b00b7

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 296
    .local v3, radioScale:Landroid/widget/RadioGroup;
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    .line 297
    .local v4, selectedId:I
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$milliRatio:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 298
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v6, "timescale"

    const-string v7, "milliseconds"

    invoke-static {v5, v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v6, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v6}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "timescale"

    invoke-static {v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    .line 307
    const/4 v2, 0x1

    .line 308
    .local v2, intervalValue:I
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 309
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$input:Landroid/widget/EditText;

    const-string v6, "1"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v6, "milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 322
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080112

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    :goto_2
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "interval"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    return-void

    .line 299
    .end local v1           #frameString:Ljava/lang/String;
    .end local v2           #intervalValue:I
    :cond_2
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$minsRatio:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 300
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v6, "timescale"

    const-string v7, "minutes"

    invoke-static {v5, v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_3
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$secsRatio:Landroid/widget/RadioButton;

    invoke-virtual {v5}, Landroid/widget/RadioButton;->getId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 302
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v6, "timescale"

    const-string v7, "seconds"

    invoke-static {v5, v6, v7}, Lcom/ui/LapseIt/settings/SettingsHelper;->updateSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    .restart local v2       #intervalValue:I
    :cond_4
    :try_start_0
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 313
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v6, "milliseconds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x64

    if-ge v2, v5, :cond_1

    .line 314
    const/16 v2, 0x64

    goto/16 :goto_1

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 325
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v6, "seconds"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 326
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 327
    .restart local v1       #frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 328
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 330
    .end local v1           #frameString:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0800bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 331
    .restart local v1       #frameString:Ljava/lang/String;
    const-string v5, "XXX"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-object v5, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;->this$1:Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;

    #getter for: Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    invoke-static {v5}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-result-object v5

    iget-object v5, v5, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->secondItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method
