.class Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;
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

.field private final synthetic val$btn:Landroid/widget/Button;

.field private final synthetic val$k:I


# direct methods
.method constructor <init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;Landroid/widget/Button;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    iput-object p2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->val$btn:Landroid/widget/Button;

    iput p3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->val$k:I

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;)Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;
    .locals 1
    .parameter

    .prologue
    .line 307
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->this$1:Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 311
    iget-object v0, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->val$btn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 313
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1$1;

    iget v2, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->val$k:I

    iget-object v3, p0, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;->val$btn:Landroid/widget/Button;

    invoke-direct {v1, p0, v2, v3}, Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1$1;-><init>(Lkr/co/medinbiz/widget/invite/InviteMain$ContactAdapter$1;ILandroid/widget/Button;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 329
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 331
    return-void
.end method
