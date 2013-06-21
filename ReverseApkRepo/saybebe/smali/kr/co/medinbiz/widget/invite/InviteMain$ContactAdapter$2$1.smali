.class Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;
.super Ljava/lang/Object;
.source "InviteMain.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

.field private final synthetic val$btn:Landroid/widget/Button;

.field private final synthetic val$k:I


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;ILandroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    iput p2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->val$k:I

    iput-object p3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->val$btn:Landroid/widget/Button;

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 349
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->http:Lkr/co/medinbiz/helper/HttpManager;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$14(Lkr/co/medinbiz/widget/invite/InviteMain;)Lkr/co/medinbiz/helper/HttpManager;

    move-result-object v2

    .line 350
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->type:I
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList1:Ljava/util/ArrayList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v1

    .line 351
    :goto_0
    iget v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->val$k:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkr/co/medinbiz/dto/Contact;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Contact;->getHp()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OK"

    .line 349
    invoke-virtual {v2, v1, v3}, Lkr/co/medinbiz/helper/HttpManager;->inviteChange(Ljava/lang/String;Ljava/lang/String;)Lkr/co/medinbiz/dto/Roots;

    move-result-object v0

    .line 352
    .local v0, ll:Lkr/co/medinbiz/dto/Roots;
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$15(Lkr/co/medinbiz/widget/invite/InviteMain;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 359
    :cond_0
    :goto_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->val$btn:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 361
    return-void

    .line 350
    .end local v0           #ll:Lkr/co/medinbiz/dto/Roots;
    :cond_1
    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2$1;->this$2:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;->access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$2;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v1

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain;->conList2:Ljava/util/ArrayList;
    invoke-static {v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->access$2(Lkr/co/medinbiz/widget/invite/InviteMain;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 354
    .restart local v0       #ll:Lkr/co/medinbiz/dto/Roots;
    :cond_2
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NO"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    invoke-virtual {v0}, Lkr/co/medinbiz/dto/Roots;->getResult()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_1
.end method
