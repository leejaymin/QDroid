.class Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;
.super Ljava/lang/Object;
.source "InviteMain.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

.field private final synthetic val$k:Lkr/co/medinbiz/dto/Contact;


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Lkr/co/medinbiz/dto/Contact;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    iput-object p2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;->val$k:Lkr/co/medinbiz/dto/Contact;

    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 397
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    #getter for: Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->this$0:Lkr/co/medinbiz/widget/invite/InviteMain;
    invoke-static {v0}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;->access$1(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;)Lkr/co/medinbiz/widget/invite/InviteMain;

    move-result-object v0

    iget-object v1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$4;->val$k:Lkr/co/medinbiz/dto/Contact;

    invoke-virtual {v1}, Lkr/co/medinbiz/dto/Contact;->getHp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkr/co/medinbiz/widget/invite/InviteMain;->showSMSDailog(Ljava/lang/String;)V

    .line 398
    return-void
.end method
