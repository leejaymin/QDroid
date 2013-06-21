.class Lkr/co/medinbiz/widget/ultra/UltraMain$1;
.super Landroid/os/Handler;
.source "UltraMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    .line 74
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 76
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 78
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v1

    .line 80
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->network_err:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v1

    .line 85
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lkr/co/medinbiz/R$string;->result_err:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "saybebe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 92
    :cond_2
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iput-boolean v3, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->isMenuFirst:Z

    .line 93
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v2

    .line 94
    new-instance v3, Lkr/co/medinbiz/helper/PreferencesManager;

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lkr/co/medinbiz/helper/PreferencesManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    .line 93
    invoke-virtual {v1, v2, v3, v4}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMenuView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->title1:Landroid/widget/TextView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$3(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "saybebe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 101
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->title1:Landroid/widget/TextView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$3(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMyBtn:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$4(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/LinearLayout;

    move-result-object v1

    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1$1;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    :cond_4
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 112
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 113
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "saybebe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 114
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iput-boolean v3, v1, Lkr/co/medinbiz/widget/ultra/UltraMain;->isMenuFirst:Z

    .line 115
    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Invite;

    .line 116
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Invite;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v1

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Invite;

    .line 117
    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Invite;->getMnum()Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-virtual {v2, v3, v4, v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMenuView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_5
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 121
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    iget-object v4, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain;Landroid/content/Context;)V

    #setter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteListAdapter:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
    invoke-static {v1, v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$6(Lkr/co/medinbiz/widget/ultra/UltraMain;Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;)V

    .line 122
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteListAdapter:Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;
    invoke-static {v2}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$7(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/widget/ultra/UltraMain$InviteListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mInviteList:Landroid/widget/ListView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$5(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/ListView;

    move-result-object v1

    .line 125
    new-instance v2, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;

    invoke-direct {v2, p0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;-><init>(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMainWidget()V

    goto/16 :goto_0

    .line 140
    :cond_6
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->title2:Landroid/widget/TextView;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$8(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    invoke-virtual {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMainWidget()V

    .line 142
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 143
    sget v2, Lkr/co/medinbiz/R$string;->ultra_invite_zero:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->pm:Lkr/co/medinbiz/helper/PreferencesManager;
    invoke-static {v3}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$9(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/helper/PreferencesManager;

    move-result-object v3

    invoke-virtual {v3}, Lkr/co/medinbiz/helper/PreferencesManager;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 142
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, format:Ljava/lang/String;
    iget-object v1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkr/co/medinbiz/view/DialogGroup;->activityFinish(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
