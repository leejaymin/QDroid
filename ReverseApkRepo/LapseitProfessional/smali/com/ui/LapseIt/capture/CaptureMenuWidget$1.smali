.class Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;
.super Ljava/lang/Object;
.source "CaptureMenuWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ui/LapseIt/capture/CaptureMenuWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;


# direct methods
.method constructor <init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)Lcom/ui/LapseIt/capture/CaptureMenuWidget;
    .locals 1
    .parameter

    .prologue
    .line 205
    iget-object v0, p0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 25
    .parameter "v"

    .prologue
    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isShowing:Z

    if-nez v2, :cond_0

    .line 573
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureThread;->isPaused:Z

    if-eqz v2, :cond_3

    .line 218
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->isManual:Z

    if-nez v2, :cond_2

    .line 219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    #calls: Lcom/ui/LapseIt/capture/CaptureMenuWidget;->hideMenuAnimation()V
    invoke-static {v2}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->access$0(Lcom/ui/LapseIt/capture/CaptureMenuWidget;)V

    .line 222
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v3, "delay"

    invoke-static {v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 223
    .local v19, delayString:Ljava/lang/String;
    const/16 v18, 0x0

    .line 225
    .local v18, delay:I
    :try_start_0
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    .line 230
    :goto_1
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$1;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V

    .line 236
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 230
    move-wide/from16 v0, v23

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 226
    :catch_0
    move-exception v20

    .line 227
    .local v20, e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 239
    .end local v18           #delay:I
    .end local v19           #delayString:Ljava/lang/String;
    .end local v20           #e:Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->pauseCaptureProcess()V

    goto :goto_0

    .line 244
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v2, :cond_4

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v3, "Can\'t do that while capturing"

    const/4 v10, 0x1

    invoke-static {v2, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 248
    :cond_4
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 249
    .local v16, alert:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030030

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 253
    .local v4, intervalWidget:Landroid/widget/RelativeLayout;
    const v2, 0x7f0b00b6

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 255
    .local v8, input:Landroid/widget/EditText;
    const/4 v2, 0x1

    new-array v15, v2, [Landroid/text/InputFilter;

    .line 256
    .local v15, FilterArray:[Landroid/text/InputFilter;
    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x4

    invoke-direct {v3, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v15, v2

    .line 257
    invoke-virtual {v8, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 259
    const v2, 0x7f0b00b8

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 260
    .local v5, milliRatio:Landroid/widget/RadioButton;
    const v2, 0x7f0b00b9

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioButton;

    .line 261
    .local v7, secsRatio:Landroid/widget/RadioButton;
    const v2, 0x7f0b00ba

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    .line 263
    .local v6, minsRatio:Landroid/widget/RadioButton;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v10, "timescale"

    invoke-static {v3, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "interval"

    invoke-static {v2, v3}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 266
    .local v22, timeInterval:I
    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v3, "milliseconds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 270
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 271
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 282
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$2;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$3;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/EditText;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 340
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 341
    :catch_1
    move-exception v20

    .line 342
    .restart local v20       #e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 272
    .end local v20           #e:Ljava/lang/Exception;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->timeScale:Ljava/lang/String;

    const-string v3, "seconds"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 274
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 275
    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 277
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 279
    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 348
    .end local v4           #intervalWidget:Landroid/widget/RelativeLayout;
    .end local v5           #milliRatio:Landroid/widget/RadioButton;
    .end local v6           #minsRatio:Landroid/widget/RadioButton;
    .end local v7           #secsRatio:Landroid/widget/RadioButton;
    .end local v8           #input:Landroid/widget/EditText;
    .end local v15           #FilterArray:[Landroid/text/InputFilter;
    .end local v16           #alert:Landroid/app/AlertDialog$Builder;
    .end local v22           #timeInterval:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    iget-boolean v2, v2, Lcom/ui/LapseIt/capture/CaptureThread;->isCapturing:Z

    if-eqz v2, :cond_7

    .line 349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    const-string v3, "Can\'t do that while capturing"

    const/4 v10, 0x1

    invoke-static {v2, v3, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 353
    :cond_7
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 354
    .local v17, alertRes:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080118

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030031

    const/4 v10, 0x0

    invoke-virtual {v2, v3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 358
    .local v21, resWidget:Landroid/widget/LinearLayout;
    const v2, 0x7f0b00bb

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 359
    .local v11, resFirst:Landroid/widget/ImageView;
    const v2, 0x7f0b00bc

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 360
    .local v12, resSec:Landroid/widget/ImageView;
    const v2, 0x7f0b00bd

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    .line 361
    .local v13, resThird:Landroid/widget/ImageView;
    const v2, 0x7f0b00be

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 363
    .local v14, resFourth:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual {v3}, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v10, "resolution"

    invoke-static {v3, v10}, Lcom/ui/LapseIt/settings/SettingsHelper;->getSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-static {v2}, Lcom/ui/LapseIt/Main;->isFullVersion(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 366
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_9

    .line 367
    const v2, 0x7f0200c5

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 368
    const v2, 0x7f0200cb

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 369
    const v2, 0x7f0200ce

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 370
    const v2, 0x7f0200c3

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "fullsensor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "1080p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_8

    .line 395
    const v2, 0x7f0200c4

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :cond_8
    :goto_4
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 421
    new-instance v9, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v14}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$4;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 498
    .local v9, imageTapListener:Landroid/view/View$OnClickListener;
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 499
    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$5;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1$6;-><init>(Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 558
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->resDialog:Landroid/app/AlertDialog;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 559
    :catch_2
    move-exception v20

    .line 560
    .restart local v20       #e:Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 372
    .end local v9           #imageTapListener:Landroid/view/View$OnClickListener;
    .end local v20           #e:Ljava/lang/Exception;
    :cond_9
    const v2, 0x7f0200c5

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    const v2, 0x7f0200c8

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 374
    const v2, 0x7f0200cb

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    const v2, 0x7f0200ce

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 378
    :cond_a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_b

    .line 379
    const v2, 0x7f0200c5

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 380
    const v2, 0x7f0200ca

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    const v2, 0x7f0200cd

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    const v2, 0x7f0200c2

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 384
    :cond_b
    const v2, 0x7f0200c5

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 385
    const v2, 0x7f0200c7

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    const v2, 0x7f0200ca

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    const v2, 0x7f0200cd

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 397
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "720p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 398
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_d

    .line 399
    const v2, 0x7f0200cf

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 401
    :cond_d
    const v2, 0x7f0200cf

    invoke-virtual {v14, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 403
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "480p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 404
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-lt v2, v3, :cond_f

    .line 405
    const v2, 0x7f0200cc

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 407
    :cond_f
    const v2, 0x7f0200cc

    invoke-virtual {v13, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 409
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "360p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 410
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x9

    if-ge v2, v3, :cond_8

    .line 413
    const v2, 0x7f0200c9

    invoke-virtual {v12, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 415
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->dialogResolution:Ljava/lang/String;

    const-string v3, "240p"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 416
    const v2, 0x7f0200c6

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_4

    .line 566
    .end local v11           #resFirst:Landroid/widget/ImageView;
    .end local v12           #resSec:Landroid/widget/ImageView;
    .end local v13           #resThird:Landroid/widget/ImageView;
    .end local v14           #resFourth:Landroid/widget/ImageView;
    .end local v17           #alertRes:Landroid/app/AlertDialog$Builder;
    .end local v21           #resWidget:Landroid/widget/LinearLayout;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureView;->cThread:Lcom/ui/LapseIt/capture/CaptureThread;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureThread;->stopCaptureProcess()V

    goto/16 :goto_0

    .line 570
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ui/LapseIt/capture/CaptureMenuWidget$1;->this$0:Lcom/ui/LapseIt/capture/CaptureMenuWidget;

    iget-object v2, v2, Lcom/ui/LapseIt/capture/CaptureMenuWidget;->parent:Lcom/ui/LapseIt/capture/CaptureView;

    invoke-virtual {v2}, Lcom/ui/LapseIt/capture/CaptureView;->openOptionsMenu()V

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x7f0b0006
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
