.class Lstericson/busybox/donate/Activity/BaseActivity$3;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lstericson/busybox/donate/Activity/BaseActivity;->makeChoice(Lstericson/busybox/donate/interfaces/Choice;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lstericson/busybox/donate/Activity/BaseActivity;

.field private final synthetic val$choice:Lstericson/busybox/donate/interfaces/Choice;

.field private final synthetic val$id:I


# direct methods
.method constructor <init>(Lstericson/busybox/donate/Activity/BaseActivity;Lstericson/busybox/donate/interfaces/Choice;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lstericson/busybox/donate/Activity/BaseActivity$3;->this$0:Lstericson/busybox/donate/Activity/BaseActivity;

    iput-object p2, p0, Lstericson/busybox/donate/Activity/BaseActivity$3;->val$choice:Lstericson/busybox/donate/interfaces/Choice;

    iput p3, p0, Lstericson/busybox/donate/Activity/BaseActivity$3;->val$id:I

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 106
    iget-object v0, p0, Lstericson/busybox/donate/Activity/BaseActivity$3;->val$choice:Lstericson/busybox/donate/interfaces/Choice;

    const/4 v1, 0x0

    iget v2, p0, Lstericson/busybox/donate/Activity/BaseActivity$3;->val$id:I

    invoke-interface {v0, v1, v2}, Lstericson/busybox/donate/interfaces/Choice;->choiceMade(ZI)V

    .line 107
    return-void
.end method
