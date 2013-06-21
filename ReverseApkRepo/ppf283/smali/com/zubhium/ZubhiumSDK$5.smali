.class Lcom/zubhium/ZubhiumSDK$5;
.super Ljava/lang/Object;
.source "ZubhiumSDK.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zubhium/ZubhiumSDK;->openDefaultDialog(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zubhium/ZubhiumSDK;

.field private final synthetic val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appFeedback:Landroid/widget/EditText;

.field private final synthetic val$emailEditText:Landroid/widget/EditText;

.field private final synthetic val$includeSystemDetails:Landroid/widget/CheckBox;

.field private final synthetic val$zubhiumOptionGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/zubhium/ZubhiumSDK;Landroid/widget/RadioGroup;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/CheckBox;Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iput-object p2, p0, Lcom/zubhium/ZubhiumSDK$5;->val$zubhiumOptionGroup:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcom/zubhium/ZubhiumSDK$5;->val$appFeedback:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/zubhium/ZubhiumSDK$5;->val$emailEditText:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/zubhium/ZubhiumSDK$5;->val$includeSystemDetails:Landroid/widget/CheckBox;

    iput-object p6, p0, Lcom/zubhium/ZubhiumSDK$5;->val$activity:Landroid/app/Activity;

    iput-object p7, p0, Lcom/zubhium/ZubhiumSDK$5;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    .line 541
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 545
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$zubhiumOptionGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$zubhiumOptionGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v7

    .line 547
    .local v7, checkedId:I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    .line 548
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->OTHER:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v1, v0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    .line 558
    .end local v7           #checkedId:I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$appFeedback:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 559
    .local v4, feedback:Ljava/lang/String;
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$emailEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, email:Ljava/lang/String;
    const/4 v6, 0x0

    .line 562
    .local v6, systemLogs:Z
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    const-string v3, ""

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$includeSystemDetails:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->val$includeSystemDetails:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 567
    const/4 v6, 0x1

    .line 570
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 571
    const-string v0, "feedback:submitting feedback"

    invoke-static {v0}, Lcom/zubhium/utils/ZubhiumUtils;->writelog(Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$5;->val$activity:Landroid/app/Activity;

    const-string v2, "Please wait, submitting feedback."

    #calls: Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$5;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zubhium/ZubhiumSDK$5;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    iget-object v5, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v5, v5, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    #calls: Lcom/zubhium/ZubhiumSDK;->submitFeedback(Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V
    invoke-static/range {v0 .. v6}, Lcom/zubhium/ZubhiumSDK;->access$14(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Lcom/zubhium/interfaces/ZubhiumListener;Ljava/lang/String;Ljava/lang/String;Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;Z)V

    .line 579
    :goto_1
    return-void

    .line 549
    .end local v3           #email:Ljava/lang/String;
    .end local v4           #feedback:Ljava/lang/String;
    .end local v6           #systemLogs:Z
    .restart local v7       #checkedId:I
    :cond_3
    const/16 v0, 0xa

    if-ne v7, v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->BUG:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v1, v0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    goto :goto_0

    .line 551
    :cond_4
    const/16 v0, 0xb

    if-ne v7, v0, :cond_5

    .line 552
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->FEATURE:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v1, v0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    goto :goto_0

    .line 554
    :cond_5
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    sget-object v1, Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;->OTHER:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    iput-object v1, v0, Lcom/zubhium/ZubhiumSDK;->defaultfeedbackCategory:Lcom/zubhium/ZubhiumSDK$ZubhiumFeedbackCategory;

    goto :goto_0

    .line 575
    .end local v7           #checkedId:I
    .restart local v3       #email:Ljava/lang/String;
    .restart local v4       #feedback:Ljava/lang/String;
    .restart local v6       #systemLogs:Z
    :cond_6
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$5;->val$activity:Landroid/app/Activity;

    const-string v2, "Please enter valid feedback."

    #calls: Lcom/zubhium/ZubhiumSDK;->showToastMessage(Landroid/app/Activity;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->access$13(Lcom/zubhium/ZubhiumSDK;Landroid/app/Activity;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/zubhium/ZubhiumSDK$5;->this$0:Lcom/zubhium/ZubhiumSDK;

    iget-object v1, p0, Lcom/zubhium/ZubhiumSDK$5;->val$actionListener:Lcom/zubhium/interfaces/ZubhiumListener;

    new-instance v2, Lcom/zubhium/utils/ZubhiumError;

    const-string v5, "Please enter valid feedback."

    invoke-direct {v2, v5}, Lcom/zubhium/utils/ZubhiumError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/zubhium/ZubhiumSDK;->reportErrorBack(Lcom/zubhium/interfaces/ZubhiumListener;Lcom/zubhium/utils/ZubhiumError;)V

    goto :goto_1
.end method
