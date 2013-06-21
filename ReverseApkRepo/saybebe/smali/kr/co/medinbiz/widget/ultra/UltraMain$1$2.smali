.class Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;
.super Ljava/lang/Object;
.source "UltraMain.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/ultra/UltraMain$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v1

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v0

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$2(Lkr/co/medinbiz/widget/ultra/UltraMain;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v0

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Invite;

    .line 132
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Invite;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lkr/co/medinbiz/widget/ultra/UltraMain$1$2;->this$1:Lkr/co/medinbiz/widget/ultra/UltraMain$1;

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain$1;->this$0:Lkr/co/medinbiz/widget/ultra/UltraMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain$1;->access$0(Lkr/co/medinbiz/widget/ultra/UltraMain$1;)Lkr/co/medinbiz/widget/ultra/UltraMain;

    move-result-object v0

    #getter for: Lkr/co/medinbiz/widget/ultra/UltraMain;->mMemberList:Lkr/co/medinbiz/dto/MemberList;
    invoke-static {v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->access$1(Lkr/co/medinbiz/widget/ultra/UltraMain;)Lkr/co/medinbiz/dto/MemberList;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/MemberList;->getInvites()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkr/co/medinbiz/dto/Invite;

    .line 134
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Invite;->getMnum()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {v1, v2, v3, v0}, Lkr/co/medinbiz/widget/ultra/UltraMain;->setMenuView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    return-void
.end method
